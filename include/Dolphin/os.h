#ifndef _DOLPHIN_OS_H
#define _DOLPHIN_OS_H

#include "Dolphin/PPCArch.h"
#include "Dolphin/dvd.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

#include "Dolphin/OS/OSAlarm.h"
#include "Dolphin/OS/OSAlloc.h"
#include "Dolphin/OS/OSBootInfo.h"
#include "Dolphin/OS/OSCache.h"
#include "Dolphin/OS/OSContext.h"
#include "Dolphin/OS/OSError.h"
#include "Dolphin/OS/OSException.h"
#include "Dolphin/OS/OSExi.h"
#include "Dolphin/OS/OSExpansion.h"
#include "Dolphin/OS/OSUtil.h"
// #include "Dolphin/OS/OSFastCast.h" // need to comment this out for jaudio bc paired single asm instructions mess with proc 750
#include "Dolphin/OS/OSFont.h"
#include "Dolphin/OS/OSInterrupt.h"
#include "Dolphin/OS/OSMemory.h"
#include "Dolphin/OS/OSMessage.h"
#include "Dolphin/OS/OSModule.h"
#include "Dolphin/OS/OSMutex.h"
#include "Dolphin/OS/OSReset.h"
#include "Dolphin/OS/OSRtc.h"
#include "Dolphin/OS/OSSerial.h"
#include "Dolphin/OS/OSThread.h"

///////// OS FUNCTIONS ///////////
// Initialisers.
extern void __OSPSInit();
extern void __OSFPRInit();
extern void __OSCacheInit();
extern void __OSContextInit();
extern void __OSInterruptInit();
extern void __OSInitSystemCall();
extern void __OSModuleInit();
extern void __OSInitAudioSystem();
extern void __OSStopAudioSystem();
extern void __OSInitMemoryProtection();
extern void __OSInitAlarm();

void OSInit();

// OS logging and reporting.
void OSReport(const char* message, ...);
void OSPanic(const char* file, int line, const char* message, ...);

#define OSError(...)           OSPanic(__FILE__, __LINE__, __VA_ARGS__)
#define OSErrorLine(line, ...) OSPanic(__FILE__, line, __VA_ARGS__)

// Other OS functions.
void OSRegisterVersion(const char*);
#define OS_CONSOLE_RETAIL4     0x00000004
#define OS_CONSOLE_RETAIL3     0x00000003
#define OS_CONSOLE_RETAIL2     0x00000002
#define OS_CONSOLE_RETAIL1     0x00000001
#define OS_CONSOLE_RETAIL      0x00000000
#define OS_CONSOLE_DEVHW4      0x10000007
#define OS_CONSOLE_DEVHW3      0x10000006
#define OS_CONSOLE_DEVHW2      0x10000005
#define OS_CONSOLE_DEVHW1      0x10000004
#define OS_CONSOLE_MINNOW      0x10000003
#define OS_CONSOLE_ARTHUR      0x10000002
#define OS_CONSOLE_PC_EMULATOR 0x10000001
#define OS_CONSOLE_EMULATOR    0x10000000
#define OS_CONSOLE_DEVELOPMENT 0x10000000
#define OS_CONSOLE_DEVKIT      0x10000000
#define OS_CONSOLE_TDEVKIT     0x20000000

u32 OSGetConsoleType();

#define OS_EURGB60_OFF 0u
#define OS_EURGB60_ON  1u

u32 OSGetEuRgb60Mode();
void OSSetEuRgb60Mode(u32 on);

// Arena functions.
extern void* __OSArenaHi;

void* OSGetArenaHi(void);
void* OSGetArenaLo(void);
void OSSetArenaHi(void* addr);
void OSSetArenaLo(void* addr);

// targsupp
extern u32 TRKAccessFile(u32, u32, u32*, u8*);
extern u32 TRKOpenFile(u32, u32, u32*, u8*);
extern u32 TRKCloseFile(u32, u32);
extern u32 TRKPositionFile(u32, u32, u32*, u8*);

#define OS_SYS_CALL_HANDLER  ((void*)0x80000C00)
#define OS_HANDLER_SLOT_SIZE (0x100)

