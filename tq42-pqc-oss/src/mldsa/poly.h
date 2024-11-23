#pragma once

#include "params.h"
#include <stdint.h>

namespace mldsa
{

typedef struct
{
    int32_t coeffs[N];
} poly;

void poly_reduce(poly * a);
void poly_caddq(poly * a);
void poly_freeze(poly * a);

void poly_add(poly * c, const poly * a, const poly * b);
void poly_sub(poly * c, const poly * a, const poly * b);
void poly_shiftl(poly * a);

void poly_ntt(poly * a);
void poly_invntt_tomont(poly * a);
void poly_pointwise_montgomery(poly * c, const poly * a, const poly * b);
void poly_pointwise_montgomeryNewInput(poly * c, const poly a, const poly b);

void poly_power2round(poly * a1, poly * a0, const poly * a);
void poly_decompose(poly * a1, poly * a0, const poly * a, uint8_t modeK);
unsigned int poly_make_hint(poly * h, const poly * a0, const poly * a1, uint8_t modeK);
void poly_use_hint(poly * b, const poly * a, const poly * h, uint8_t modeK);

int poly_chknorm(const poly * a, int32_t B);
void poly_uniform(poly * a, const uint8_t seed[SEEDBYTES], uint16_t nonce);
// void poly_uniform_eta(poly * a, const uint8_t seed[SEEDBYTES], uint16_t nonce);
// void poly_uniform_gamma1(poly * a, const uint8_t seed[CRHBYTES], uint16_t nonce);
// void poly_challenge(poly * c, const uint8_t seed[SEEDBYTES]);

void polyeta_pack_44(uint8_t * r, const poly * a);
void polyeta_pack_65(uint8_t * r, const poly * a);
void polyeta_pack_87(uint8_t * r, const poly * a);
void polyeta_unpack_44(poly * r, const uint8_t * a);
void polyeta_unpack_65(poly * r, const uint8_t * a);
void polyeta_unpack_87(poly * r, const uint8_t * a);

void polyt1_pack(uint8_t * r, const poly * a);
void polyt1_unpack(poly * r, const uint8_t * a);

void polyt0_pack(uint8_t * r, const poly * a);
void polyt0_unpack(poly * r, const uint8_t * a);

void polyz_pack_44(uint8_t * r, const poly * a);
void polyz_pack_65(uint8_t * r, const poly * a);
void polyz_pack_87(uint8_t * r, const poly * a);
void polyz_unpack_44(poly * r, const uint8_t * a);
void polyz_unpack_65(poly * r, const uint8_t * a);
void polyz_unpack_87(poly * r, const uint8_t * a);

void polyw1_pack_87(uint8_t * r, const poly * a);
void polyw1_pack_65(uint8_t * r, const poly * a);
void polyw1_pack_44(uint8_t * r, const poly * a);


void poly_uniform_etaMldsa(poly * a, const uint8_t seed[2 * SEEDBYTES], uint16_t nonce, uint8_t modeL);

void poly_uniform_gamma1Mldsa_44(poly * a, const uint8_t seed[2 * SEEDBYTES], uint16_t nonce);
void poly_uniform_gamma1Mldsa_65(poly * a, const uint8_t seed[2 * SEEDBYTES], uint16_t nonce);
void poly_uniform_gamma1Mldsa_87(poly * a, const uint8_t seed[2 * SEEDBYTES], uint16_t nonce);

void poly_challengeMldsa(poly * c, const uint8_t seed[], uint8_t modeK);

} // namespace mldsa
