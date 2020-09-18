#include <stdio.h>
#include "gimli.h"
#include "hal.h"

#define MSGLEN 1024
#define ADLEN 1024



int main(void)
{
  char outstr[128];
  unsigned char key[CRYPTO_KEYBYTES] = {0};
  unsigned char nonce[CRYPTO_NPUBBYTES] = {0};
  unsigned char msg[MSGLEN] = {0};
  unsigned char msg2[MSGLEN+CRYPTO_ABYTES] = {0};
  unsigned char ad[ADLEN] = {0};
  unsigned char ct[MSGLEN + CRYPTO_ABYTES] = {0};

  unsigned long long clen;
  unsigned long long mlen2;

  uint64_t oldcount, newcount;
  hal_setup(CLOCK_BENCHMARK);

  hal_send_str("\n\r============ IGNORE OUTPUT BEFORE THIS LINE ============\n\r");

  const unsigned char random[48] = {1};

  oldcount = hal_get_time();
  crypto_aead_encrypt_shared(ct, &clen, msg, MSGLEN, ad, ADLEN, NULL, nonce, key, random);
  newcount = hal_get_time();

  sprintf(outstr, "\n\rcycles for crypto_aead_encrypt for %d bytes message and %d bytes associated data: %llu", MSGLEN, ADLEN, newcount-oldcount);
  hal_send_str(outstr);

  oldcount = hal_get_time();
  crypto_aead_decrypt(msg2, &mlen2, NULL, ct, clen, ad, ADLEN, nonce, key);
  newcount = hal_get_time();

  sprintf(outstr, "\n\rcycles for crypto_aead_decrypt for %d bytes message and %d bytes associated data: %llu", MSGLEN, ADLEN, newcount-oldcount);
  hal_send_str(outstr);

  while(1);

  return 0;
}
