#ifndef _DOLPHIN_VI_H
#define _DOLPHIN_VI_H

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

////// VIDEO INTERFACE DEFINES /////
// Display pixel size.
#define VI_DISPLAY_PIX_SZ (2)

// Interlacing types
#define VI_INTERLACE     (0)
#define VI_NON_INTERLACE (1)
#define VI_PROGRESSIVE   (2)
#define VI_3D            (3)

// Video output formats
#define VI_NTSC      (0)
#define VI_PAL       (1)
#define VI_MPAL      (2)
#define VI_DEBUG     (3)
#define VI_DEBUG_PAL (4)
#define VI_EURGB60   (5)
#define VI_GCA       (6)

// Conversion to TVMode used in enums
#define VI_TVMODE(FMT, INT) (((FMT) << 2) + (INT))

// Fields
#define VI_FIELD_ABOVE (1)
#define VI_FIELD_BELOW (0)

// Max screen dimensions
// NTSC
#define VI_MAX_WIDTH_NTSC  (720)
#define VI_MAX_HEIGHT_NTSC (480)

// PAL
#define VI_MAX_WIDTH_PAL  (720)
#define VI_MAX_HEIGHT_PAL (574)

// MPAL
#define VI_MAX_WIDTH_MPAL  (720)
#define VI_MAX_HEIGHT_MPAL (480)

// EU RGB60 (same as NTSC)
#define VI_MAX_WIDTH_EURGB60  VI_MAX_WIDTH_NTSC
#define VI_MAX_HEIGHT_EURGB60 VI_MAX_HEIGHT_NTSC

// Conversion to padded FB width from screen width
#define VIPadFrameBufferWidth(width) ((u16)(((u16)(width) + 15) & ~15))

////////////////////////////////////

/////// VIDEO INTERFACE TYPES //////
// Retrace callback function type.
typedef void (*VIRetraceCallback)(u32 retraceCount);

// Position callback function type.
typedef void (*VIPositionCallback)(s16 x, s16 y);

// TV Modes
typedef enum {
	// NTSC
	VI_TVMODE_NTSC_INT  = VI_TVMODE(VI_NTSC, VI_INTERLACE),     // 0
	VI_TVMODE_NTSC_DS   = VI_TVMODE(VI_NTSC, VI_NON_INTERLACE), // 1
	VI_TVMODE_NTSC_PROG = VI_TVMODE(VI_NTSC, VI_PROGRESSIVE),   // 2
	VI_TVMODE_NTSC_3D   = VI_TVMODE(VI_NTSC, VI_3D),            // 3

	// PAL
	VI_TVMODE_PAL_INT = VI_TVMODE(VI_PAL, VI_INTERLACE),     // 4
	VI_TVMODE_PAL_DS  = VI_TVMODE(VI_PAL, VI_NON_INTERLACE), // 5

	// MPAL
	VI_TVMODE_MPAL_INT = VI_TVMODE(VI_MPAL, VI_INTERLACE),     // 8
	VI_TVMODE_MPAL_DS  = VI_TVMODE(VI_MPAL, VI_NON_INTERLACE), // 9

	// Debug
	VI_TVMODE_DEBUG_INT = VI_TVMODE(VI_DEBUG, VI_INTERLACE), // 12

	// Debug PAL
	VI_TVMODE_DEBUG_PAL_INT = VI_TVMODE(VI_DEBUG_PAL, VI_INTERLACE),     // 16
	VI_TVMODE_DEBUG_PAL_DS  = VI_TVMODE(VI_DEBUG_PAL, VI_NON_INTERLACE), // 17

	// EU RGB60
	VI_TVMODE_EURGB60_INT = VI_TVMODE(VI_EURGB60, VI_INTERLACE),     // 20
	VI_TVMODE_EURGB60_DS  = VI_TVMODE(VI_EURGB60, VI_NON_INTERLACE), // 21

	// GCA
	VI_TVMODE_GCA_INT  = VI_TVMODE(VI_GCA, VI_INTERLACE),     // 24
	VI_TVMODE_GCA_DS   = VI_TVMODE(VI_GCA, VI_NON_INTERLACE), // 25
	VI_TVMODE_GCA_PROG = VI_TVMODE(VI_GCA, VI_PROGRESSIVE),   // 26
} VITVMode;

