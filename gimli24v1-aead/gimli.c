#include <stdint.h>
#include <string.h>
#include "gimli.h"
//#include "hal.h"
//#include "stdio.h"

extern void gimli_asm(uint32_t *state);
extern void shared_gimli_asm(uint32_t *state, uint32_t *shared_state, uint32_t *random);
extern void chacha_random_asm(uint32_t *in, uint32_t *random);
extern void threshold_gimli_asm(uint32_t *state, uint32_t *shared_state1, uint32_t *shared_state2);
extern void shared_gimli_asm_opt(uint32_t *state, uint32_t *shared_state);

static uint32_t rotate(uint32_t x,int bits)
{
  if (bits == 0) return x;
  return (x << bits) | (x >> (32 - bits));
}

static uint32_t load(uint8_t *state,int pos)
{
  /*uint32_t result = state[4*pos+3];
  result <<= 8; result |= state[4*pos+2];
  result <<= 8; result |= state[4*pos+1];
  result <<= 8; result |= state[4*pos+0];
  return result;*/
  return *((uint32_t *)state + pos);
}

static void store(uint8_t *state,int pos,uint32_t x)
{
  /*state[4*pos+0] = x;// x >>= 8;
  state[4*pos+1] = x >> 8;// x >>= 8;
  state[4*pos+2] = x >> 16;// x >>= 8;
  state[4*pos+3] = x >> 24;*/
  *((uint32_t *)state + pos) = x;
}

/*static void gimli(uint8_t *state)
{
  int round, column;
  uint32_t x, y, z;

  for (round = 24; round > 0; --round) {
    for (column = 0; column < 4; ++column) {
      x = rotate(load(state,    column), 24);
      y = rotate(load(state,4 + column),  9);
      z =        load(state,8 + column);

      store(state,8 + column,x ^ (z << 1) ^ ((y&z) << 2));
      store(state,4 + column,y ^ x        ^ ((x|z) << 1));
      store(state,    column,z ^ y        ^ ((x&y) << 3));
    }

    if ((round & 3) == 0) { // small swap: pattern s...s...s... etc.
      x = load(state,0);
      store(state,0,load(state,1));
      store(state,1,x);
      x = load(state,2);
      store(state,2,load(state,3));
      store(state,3,x);
    }
    else if ((round & 3) == 2) { // big swap: pattern ..S...S...S. etc.
      x = load(state,0);
      store(state,0,load(state,2));
      store(state,2,x);
      x = load(state,1);
      store(state,1,load(state,3));
      store(state,3,x);
    }

    if ((round & 3) == 0) // add constant: pattern c...c...c... etc.
      store(state,0,load(state,0) ^ (0x9e377900 | round));
  }
}*/