void __OSSystemCallVectorStart();
void __OSSystemCallVectorEnd();

void OSFillFPUContext(OSContext*);
extern u32 __OSFpscrEnableBits; /** TODO: find a wrapper for this. Symbol is defined in OSError.c. */

u16 __OSWirelessPadFixMode AT_ADDRESS(OS_BASE_CACHED | 0x30E0);
u8 GameChoice AT_ADDRESS(OS_BASE_CACHED | 0x30E3);

volatile int __OSTVMode AT_ADDRESS(OS_BASE_CACHED | 0xCC);

// u32 GameCode AT_ADDRESS(0x80000000);
// u32 FSTLocationInRam AT_ADDRESS(0x80000038);

//////////////////////////////////

// extern things.
extern OSThreadQueue __DVDThreadQueue;
extern u8 _stack_addr[];
extern u8 _stack_end[];
extern BOOL __OSInIPL;

//////////////////////////////////

#ifdef DEBUG // Currently necessary for dsp_cardunlock.c

#ifndef ASSERTLINE
#define ASSERTLINE(line, exp) (void)((exp) || (OSPanic(__FILE__, line, "Failed assertion " #exp), 0))
#endif

#ifndef ASSERTMSGLINE
#define ASSERTMSGLINE(line, cond, msg) ((cond) || (OSPanic(__FILE__, line, msg), 0))
#endif

#ifndef ASSERT
#define ASSERT(exp) ASSERTLINE(__LINE__, exp)
#endif

#ifndef ASSERTMSG
#if defined(__STDC_VERSION__) && (199901L <= __STDC_VERSION__) || defined(__MWERKS__) || defined(__SN__)
#define ASSERTMSG(exp, ...) (void)((exp) || (OSPanic(__FILE__, __LINE__, __VA_ARGS__), 0))
#else
#define ASSERTMSG(exp, msg) (void)((exp) || (OSPanic(__FILE__, __LINE__, (msg)), 0))
#endif
#endif

#ifndef ASSERTMSG1
#define ASSERTMSG1(exp, msg, param1) (void)((exp) || (OSPanic(__FILE__, __LINE__, (msg), (param1)), 0))
#endif

#ifndef ASSERTMSG2
#define ASSERTMSG2(exp, msg, param1, param2) (void)((exp) || (OSPanic(__FILE__, __LINE__, (msg), (param1), (param2)), 0))
#endif

#ifndef ASSERTMSG3
#define ASSERTMSG3(exp, msg, param1, param2, param3) (void)((exp) || (OSPanic(__FILE__, __LINE__, (msg), (param1), (param2), (param3)), 0))
#endif

#ifndef ASSERTMSG4
#define ASSERTMSG4(exp, msg, param1, param2, param3, param4) \
	(void)((exp) || (OSPanic(__FILE__, __LINE__, (msg), (param1), (param2), (param3), (param4)), 0))
#endif

#else // _DEBUG

#ifndef ASSERT
#define ASSERT(exp)                     ((void)0)
#define ASSERTMSGLINEV(line, cond, ...) (void)0
#endif

#ifndef ASSERTLINE
#define ASSERTLINE(line, exp) ((void)0)
#endif

#ifndef ASSERTMSGLINE
#define ASSERTMSGLINE(line, cond, msg) ((void)0)
#endif

#ifndef ASSERTMSG
#if defined(__STDC_VERSION__) && (199901L <= __STDC_VERSION__) || defined(__MWERKS__) || defined(__SN__)
#define ASSERTMSG(exp, ...) ((void)0)
#else
#define ASSERTMSG(exp, msg) ((void)0)
#endif
#endif

#ifndef ASSERTMSG1
#define ASSERTMSG1(exp, msg, param1) ((void)0)
#endif
#ifndef ASSERTMSG2
#define ASSERTMSG2(exp, msg, param1, param2) ((void)0)
#endif
#ifndef ASSERTMSG3
#define ASSERTMSG3(exp, msg, param1, param2, param3) ((void)0)
#endif
#ifndef ASSERTMSG4
#define ASSERTMSG4(exp, msg, param1, param2, param3, param4) ((void)0)
#endif

#endif // _DEBUG

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
