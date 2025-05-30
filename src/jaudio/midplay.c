#include "types.h"

s16 CUTOFF_TO_IIR_TABLE[128][4] = {
	{ 0x0f5c, 0x0a3d, 0x4665, 0x3999 }, { 0x103f, 0x0a28, 0x45d7, 0x3925 }, { 0x1122, 0x0a14, 0x454a, 0x38b0 },
	{ 0x1205, 0x09ff, 0x44bc, 0x383c }, { 0x12e8, 0x09ea, 0x442e, 0x37c8 }, { 0x13cb, 0x09d6, 0x43a0, 0x3754 },
	{ 0x14ae, 0x09c1, 0x4312, 0x36e0 }, { 0x1591, 0x09ac, 0x4284, 0x366c }, { 0x1674, 0x0998, 0x41f6, 0x35f8 },
	{ 0x1757, 0x0983, 0x4168, 0x3584 }, { 0x183a, 0x096e, 0x40da, 0x3510 }, { 0x191d, 0x095a, 0x404c, 0x349c },
	{ 0x1a00, 0x0945, 0x3fbe, 0x3427 }, { 0x1ae3, 0x0931, 0x3f31, 0x33b3 }, { 0x1bc6, 0x091c, 0x3ea3, 0x333f },
	{ 0x1ca9, 0x0907, 0x3e15, 0x32cb }, { 0x1d8c, 0x08f3, 0x3d87, 0x3257 }, { 0x1e6f, 0x08de, 0x3cf9, 0x31e3 },
	{ 0x1f52, 0x08c9, 0x3c6b, 0x316f }, { 0x2035, 0x08b5, 0x3bdd, 0x30fb }, { 0x2118, 0x08a0, 0x3b4f, 0x3087 },
	{ 0x21fc, 0x088b, 0x3ac1, 0x3012 }, { 0x22df, 0x0877, 0x3a33, 0x2f9e }, { 0x23c2, 0x0862, 0x39a6, 0x2f2a },
	{ 0x24a5, 0x084d, 0x3918, 0x2eb6 }, { 0x2588, 0x0839, 0x388a, 0x2e42 }, { 0x266b, 0x0824, 0x37fc, 0x2dce },
	{ 0x274e, 0x0810, 0x376e, 0x2d5a }, { 0x2831, 0x07fb, 0x36e0, 0x2ce6 }, { 0x2914, 0x07e6, 0x3652, 0x2c72 },
	{ 0x29f7, 0x07d2, 0x35c4, 0x2bfe }, { 0x2ada, 0x07bd, 0x3536, 0x2b89 }, { 0x2bbd, 0x07a8, 0x34a8, 0x2b15 },
	{ 0x2ca0, 0x0794, 0x341b, 0x2aa1 }, { 0x2d83, 0x077f, 0x338d, 0x2a2d }, { 0x2e66, 0x076a, 0x32ff, 0x29b9 },
	{ 0x2f49, 0x0756, 0x3271, 0x2945 }, { 0x302c, 0x0741, 0x31e3, 0x28d1 }, { 0x310f, 0x072d, 0x3155, 0x285d },
	{ 0x31f2, 0x0718, 0x30c7, 0x27e9 }, { 0x32d5, 0x0703, 0x3039, 0x2775 }, { 0x33b8, 0x06ef, 0x2fab, 0x2700 },
	{ 0x349c, 0x06da, 0x2f1d, 0x268c }, { 0x357f, 0x06c5, 0x2e8f, 0x2618 }, { 0x3662, 0x06b1, 0x2e02, 0x25a4 },
	{ 0x3745, 0x069c, 0x2d74, 0x2530 }, { 0x3828, 0x0687, 0x2ce6, 0x24bc }, { 0x390b, 0x0673, 0x2c58, 0x2448 },
	{ 0x39ee, 0x065e, 0x2bca, 0x23d4 }, { 0x3ad1, 0x0649, 0x2b3c, 0x2360 }, { 0x3bb4, 0x0635, 0x2aae, 0x22eb },
	{ 0x3c97, 0x0620, 0x2a20, 0x2277 }, { 0x3d7a, 0x060c, 0x2992, 0x2203 }, { 0x3e5d, 0x05f7, 0x2904, 0x218f },
	{ 0x3f40, 0x05e2, 0x2877, 0x211b }, { 0x4023, 0x05ce, 0x27e9, 0x20a7 }, { 0x4106, 0x05b9, 0x275b, 0x2033 },
	{ 0x41e9, 0x05a4, 0x26cd, 0x1fbf }, { 0x42cc, 0x0590, 0x263f, 0x1f4b }, { 0x43af, 0x057b, 0x25b1, 0x1ed7 },
	{ 0x4492, 0x0566, 0x2523, 0x1e62 }, { 0x4575, 0x0552, 0x2495, 0x1dee }, { 0x4658, 0x053d, 0x2407, 0x1d7a },
	{ 0x473b, 0x0529, 0x2379, 0x1d06 }, { 0x481f, 0x0514, 0x22eb, 0x1c92 }, { 0x4902, 0x04ff, 0x225e, 0x1c1e },
	{ 0x49e5, 0x04eb, 0x21d0, 0x1baa }, { 0x4ac8, 0x04d6, 0x2142, 0x1b36 }, { 0x4bab, 0x04c1, 0x20b4, 0x1ac2 },
	{ 0x4c8e, 0x04ad, 0x2026, 0x1a4e }, { 0x4d71, 0x0498, 0x1f98, 0x19d9 }, { 0x4e54, 0x0483, 0x1f0a, 0x1965 },
	{ 0x4f37, 0x046f, 0x1e7c, 0x18f1 }, { 0x501a, 0x045a, 0x1dee, 0x187d }, { 0x50fd, 0x0445, 0x1d60, 0x1809 },
	{ 0x51e0, 0x0431, 0x1cd3, 0x1795 }, { 0x52c3, 0x041c, 0x1c45, 0x1721 }, { 0x53a6, 0x0408, 0x1bb7, 0x16ad },
	{ 0x5489, 0x03f3, 0x1b29, 0x1639 }, { 0x556c, 0x03de, 0x1a9b, 0x15c4 }, { 0x564f, 0x03ca, 0x1a0d, 0x1550 },
	{ 0x5732, 0x03b5, 0x197f, 0x14dc }, { 0x5815, 0x03a0, 0x18f1, 0x1468 }, { 0x58f8, 0x038c, 0x1863, 0x13f4 },
	{ 0x59db, 0x0377, 0x17d5, 0x1380 }, { 0x5abf, 0x0362, 0x1747, 0x130c }, { 0x5ba2, 0x034e, 0x16ba, 0x1298 },
	{ 0x5c85, 0x0339, 0x162c, 0x1224 }, { 0x5d68, 0x0324, 0x159e, 0x11b0 }, { 0x5e4b, 0x0310, 0x1510, 0x113b },
	{ 0x5f2e, 0x02fb, 0x1482, 0x10c7 }, { 0x6011, 0x02e7, 0x13f4, 0x1053 }, { 0x60f4, 0x02d2, 0x1366, 0x0fdf },
	{ 0x61d7, 0x02bd, 0x12d8, 0x0f6b }, { 0x62ba, 0x02a9, 0x124a, 0x0ef7 }, { 0x639d, 0x0294, 0x11bc, 0x0e83 },
	{ 0x6480, 0x027f, 0x112f, 0x0e0f }, { 0x6563, 0x026b, 0x10a1, 0x0d9b }, { 0x6646, 0x0256, 0x1013, 0x0d27 },
	{ 0x6729, 0x0241, 0x0f85, 0x0cb2 }, { 0x680c, 0x022d, 0x0ef7, 0x0c3e }, { 0x68ef, 0x0218, 0x0e69, 0x0bca },
	{ 0x69d2, 0x0204, 0x0ddb, 0x0b56 }, { 0x6ab5, 0x01ef, 0x0d4d, 0x0ae2 }, { 0x6b98, 0x01da, 0x0cbf, 0x0a6e },
	{ 0x6c7b, 0x01c6, 0x0c31, 0x09fa }, { 0x6d5f, 0x01b1, 0x0ba3, 0x0986 }, { 0x6e42, 0x019c, 0x0b16, 0x0912 },
	{ 0x6f25, 0x0188, 0x0a88, 0x089d }, { 0x7008, 0x0173, 0x09fa, 0x0829 }, { 0x70eb, 0x015e, 0x096c, 0x07b5 },
	{ 0x71ce, 0x014a, 0x08de, 0x0741 }, { 0x72b1, 0x0135, 0x0850, 0x06cd }, { 0x7394, 0x0120, 0x07c2, 0x0659 },
	{ 0x7477, 0x010c, 0x0734, 0x05e5 }, { 0x755a, 0x00f7, 0x06a6, 0x0571 }, { 0x763d, 0x00e3, 0x0618, 0x04fd },
	{ 0x7720, 0x00ce, 0x058b, 0x0489 }, { 0x7803, 0x00b9, 0x04fd, 0x0414 }, { 0x78e6, 0x00a5, 0x046f, 0x03a0 },
	{ 0x79c9, 0x0090, 0x03e1, 0x032c }, { 0x7aac, 0x007b, 0x0353, 0x02b8 }, { 0x7b8f, 0x0067, 0x02c5, 0x0244 },
	{ 0x7c72, 0x0052, 0x0237, 0x01d0 }, { 0x7d55, 0x003d, 0x01a9, 0x015c }, { 0x7e38, 0x0029, 0x011b, 0x00e8 },
	{ 0x7f1b, 0x0014, 0x008d, 0x0074 }, { 0x7fff, 0x0000, 0x0000, 0x0000 },
};