static void threshold_gimli(uint8_t *state, uint8_t *shared_state1, uint8_t *shared_state2)
{
  int round, column;
  uint32_t sx0, sy0, sz0, sx1, sy1, sz1, sx2, sy2, sz2;

  for (round = 24; round > 0; --round) {
    for (column = 0; column < 4; ++column) {
      sx0 = rotate(load(state,    column), 24);
      sy0 = rotate(load(state,4 + column),  9);
      sz0 =        load(state,8 + column);
      sx1 = rotate(load(shared_state1,    column), 24);
      sy1 = rotate(load(shared_state1,4 + column),  9);
      sz1 =        load(shared_state1,8 + column);
      sx2 = rotate(load(shared_state2,    column), 24);
      sy2 = rotate(load(shared_state2,4 + column),  9);
      sz2 =        load(shared_state2,8 + column);

      store(state,8 + column,sx1 ^ (sz1 << 1) ^ (((sy1 & sz1) ^ (sy1 & sz2) ^ (sy2 & sz1)) << 2));
      store(state,4 + column,sy1 ^ sx1        ^ (((sx1 & sz1) ^ (sx1 &~sz2) ^ (~sx2& sz1)) << 1));
      store(state,    column,sz1 ^ sy1        ^ (((sx1 & sy1) ^ (sx1 & sy2) ^ (sx2 & sy1)) << 3));
      store(shared_state1,8 + column,sx2 ^ (sz2 << 1) ^ (((sy2 & sz2) ^ (sy2 & sz0) ^ (sy0 & sz2)) << 2));
      store(shared_state1,4 + column,sy2 ^ sx2        ^ (((sx2 | sz2) ^ (~sx2& sz0) ^ (sx0 &~sz2)) << 1));
      store(shared_state1,    column,sz2 ^ sy2        ^ (((sx2 & sy2) ^ (sx2 & sy0) ^ (sx0 & sy2)) << 3));
      store(shared_state2,8 + column,sx0 ^ (sz0 << 1) ^ (((sy0 & sz0) ^ (sy0 & sz1) ^ (sy1 & sz0)) << 2));
      store(shared_state2,4 + column,sy0 ^ sx0        ^ (((sx0 & sz0) ^ (sx0 & sz1) ^ (sx1 & sz0)) << 1));
      store(shared_state2,    column,sz0 ^ sy0        ^ (((sx0 & sy0) ^ (sx0 & sy1) ^ (sx1 & sy0)) << 3));
    }

    if ((round & 3) == 0) { // small swap: pattern s...s...s... etc.
      sx0 = load(state,0);
      sx1 = load(shared_state1, 0);
      sx2 = load(shared_state2, 0);
      store(state,        0,load(state,1) ^ (0x9e377900 | round));
      store(shared_state1,0,load(shared_state1,1));
      store(shared_state2,0,load(shared_state2,1));
      store(state,        1,sx0);
      store(shared_state1,1,sx1);
      store(shared_state2,1,sx2);
      sx0 = load(state,2);
      sx1 = load(shared_state1, 2);
      sx2 = load(shared_state2, 2);
      store(state,        2,load(state,3));
      store(shared_state1,2,load(shared_state1,3));
      store(shared_state2,2,load(shared_state2,3));
      store(state,        3,sx0);
      store(shared_state1,3,sx1);
      store(shared_state2,3,sx2);
    }
    else if ((round & 3) == 2) { // big swap: pattern ..S...S...S. etc.
      sx0 = load(state,0);
      sx1 = load(shared_state1, 0);
      sx2 = load(shared_state2, 0);
      store(state,        0,load(state,2));
      store(shared_state1,0,load(shared_state1,2));
      store(shared_state2,0,load(shared_state2,2));
      store(state,        2,sx0);
      store(shared_state1,2,sx1);
      store(shared_state2,2,sx2);
      sx0 = load(state,1);
      sx1 = load(shared_state1, 1);
      sx2 = load(shared_state2, 1);
      store(state,        1,load(state,3));
      store(shared_state1,1,load(shared_state1,3));
      store(shared_state2,1,load(shared_state2,3));
      store(state,        3,sx0);
      store(shared_state1,3,sx1);
      store(shared_state2,3,sx2);
    }

    // if ((round & 3) == 0) // add constant: pattern c...c...c... etc.
  }
}

/*int crypto_aead_encrypt(
  unsigned char *c,unsigned long long *clen,
  const unsigned char *m,unsigned long long mlen,
  const unsigned char *ad,unsigned long long adlen,
  const unsigned char *nsec,
  const unsigned char *npub,
  const unsigned char *k
)
{
  (void) nsec; // ignore warning
  uint8_t state[48];
  unsigned long long i;

  memcpy(state,npub,16);
  memcpy(state+16,k,32);
  gimli_asm(state);
  *clen = mlen + 16;

  while (adlen >= 16) {
    for (i = 0;i < 16;++i) state[i] ^= ad[i];
    gimli_asm(state);
    ad += 16;
    adlen -= 16;
  }

  for (i = 0;i < adlen;++i) state[i] ^= ad[i];
  state[adlen] ^= 1;
  state[47] ^= 1;
  gimli_asm(state);

  while (mlen >= 16) {
    for (i = 0;i < 16;++i) c[i] = state[i] ^= m[i];
    gimli_asm(state);
    c += 16;
    m += 16;
    mlen -= 16;
  }

  for (i = 0;i < mlen;++i) c[i] = state[i] ^= m[i];
  c += mlen;
  state[mlen] ^= 1;
  state[47] ^= 1;
  gimli_asm(state);

  for (i = 0;i < 16;++i) c[i] = state[i];

  return 0;
}*/

