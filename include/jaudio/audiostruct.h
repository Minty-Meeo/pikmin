#ifndef _JAUDIO_AUDIOSTRUCT_H
#define _JAUDIO_AUDIOSTRUCT_H

#include "types.h"
#include "Dolphin/os.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

///////////////// JAUDIO STRUCTURES /////////////////
// Members and names from AC and SMS Decomp with gratitude.

typedef struct ALHeap ALHeap;
typedef struct dspch_ DSPChannel;
typedef struct Jac_MessageQueue Jac_MessageQueue;
typedef struct JCMgr JCMgr;
typedef struct jc_ JC;
typedef struct jcs_ JCS;
typedef struct Wave_ Wave;

/**
 * @brief Audio heap.
 *
 * @note Size: 0x14.
 */
struct ALHeap {
	u8* base;    // _00
	u8* current; // _04
	int length;  // _08
	u32 count;   // _0C
	u8* last;    // _10
};

/**
 * @brief TODO.
 */
struct dspch_ {
	u8 _00;                       // 00
	u8 _01;                       // 01
	u8 _02;                       // 02
	u8 _03;                       // 03
	u16 _04;                      // 04
	u16 _06;                      // 06
	u32 _08;                      // 08
	void* _0C;                    // 0C
	int (*_10)(DSPChannel*, u32); // 10
};

/**
 * @brief TODO.
 *
 * @note This is exactly the same as OSMessageQueue. _00-_10 don't seem to get called, but this makes sense.
 */
struct Jac_MessageQueue {
	OSThreadQueue queueSend;    // _00
	OSThreadQueue queueReceive; // _08
	OSMessage* msgArray;        // _10, array of messages.
	s32 msgCount;               // _14, array limit size.
	s32 firstIndex;             // _18, first message index in array.
	s32 usedCount;              // _1C, actual number of used messages.
};

struct JCMgr {
	u32 _00;       // _00
	u32 _04;       // _04
	JC* _08;       // _08
	JC* _0C;       // _0C
	JC* _10;       // _10
	JC* _14;       // _14
	f32 _18;       // _18
	f32 _1C;       // _1C
	f32 _20;       // _20
	f32 _24;       // _24
	f32 _28;       // _28
	s16 _2C[8];    // _2C
	s16 _3C[4];    // _3C
	char _44[8];   // _44
	s16 _4C;       // _4C
	u16 _4E[6];    // _4E
	u8 _5A[6];     // _5A
	u8 _60;        // _60
	u8 _61;        // _61
	u8 _62[3];     // _62
	u32 _68;       // _68
	u16 _6C;       // _6C
	s32 _70;       // _70
};

/**
 * @brief TODO.
 */
struct jc_ {
	u8 _00;                  // _00
	u8 _01;                  // _01
	u8 _02;                  // _02
	u8 _03;                  // _03
	JCMgr* mMgr;             // _04
	void** _08;              // _08
	u8 _0C;                  // _0C
	void* _10;               // _10
	u32 _14;                 // _14
	u32 _18;                 // _18
	char _1C[4];             // _1C
	DSPChannel* _20;         // _20
	void* mNext;             // _24
	BOOL (*_28)(void*, u32); // _28
	void (*_2C)(void*, u32); // _2C
	s32 _30;                 // _30
	s32 _34;                 // _34
	void* _38[4];            // _38
	f32 _48;                 // _48
	char _4C[4];             // _4C
	f32 _50;                 // _50
	char _54[8];             // _4C
	f32 _5C;                 // _5C
	f32 _60;                 // _60
	f32 _64;                 // _64
	char _68[4];             // _68
	f32 _6C;                 // _6C
	char _70[8];             // _70
	f32 _78;                 // _78
	char _7C[8];             // _7C
	f32 _84;                 // _84
	char _88[4];             // _88
	f32 _8C;                 // _8C
	f32 _90;                 // _90
	f32 _94;                 // _94
	u16 _98;                 // _98
	u16 _9A;                 // _9A
	void* _9C;               // _9C
	char _A0[8];             // _A0
	u16 _A8[6];              // _A8
	s16 _B4[6];              // _B4
	u32 _C0;                 // _C0
	u16 _C4;                 // _C4
	u16 _C6;                 // _C6
	u32 _C8;                 // _C8
	char _CC[4];             // _CC
	s32 _D0;                 // _D0
	char _D4[12];            // _D4
	u8 _E0[0xF8 - 0xE0];     // _E0
	u16 _F8;                 // _F8
	u8 _FA[0x114 - 0xFA];    // _FA
	u16 _114[6];             // _114
};

/**
 * @brief TODO.
 */
struct jcs_ {
	// TODO
};

/**
 * @brief TODO.
 */
struct Wave_ {
	u8 _00;                // _00
	u8 compBlockIdx;       // _01
	u8 _02;                // _02
	s8 _04[12];            // _04
	s32 isLooping;         // _10
	s32 loopAddress;       // _14
	s32 loopStartPosition; // _18
	s32 _1C;               // _1C
	s16 loopYN1;           // _20
	s16 loopYN2;           // _22
};

/////////////////////////////////////////////////////

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
