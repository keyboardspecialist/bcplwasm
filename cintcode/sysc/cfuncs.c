/*
This is a file contains the definition of the C function cfuncs
which is callable from BCPL.

Implemented by Martin Richards (c) May 2008

Under Cintcode and Cintpos, the following

res := sys(Sys_callc, fno, a1, a2,...)

calls cfuncs(args, g) where cfuncs is a C function, args is a
pointer to the arguments fno, a1, a2,..., and g is a pointer
to the base of the global vector. The result of cfuncs is assigned
to res.

*/

#include <stdio.h>
#include "cintmain.h"

#include <stdlib.h>
#include <signal.h>
#include <errno.h>

#include <fcntl.h>
#include <string.h>             // memcpy for sha1
#include <sys/wait.h>
//#include <sys/time.h>
#include <sys/timeb.h>
//#include <sys/select.h>
//#include <linux/time.h>
#include <unistd.h>
//#include <sys/signal.h>

/* include for the TCP/IP code */

#include <netdb.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <arpa/inet.h>          // inet_aton

#define  c_name2ipaddr 101
#define  c_name2port   102
#define  c_newsocket   103
#define  c_reuseaddr   104
#define  c_setsndbufsz 105
#define  c_setrcvbufsz 106
#define  c_tcpbind     107
#define  c_tcpconnect  108
#define  c_tcplisten   109
#define  c_tcpaccept   110
#define  c_tcpclose    111
#define  c_fd_zero     112
#define  c_fd_set      113
#define  c_fd_isset    114
#define  c_select      115
#define  c_recv        116
#define  c_send        117
#define  c_read        118
#define  c_write       119
#define  c_sha1        120
#define  c_base64_enc  121

extern BCPLWORD *W;

// Socket-shim helpers. Used to be guarded by #ifdef XXX (never set).
// Re-enabled so Sys_callc actually reaches the BSD socket API.
// result2 is owned by cintmain.c — declare extern, don't redefine.
char namebuf[256];
extern BCPLWORD result2;

extern char *b2c_str(BCPLWORD bstr, char *cstr);

int name2ipaddr(char *hname) { // name => ipaddr (host format)
  struct hostent *hp;
  int ipaddr = -1;

  if (hname==0) return INADDR_ANY;

  //printf("name2ipaddr: \"%s\"\n", hname);

  if(inet_aton(hname, &ipaddr)) return ntohl(ipaddr);

  hp = gethostbyname(hname);
  if(hp==NULL) return -1; // Unknown host

  return ntohl(((struct in_addr *)hp->h_addr)->s_addr);
}

int name2port(char *pname) { // name => port (host format)
  struct servent *sp;
  char *endptr;
  short port;

  if(pname==0) return -1;

  port = strtol(pname, &endptr, 0);
  if(*endptr == '\0') return port;

  sp = getservbyname(pname, "tcp");
  if(sp==NULL) return -1;
  return ntohs(sp->s_port);
}

int newsocket() {
  // Create an internet socket to provide a reliable, full duplex
  // connection-oriented (TCP) byte stream.
  return socket( AF_INET, SOCK_STREAM, 0 );
}

int reuseaddr(int s, int n) {
  return setsockopt( s, SOL_SOCKET, SO_REUSEADDR,
                     ( char * )&n, sizeof( n ) );
}

int setsndbufsz(int s, int sz) {
  return setsockopt( s, SOL_SOCKET, SO_SNDBUF,
                     ( char * )&sz, sizeof( sz ) );
}

int setrcvbufsz(int s, int sz) {
  return setsockopt( s, SOL_SOCKET, SO_RCVBUF,
                     ( char * )&sz, sizeof( sz ) );
}

int tcpbind(int s, int ipaddr, int port) {
  int rc;
  struct sockaddr_in addr;
  addr.sin_family = AF_INET;
  addr.sin_port = htons(port);
  addr.sin_addr.s_addr = htonl(ipaddr);
  rc = bind( s, ( struct sockaddr * )&addr, sizeof( addr ) );
  if(rc==-1) perror("bind error");
  return rc;
}

