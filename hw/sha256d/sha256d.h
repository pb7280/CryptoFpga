//#include "ap_int.h"

#define NUM_WORDS 8

//int sha256d(ap_uint<256> midstate, ap_uint<256> header, int start_nonce);
int scanhash_sha256d(unsigned work[32], unsigned target[8], unsigned max_nonce, unsigned* num_hashes);