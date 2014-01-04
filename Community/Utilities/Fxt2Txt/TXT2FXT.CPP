// txt2fxt
// V1.1 DOS
// converts *.TXT Files into "Grand Theft Auto" *.FXT
// *.txt Files have been produced from *.FXD Files by fxt2txt.exe (and edited).
// Usage: txt2fxt <special.txt >special.fxt
//
// written 12/97 by Michael Mendelsohn (mendel@informatik.uni-bremen.de)
//
//

#include <iostream.h>

main()


{
unsigned char c;
unsigned char isochar = 196;      // is prefixed to extended charset chars
unsigned char code[8] = {0x64,0xc7,0x8d,0x19,0x31,0x61,0xc1,0x81};
	cin.unsetf(1L);
	for (int x=0; x<8; x++)
		{ cin >> c; c=c+code[x]; cout << c; };
	for ( cin >> c; cin.good(); cin >> c )
		{
		if (c > 191  ) { c=c-64; cout << isochar; };  // adjust range, prefix 196
		switch (c) {
			case '\n': c=0; c++; cout << c; break;
			default: c++; cout << c ;
		};
	};
	
	return 0;
}