int tcpconnect(int s, int ipaddr, int port) {
  struct sockaddr_in peer;
  peer.sin_family = AF_INET;
  peer.sin_port = htons(port);
  peer.sin_addr.s_addr = htonl(ipaddr);
  return connect( s, ( struct sockaddr * )&peer, sizeof( peer ) );
}

int tcplisten(int s, int n) {
  return listen(s, n);
}

int tcpaccept(int s) {
  struct sockaddr_in peer;
  socklen_t peerlen = sizeof(peer);
  int res = accept(s, (struct sockaddr *)&peer, &peerlen);
  result2 = ntohl(peer.sin_addr.s_addr);
  return res;
}

// ---- SHA1 (RFC 3174) -------------------------------------------------
// One-shot. Writes 20 bytes of digest to `out`. Reference impl, no
// streaming API needed — callers handle one message at a time.

static unsigned int sha1_rotl(unsigned int x, int n) {
  return (x << n) | (x >> (32 - n));
}

void sha1_bytes(const unsigned char *msg, int mlen, unsigned char *out) {
  unsigned int h0 = 0x67452301, h1 = 0xEFCDAB89, h2 = 0x98BADCFE;
  unsigned int h3 = 0x10325476, h4 = 0xC3D2E1F0;
  // Pad: append 0x80, zero-fill, append 64-bit big-endian bit length.
  // Buffer sized for any message up to 64 KiB — fine for WS handshakes.
  int padded = ((mlen + 9 + 63) / 64) * 64;
  unsigned char *buf = (unsigned char*)calloc(padded, 1);
  unsigned long long nbits = (unsigned long long)mlen * 8ULL;
  int i, t;
  memcpy(buf, msg, mlen);
  buf[mlen] = 0x80;
  for (i = 0; i < 8; i++)
    buf[padded - 1 - i] = (unsigned char)((nbits >> (8 * i)) & 0xFF);

  for (int blk = 0; blk < padded; blk += 64) {
    unsigned int w[80];
    for (i = 0; i < 16; i++) {
      const unsigned char *p = buf + blk + 4*i;
      w[i] = (p[0]<<24) | (p[1]<<16) | (p[2]<<8) | p[3];
    }
    for (i = 16; i < 80; i++)
      w[i] = sha1_rotl(w[i-3] ^ w[i-8] ^ w[i-14] ^ w[i-16], 1);
    unsigned int a=h0, b=h1, c=h2, d=h3, e=h4, f, k, tmp;
    for (t = 0; t < 80; t++) {
      if (t < 20)      { f = (b & c) | ((~b) & d); k = 0x5A827999; }
      else if (t < 40) { f = b ^ c ^ d;            k = 0x6ED9EBA1; }
      else if (t < 60) { f = (b&c)|(b&d)|(c&d);    k = 0x8F1BBCDC; }
      else             { f = b ^ c ^ d;            k = 0xCA62C1D6; }
      tmp = sha1_rotl(a, 5) + f + e + k + w[t];
      e = d; d = c; c = sha1_rotl(b, 30); b = a; a = tmp;
    }
    h0 += a; h1 += b; h2 += c; h3 += d; h4 += e;
  }
  free(buf);

  unsigned int H[5] = {h0, h1, h2, h3, h4};
  for (i = 0; i < 5; i++) {
    out[4*i    ] = (H[i] >> 24) & 0xFF;
    out[4*i + 1] = (H[i] >> 16) & 0xFF;
    out[4*i + 2] = (H[i] >>  8) & 0xFF;
    out[4*i + 3] =  H[i]        & 0xFF;
  }
}

// ---- base64 encode --------------------------------------------------
// Writes ceil(nin/3)*4 chars to out, padded with '='. Returns count.
static const char b64tab[] =
  "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";

int base64_encode(const unsigned char *in, int nin, char *out) {
  int o = 0, i = 0;
  while (i < nin) {
    unsigned int a = in[i];
    unsigned int b = (i + 1 < nin) ? in[i+1] : 0;
    unsigned int c = (i + 2 < nin) ? in[i+2] : 0;
    unsigned int triple = (a << 16) | (b << 8) | c;
    out[o++] = b64tab[(triple >> 18) & 0x3F];
    out[o++] = b64tab[(triple >> 12) & 0x3F];
    out[o++] = (i + 1 < nin) ? b64tab[(triple >> 6) & 0x3F] : '=';
    out[o++] = (i + 2 < nin) ? b64tab[ triple       & 0x3F] : '=';
    i += 3;
  }
  return o;
}


