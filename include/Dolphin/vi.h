#ifndef _DOLPHIN_VI_H
#define _DOLPHIN_VI_H

#include "Dolphin/GX/GXTypes.h"
#include "Dolphin/vitypes.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

///// VIDEO INTERFACE FUNCTIONS ////
// Basic VI functions.
void __VIInit(VITVMode mode);
void VIInit(void);
void VIFlush(void);
void VIWaitForRetrace(void);

// Configure functions.
struct _GXRenderModeObj;
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
