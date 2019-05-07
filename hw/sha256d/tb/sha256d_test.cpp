#include <iostream>
#include <stdlib.h>

#include "../sha256d.h"

using namespace std;

void hex_to_ints(const string& hex, unsigned* target)
{
	int length = hex.length();
	for (unsigned i = 0; i < length; i += 8)
	{
		string intString = hex.substr(i, 8);
		target[i / 8] = strtoul(intString.c_str(), NULL, 16);
	}
}

int main()
{
	// Bitcoin block #125552
	string version = "01000000";
	string prevHash = "81cd02ab7e569e8bcd9317e2fe99f2de44d49ab2b8851ba4a308000000000000";
	string merkleRoot = "e320b6c2fffc8d750423db8b1eb942ae710e951ed797f7affc8892b0f1fc122b";
	string time = "c7f5d74d";
	string bits = "f2b9441a";
	// Start the nonce 5 lower than the golden nonce (0x42a14695), should take 5 hashes to complete
	string nonce = "42a14690";
	string hex = version + prevHash + merkleRoot + time + bits + nonce;

	// This one alone is little endian for some reason
	string target = "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000";
	
	unsigned data[32] = { 0 };
	unsigned targ_data[8];

	hex_to_ints(hex, data);
	hex_to_ints(target, targ_data);

	// I can't find what makes these necessary but they are (this region *should* be padding)
	data[20] = 0x80000000;
	data[31] = 0x00000280;

	unsigned num_hashes = 0;

	// Bit higher than golden nonce, if we reach this then we failed
	unsigned max_nonce = 0x42a14700;

	int res = scanhash_sha256d(data, targ_data, max_nonce, &num_hashes);

	// data[19] contains the last used nonce, if res == 1 then it was verified below target
	if (res == 1 && data[19] == 0x42a14695 && num_hashes == 6)
	{
		cout << "Test passed!" << endl;
		return 0;
	}
	else
	{
		cout << "Test did not pass" << endl;
		cout << res <<endl;
		cout << data[19] << endl;
		cout << num_hashes << endl;
		return -1;
	}
}