/*
int copydata(int s) {
  fd_set allreads;
  fd_set readmask;
  int rc;
  char buf[128];

  FD_ZERO(  &allreads);
  FD_SET(s, &allreads);  // the TCP/IP socket
  FD_SET(0, &allreads);  // stdin

  while(1) {
    readmask = allreads;

    rc = select(s+1, &readmask, NULL, NULL, NULL);
    if(rc<0) {
      printf("\nerror: select returned %d\n", rc);
      break;
    }

    if(FD_ISSET(0, &readmask)) {
      //printf("copydata: calling read\n");

      rc = read(0, buf, sizeof(buf)-1);
      if(rc==0) {
        //printf("\nserver disconnected -- EOF\n");
        break;
      }
      if(rc<0) {
        printf("\nerror: read returned %d\n", rc);
        break;
      }

      //if(rc>0 && buf[0]=='.') break;

      if(send(s, buf, rc, 0) < 0) {
        printf("\nerror: send failure\n");
        break;
      }
    }

    if(FD_ISSET(s, &readmask)) {
      rc = recv(s, buf, sizeof(buf)-1, 0);
      // It read rc chars into buf
      if(rc==0) {
        printf("\nserver disconnected\n");
        break;
      }
      if(rc<0) {
        printf("\nerror: read returned %d\n", rc);
        break;
      }

      buf[rc] = 0;
      printf("%s", buf);
      fflush(stdout);
    }
  }

  return 0;
}
*/