/*int crypto_aead_encrypt_shared(
  unsigned char *c,unsigned long long *clen,
  const unsigned char *m,unsigned long long mlen,
  const unsigned char *ad,unsigned long long adlen,
  const unsigned char *nsec,
  const unsigned char *npub,
  const unsigned char *k
)
{
  uint32_t in[16] = {0x61707865, 0x3320646e, 0x79622d32, 0x6b206574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
  uint32_t random[288]={0};
  uint32_t r;

  uint8_t state[48];
  uint8_t shared_state[48];
  unsigned long long i;

  memcpy(state,npub,16);
  memcpy(state+16,k,32);
  memcpy((uint8_t *)in+16, m, (mlen<32)? mlen:32);
  
  in[14] = rng_get_random_blocking();
  in[15] = rng_get_random_blocking();

  for (i=0; i<12; ++i){
    r = rng_get_random_blocking();
    store(state, i, load(state, i) ^ r);
    store(shared_state, i, r);
  }

  chacha_random_asm(in, random);
  shared_gimli_asm(state, shared_state, random);
  *clen = mlen + 16;

  //char outstr[128];
  //sprintf(outstr, "%8x\t%8x\t%8x\t%8x\t%8x\t%8x\t%8x\t%8x\r", random[0], random[1],random[2],random[3],random[4],random[5],random[6],random[7]);
  //hal_send_str(outstr);

  while (adlen >= 16) {
    for (i = 0;i < 16;++i) state[i] ^= ad[i];
    chacha_random_asm(in, random);
    shared_gimli_asm(state, shared_state, random);
    ad += 16;
    adlen -= 16;
  }

  for (i = 0;i < adlen;++i) state[i] ^= ad[i];
  state[adlen] ^= 1;
  state[47] ^= 1;
  chacha_random_asm(in, random);
  shared_gimli_asm(state, shared_state, random);

  while (mlen >= 16) {
    for (i = 0;i < 16;++i) {
      state[i] ^= m[i];
      c[i] = state[i] ^ shared_state[i];
    }
    chacha_random_asm(in, random);
    shared_gimli_asm(state, shared_state, random);
    c += 16;
    m += 16;
    mlen -= 16;
  }

  for (i = 0;i < mlen;++i) {
    state[i] ^= m[i];
    c[i] = state[i] ^ shared_state[i];
  }
  c += mlen;
  state[mlen] ^= 1;
  state[47] ^= 1;
  chacha_random_asm(in, random);
  shared_gimli_asm(state, shared_state, random);

  for (i = 0;i < 16;++i) c[i] = state[i] ^ shared_state[i];

  return 0;
}*/

int crypto_aead_encrypt_shared(
  unsigned char *c,unsigned long long *clen,
  const unsigned char *m,unsigned long long mlen,
  const unsigned char *ad,unsigned long long adlen,
  const unsigned char *nsec,
  const unsigned char *npub,
  const unsigned char *k
)
{
  (void) nsec; // ignore warning
  uint8_t state[48];
  uint8_t shared_state1[48];
  uint8_t shared_state2[48];
  uint32_t r1, r2;
  unsigned long long i;

  memcpy(state,npub,16);
  memcpy(state+16,k,32);

  for (i=0; i<12; ++i){
    r1 = rng_get_random_blocking();
    r2 = rng_get_random_blocking();
    store(state, i, load(state, i) ^ r1 ^ r2);
    store(shared_state1, i, r1);
    store(shared_state2, i, r2);
  }

  threshold_gimli_asm(state, shared_state1, shared_state2);
  *clen = mlen + 16;

  while (adlen >= 16) {
    for (i = 0;i < 16;++i) state[i] ^= ad[i];
    threshold_gimli_asm(state, shared_state1, shared_state2);
    ad += 16;
    adlen -= 16;
  }

  for (i = 0;i < adlen;++i) state[i] ^= ad[i];
  state[adlen] ^= 1;
  state[47] ^= 1;
  threshold_gimli_asm(state, shared_state1, shared_state2);

  while (mlen >= 16) {
    for (i = 0;i < 16;++i) {
      state[i] ^= m[i];
      c[i] = state[i] ^ shared_state1[i] ^ shared_state2[i];
    }
    threshold_gimli_asm(state, shared_state1, shared_state2);
    c += 16;
    m += 16;
    mlen -= 16;
  }

  for (i = 0;i < mlen;++i) {
    state[i] ^= m[i];
    c[i] = state[i] ^ shared_state1[i] ^ shared_state2[i];
  }
  c += mlen;
  state[mlen] ^= 1;
  state[47] ^= 1;
  threshold_gimli_asm(state, shared_state1, shared_state2);

  for (i = 0;i < 16;++i) c[i] = state[i] ^ shared_state1[i] ^ shared_state2[i];

  return 0;
}

