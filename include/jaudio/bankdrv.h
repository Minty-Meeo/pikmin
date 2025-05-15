#ifndef _JAUDIO_BANKDRV_H
#define _JAUDIO_BANKDRV_H

#include "types.h"

typedef struct Bank_ Bank_;
typedef struct Ibnk_ Ibnk_;
typedef struct Inst_ Inst_;
typedef struct Perc_ Perc_;
typedef struct Voice_ Voice_;
typedef struct Sense_ Sense_;
typedef struct Rand_ Rand_;
typedef struct Osc_ Osc_;
typedef struct Oscbuf_ Oscbuf_;

struct Bank_ {
	int magic;         // _00 | 'BANK'
	void* pointer[13]; // _04 | TODO: size unknown, at least 13 observed.
};

struct Ibnk_ {
	int magic;           // _00 | 'IBNK'
	u32 _04;             // _04
	u32 _08;             // _08
	u8 _0C[0x20 - 0x0C]; // _0C
	Bank_ bank;
};

typedef struct Inst_Invented2 Inst_Invented2;
typedef struct Inst_Points_To Inst_Points_To;

/**
 * @brief This is an invented type of an unknown name.
 *
 * @note Size: 0x10.
 */
struct InstInvented2 {
	u8 _00;
	u8 _01[0x10 - 0x01];
};

/**
 * @brief This is an invented type of an unknown name.
 *
 * @note Size: 0x10.
 */
struct Inst_Points_To {
	u8 _00;              // _00
	u32 _04;             // _04
	InstInvented2* _08;  // _08
	u8 _0C[0x10 - 0x0C]; // _0C
};

/**
 * @note Size: 0x40.
 */
struct Inst_ {
	int magic;              // _00 : 'INST'
	u8 _04[0x28 - 0x04];    // _04
	u32 _28;                // _28
	Inst_Points_To* _2C[5]; // _2C
};

struct Rand_ {
	u8 _00[0x04 - 0x00]; // _00
	f32 _04;             // _04
	f32 _08;             // _08
	u8 _0C[0x10 - 0x0C]; // _0C
};

Inst_* Bank_InstChange(Bank_*, u32);
Voice_* Bank_VoiceChange(Bank_*, u32);
Perc_* Bank_PercChange(Bank_*, u32);
int Bank_GetInstKeymap(Inst_*, u8);
int Bank_GetInstVmap(Inst_*, u8, u8);
int Bank_GetPercVmap(Perc_*, u8, u8);
int Bank_GetVoiceMap(Voice_*, u16);
int Bank_SenseToOfs(Sense_*, u8);
f32 Bank_RandToOfs(Rand_* rand);
int Bank_OscToOfs(Osc_*, Oscbuf_*);

#endif