// Real callc — gated previously behind #ifdef XXX (a developer
// "comment out" trick). Enabled here so Sys_callc actually dispatches
// to the BSD socket shim instead of the no-op stub that used to live
// at this spot. Without this, every socket op silently returns 0 and
// servers hot-loop on accept() returning stdin's fd.
BCPLWORD callc(BCPLWORD *args, BCPLWORD *g) {
  int rc = 0;
  BCPLWORD fno = args[0];
  //printf("\nCallc: fno = %d\n", fno);

  switch(fno) {
  default:
    return -1;

  case c_name2ipaddr: // name => ipaddr (host format)
    b2c_str(args[1], namebuf);
    //printf("Callc c_name2ipaddr: args[1]=%d %s\n",
    //       args[1], namebuf);
    return name2ipaddr(namebuf);

  case c_name2port: // name => port (host format)
    b2c_str(args[1], namebuf);
    //printf("callc c_name2port: %s\n", namebuf);
    return name2port(namebuf);

  case c_newsocket: // Allocate a new socket
    return newsocket();

  case c_reuseaddr: // Reuse address
    return reuseaddr((int)args[1], (int)args[2]);

  case c_setsndbufsz: // Set the send buffer size
    return setsndbufsz((int)args[1], (int)args[2]);

  case c_setrcvbufsz: // Set the recv buffer size
    return setrcvbufsz((int)args[1], (int)args[2]);

  case c_tcpbind:     // Bind a socket to a given ipaddr/port
    //printf("c_tcpbind: %d %08x %d\n", args[1], args[2], args[3]);
    return tcpbind((int)args[1], (int)args[2], (int)args[3]);

  case c_tcpconnect: //  Connect a socket to a given ipaddr/port
    //printf("tcpconnect %d %08x %d\n", args[1], args[2], args[3]);
    return tcpconnect((int)args[1], (int)args[2], (int)args[3]);

  case c_tcplisten: //  Cause a socket to listen
    return tcplisten((int)args[1], (int)args[2]);

  case c_tcpaccept: // Cause a socket to accept a connection
    return tcpaccept((int)args[1]);

  case c_tcpclose: // Close a connection
    //printf("tcpclose %d\n", args[1]);
    return close((int)args[1]);

  case c_fd_zero: // Clear all bits in an fd_set
    { //fd_set *bits = (fd_set*)&W[args[2]];
      FD_ZERO((fd_set*)&W[args[1]]);
      return 0;
    }

  case c_fd_set: // Set a bit in an fd_set
    //printf("c_fd_set: args[1]=%d args[2]=%d\n", args[1], args[2]);
    FD_SET((int)args[1], (fd_set*)&W[args[2]]);
    return 0;

  case c_fd_isset: // Test a bit in an fd_set
    return FD_ISSET((int)args[1], (fd_set*)&W[args[2]]);

  case c_select: // Call the select function
    { int i, rc;
      int      s       = (int)          args[1];
      fd_set  *rd_set  = (fd_set *)  &W[args[2]];
      fd_set  *wr_set  = (fd_set *)  &W[args[3]];
      fd_set  *er_set  = (fd_set *)  &W[args[4]];
      struct timeval *timeval = (struct timeval *)
	                        ((args[5]==0) ? NULL : &W[args[5]]);
      /*
      //for(i=0; i<10;i++)
      //  printf("callc: rdset bit %d = %d\n",
	       i, FD_ISSET(i, (fd_set*)&W[args[2]]));
      */
      //printf("callc: calling select(%d,%d,%d,%d,%d)\n",
      //        args[1],args[2],args[3],args[4],args[5]);
      //if(timeval) {
      //printf("c_select: tv_sec  = %d\n", timeval->tv_sec);
      //printf("c_select: tv_usec = %d\n", timeval->tv_usec);
      //}
      rc = select(s, rd_set, wr_set, er_set, timeval);

      if(rc==-1) perror("select returned error");
      //printf("\ncallc: select => rc = %d\n", rc);
      //for(i=0; i<10;i++)
      //   printf("callc: rdset bit %d = %d\n",
      //           i, FD_ISSET(i, rd_set));
      return rc;
    }

  case c_recv:    // Call the recv(s, buf, len, flags)
    { int   s     = (int)args[1];
      char *buf   = (char*)&W[args[2]];
      int   len   = (int)args[3];
      int   flags = (int)args[4];
      int rc = 0;
      //printf("cfuncs: Calling recv(%d, %d, %d, %d)\n",
      //     args[1], args[2], args[3], args[4]);
      rc = recv(s, buf, len, flags);
      if(rc==-1)perror("recv returned error");
      //printf("cfuncs: recv returned rc=%d\n", rc);
      return rc;
    }

  case c_send:    // Call the send(s, buf, len, flags)
    { int   s     = (int)args[1];
      char *buf   = (char*)&W[args[2]];
      int   len   = (int)args[3];
      int   flags = (int)args[4];
      int rc = 0;
      //printf("cfuncs: Calling send(%d, %d, %d, %d)\n",
      //       args[1], args[2], args[3], args[4]);
      rc = send(s, buf, len, flags);
      if(rc==-1)perror("send returned error");
      //printf("cfuncs: send returned rc=%d\n", rc);
      return rc;
    }

  case c_read:    // Call the read(s, buf, len)
    { int   s   = (int)args[1];
      char *buf = (char*)&W[args[2]];
      int   len = (int)args[3];
      int rc = 0;
      //printf("cfuncs: Calling read(%d, %d, %d)\n", args[1], args[2], args[3]);
      rc = read(s, buf, len);
      //if(rc==-1)perror("read returned error");
      //printf("cfuncs: read returned rc=%d\n", rc);
      return rc;
    }

  case c_write:   // Call the write(s, buf, len)
    { int   s   = (int)   args[1];
      char *buf = (char*) &W[args[2]];
      int   len = (int)   args[3];
      int   rc  = 0;
      //printf("cfuncs: Calling write(%d, %d, %d)\n", args[1], args[2], args[3]);
      rc = write(s, buf, len);
      if(rc==-1)perror("read returned error");
      //printf("cfuncs: read returned rc=%d\n", rc);
      return rc;
    }

  case c_sha1:    // sha1(in_buf, in_nbytes, out_20)
    { const unsigned char *in  = (const unsigned char*)&W[args[1]];
      int                  n   = (int)args[2];
      unsigned char       *out = (unsigned char*)&W[args[3]];
      sha1_bytes(in, n, out);
      return 0;
    }

  case c_base64_enc: // base64_encode(in_buf, in_nbytes, out_chars) -> nchars
    { const unsigned char *in  = (const unsigned char*)&W[args[1]];
      int                  n   = (int)args[2];
      char                *out = (char*)&W[args[3]];
      return base64_encode(in, n, out);
    }
  }
}
