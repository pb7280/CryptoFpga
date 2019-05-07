#include <string.h>

#include "sha256d.h"

// Constants used by SHA256

static const unsigned h[8] =
{
	0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
	0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19
};

static const unsigned sha256_k[64] =
{
	0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
	0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
	0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
	0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
	0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
	0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
	0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
	0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
	0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
	0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
	0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
	0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
	0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
	0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
	0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
	0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2
};



/* Elementary functions used by SHA256 */
#define Ch(x, y, z)     ((x & (y ^ z)) ^ z)
#define Maj(x, y, z)    ((x & (y | z)) | (y & z))
#define ROTR(x, n)      ((x >> n) | (x << (32 - n)))
#define S0(x)           (ROTR(x, 2) ^ ROTR(x, 13) ^ ROTR(x, 22))
#define S1(x)           (ROTR(x, 6) ^ ROTR(x, 11) ^ ROTR(x, 25))
#define s0(x)           (ROTR(x, 7) ^ ROTR(x, 18) ^ (x >> 3))
#define s1(x)           (ROTR(x, 17) ^ ROTR(x, 19) ^ (x >> 10))

/* SHA256 round function */
#define RND(a, b, c, d, e, f, g, h, k) \
	do { \
		t0 = h + S1(e) + Ch(e, f, g) + k; \
		t1 = S0(a) + Maj(a, b, c); \
		d += t0; \
		h  = t0 + t1; \
	} while (0)

/* Adjusted round function for rotating state */
#define RNDr(S, w, i) \
	RND(S[(64 - i) % 8], S[(65 - i) % 8], \
	    S[(66 - i) % 8], S[(67 - i) % 8], \
	    S[(68 - i) % 8], S[(69 - i) % 8], \
	    S[(70 - i) % 8], S[(71 - i) % 8], \
	    w + sha256_k[i])

#define bswap_32(x) ((((x) << 24) & 0xff000000u) | (((x) << 8) & 0x00ff0000u) \
                   | (((x) >> 8) & 0x0000ff00u) | (((x) >> 24) & 0x000000ffu))

static inline unsigned swab32(unsigned v)
{
	return bswap_32(v);
}

/*
 * SHA256 block compression function.  The 256-bit state is transformed via
 * the 512-bit input block to produce a new state.
 */
unsigned sha256_transform(const unsigned *state, const unsigned *block, bool copy, unsigned out_state[16])
{
#pragma HLS ARRAY_PARTITION variable=sha256_k complete dim=1
	unsigned W[64];
#pragma HLS ARRAY_PARTITION variable=W complete dim=1

	unsigned S[8];
#pragma HLS ARRAY_PARTITION variable=S complete dim=1

	unsigned t0, t1;
	int i;

	unsigned a = state[0];
	unsigned b = state[1];
	unsigned c = state[2];
	unsigned d = state[3];
	unsigned e = state[4];
	unsigned f = state[5];
	unsigned g = state[6];
	unsigned h = state[7];

	for (i = 0; i < 64; i++)
	{
#pragma HLS PIPELINE
#pragma HLS UNROLL factor=8
		if (i < 16)
		{
			W[i] = block[i];
		}
		else
		{
			W[i] = s1(W[i - 2]) + W[i - 7] + s0(W[i - 15]) + W[i - 16];
		}
		//RNDr(S, W[i], i);

		t0 = h + S1(e) + Ch(e, f, g) + sha256_k[i] + W[i];
		t1 = S0(a) + Maj(a, b, c);

		h = g;
		g = f;
		f = e;
		e = d + t0;
		d = c;
		c = b;
		b = a;
		a = t0 + t1;
	}

    if (copy)
    {
		/* 4. Mix local working variables into global state */
    	out_state[0] = a + state[0];
    	out_state[1] = b + state[1];
    	out_state[2] = c + state[2];
    	out_state[3] = d + state[3];
    	out_state[4] = e + state[4];
    	out_state[5] = f + state[5];
    	out_state[6] = g + state[6];
    	out_state[7] = h + state[7];
    }

    return state[7] + h;
}

int scanhash_sha256d(unsigned work[32], unsigned target[8], unsigned max_nonce, unsigned* num_hashes)
{
#pragma HLS INTERFACE s_axilite port=work bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=target bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=max_nonce bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=num_hashes bundle=CTRL_BUS
#pragma HLS INTERFACE s_axilite port=return bundle=CTRL_BUS

	unsigned data[16];
#pragma HLS ARRAY_PARTITION variable=data complete dim=1

	unsigned hash[16] = { 0 };
#pragma HLS ARRAY_PARTITION variable=hash complete dim=1

	unsigned midstate[16];
#pragma HLS ARRAY_PARTITION variable=midstate complete dim=1

	unsigned upper[16];
#pragma HLS ARRAY_PARTITION variable=upper complete dim=1

	hash[8] = 0x80000000;
	hash[15] = 0x00000100;


	const unsigned first_nonce = work[19];
	const unsigned Htarg = target[7];
	unsigned n = first_nonce - 1;

	for (int i = 0; i < 16; i++)
	{
		data[i] = work[i + 16];
		upper[i] = work[i];
	}

	sha256_transform(h, upper, true, midstate);

	do
	{
#pragma HLS LOOP_TRIPCOUNT min=1 max=4000000000

		data[3] = ++n;


		sha256_transform(midstate, data, true, hash);
		const unsigned high = swab32(sha256_transform(h, hash, false, hash));

		work[19] = n;
		*num_hashes = n - first_nonce + 1;

		if (high <= Htarg)
		{
			// Passed fast check, will verify further in software
			return 1;
		}
	} while (n < max_nonce);

	return 0;
}