int crypto_aead_encrypt_shared_opt(
  unsigned char *c,unsigned long long *clen,
  const unsigned char *m,unsigned long long mlen,
  const unsigned char *ad,unsigned long long adlen,
  const unsigned char *nsec,
  const unsigned char *npub,
  const unsigned char *k
)
{
  uint32_t r;

  uint8_t state[48];
  uint8_t shared_state[48];
  unsigned long long i;

  memcpy(state,npub,16);
  memcpy(state+16,k,32);

  for (i=0; i<12; ++i){
    r = rng_get_random_blocking();
    store(state, i, load(state, i) ^ r);
    store(shared_state, i, r);
  }

  /*char outstr[128];
  sprintf(outstr, "%8x\t%8x\t%8x\t%8x\t%8x\t%8x\t%8x\t%8x\r", state[0],state[1],state[2],state[3],state[4],state[5],state[6],state[7]);
  hal_send_str(outstr);*/

  shared_gimli_asm_opt(state, shared_state);
  *clen = mlen + 16;

  while (adlen >= 16) {
    for (i = 0;i < 16;++i) state[i] ^= ad[i];
    shared_gimli_asm_opt(state, shared_state);
    ad += 16;
    adlen -= 16;
  }

  for (i = 0;i < adlen;++i) state[i] ^= ad[i];
  state[adlen] ^= 1;
  state[47] ^= 1;
  shared_gimli_asm_opt(state, shared_state);

  while (mlen >= 16) {
    for (i = 0;i < 16;++i) {
      state[i] ^= m[i];
      c[i] = state[i] ^ shared_state[i];
    }
    shared_gimli_asm_opt(state, shared_state);
    c += 16;
    m += 16;
    mlen -= 16;
  }

  for (i = 0;i < mlen;++i) {
    state[i] ^= m[i];
    c[i] = state[i] ^ shared_state[i];
  }
  c += mlen;
  state[mlen] ^= 1;
  state[47] ^= 1;
  shared_gimli_asm_opt(state, shared_state);

  for (i = 0;i < 16;++i) c[i] = state[i] ^ shared_state[i];

  return 0;
}

int crypto_aead_decrypt(
  unsigned char *m,unsigned long long *mlen,
  unsigned char *nsec,
  const unsigned char *c,unsigned long long clen,
  const unsigned char *ad,unsigned long long adlen,
  const unsigned char *npub,
  const unsigned char *k
)
{
  (void) nsec; // ignore warning
  uint8_t state[48];
  uint32_t result;
  unsigned long long i;
  unsigned long long tlen;

  if (clen < 16) return -1;
  *mlen = tlen = clen - 16;

  memcpy(state,npub,16);
  memcpy(state+16,k,32);
  gimli_asm(state);

  while (adlen >= 16) {
    for (i = 0;i < 16;++i) state[i] ^= ad[i];
    gimli_asm(state);
    ad += 16;
    adlen -= 16;
  }

  for (i = 0;i < adlen;++i) state[i] ^= ad[i];
  state[adlen] ^= 1;
  state[47] ^= 1;
  gimli_asm(state);

  while (tlen >= 16) {
    for (i = 0;i < 16;++i) m[i] = state[i] ^ c[i];
    for (i = 0;i < 16;++i) state[i] = c[i];
    gimli_asm(state);
    c += 16;
    m += 16;
    tlen -= 16;
  }

  for (i = 0;i < tlen;++i) m[i] = state[i] ^ c[i];
  for (i = 0;i < tlen;++i) state[i] = c[i];
  c += tlen;
  m += tlen;
  state[tlen] ^= 1;
  state[47] ^= 1;
  gimli_asm(state);

  result = 0;
  for (i = 0;i < 16;++i) result |= c[i] ^ state[i];
  result -= 1;
  result = ((int32_t) result) >> 16;

  tlen = *mlen;
  m -= tlen;
  for (i = 0;i < tlen;++i) m[i] &= result;

  return ~result;
}