// External frame buffer modes (single and double?)
typedef enum {
	VI_XFBMODE_SF = 0,
	VI_XFBMODE_DF = 1,
} VIXFBMode;

// Structure to use with timing in vi.c (size 0x28).
typedef struct VITimingInfo {
	u8 equ;           // _00
	u16 acv;          // _02
	u16 prbOdd;       // _04
	u16 prbEven;      // _06
	u16 psbOdd;       // _08
	u16 psbEven;      // _0A
	u8 bs1;           // _0C
	u8 bs2;           // _0D
	u8 bs3;           // _0E
	u8 bs4;           // _0F
	u16 be1;          // _10
	u16 be2;          // _12
	u16 be3;          // _14
	u16 be4;          // _16
	u16 numHalfLines; // _18
	u16 hlw;          // _1A
	u8 hsy;           // _1C
	u8 hcs;           // _1D
	u8 hce;           // _1E
	u8 hbe640;        // _1F
	u16 hbs640;       // _20
	u8 hbeCCIR656;    // _24
	u16 hbsCCIR656;   // _26
} VITimingInfo;

// Structure to use with HorVer in vi.c (size 0x58).
typedef struct VIPositionInfo {
	u16 dispPosX;         // _00
	u16 dispPosY;         // _02
	u16 dispSizeX;        // _04
	u16 dispSizeY;        // _06
	u16 adjDispPosX;      // _08
	u16 adjDispPosY;      // _0A
	u16 adjDispSizeY;     // _0C
	u16 adjPanPosY;       // _0E
	u16 adjPanSizeY;      // _10
	u16 fbSizeX;          // _12
	u16 fbSizeY;          // _14
	u16 panPosX;          // _16
	u16 panPosY;          // _18
	u16 panSizeX;         // _1A
	u16 panSizeY;         // _1C
	VIXFBMode xfbMode;    // _20
	u32 nonInter;         // _24
	u32 tv;               // _28
	u8 wordPerLine;       // _2C
	u8 std;               // _2D
	u8 wpl;               // _2E
	u32 bufAddr;          // _30
	u32 tfbb;             // _34
	u32 bfbb;             // _38
	u8 xof;               // _3C
	BOOL isBlack;         // _40
	BOOL is3D;            // _44
	u32 rbufAddr;         // _48
	u32 rtfbb;            // _4C
	u32 rbfbb;            // _50
	VITimingInfo* timing; // _54
} VIPositionInfo;

////////////////////////////////////

///// VIDEO INTERFACE FUNCTIONS ////
// Basic VI functions.
void __VIInit(VITVMode mode);
void VIInit(void);
void VIFlush(void);
void VIWaitForRetrace(void);

// Configure functions.
void VIConfigure(const struct _GXRenderModeObj* obj);

// Retrace callbacks.
VIRetraceCallback VISetPreRetraceCallback(VIRetraceCallback callback);
VIRetraceCallback VISetPostRetraceCallback(VIRetraceCallback callback);

// Getters and setters
void VISetNextFrameBuffer(void* fb);
void* VIGetCurrentFrameBuffer();

void __VIGetCurrentPosition(s16* x, s16* y);

void VISetBlack(BOOL isBlack);

u32 VIGetRetraceCount(void);
u32 VIGetNextField(void);
u32 VIGetCurrentLine(void);
u32 VIGetTvFormat(void);

u32 VIGetDTVStatus(void);

// Unused/stripped in P2.
void VIConfigurePan(u16 panPosX, u16 panPosY, u16 panSizeX, u16 panSizeY);
void* VIGetNextFrameBuffer();
void VISetNextRightFrameBuffer(void* fb);
void VISet3D(); // unsure on arguments

////////////////////////////////////

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
