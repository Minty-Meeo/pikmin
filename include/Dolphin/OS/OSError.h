#ifndef _DOLPHIN_OS_OSERROR_H
#define _DOLPHIN_OS_OSERROR_H

#include "Dolphin/OS/OSContext.h"
#include "Dolphin/OS/OSUtil.h"
#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

/////////// ERROR TYPES //////////
// Useful typedef for errors.
typedef u16 OSError;

// Error handler function type.
typedef void (*OSErrorHandler)(OSError error, OSContext* context, ...);
typedef void (*OSErrorHandlerNoVARG)(OSError error, OSContext* context, u32 p1, u32 p2);

// Error functions.
OSErrorHandler OSSetErrorHandler(OSError error, OSErrorHandler handler);

// Error defines.
#define OS_ERROR_SYSTEM_RESET       (0)
#define OS_ERROR_MACHINE_CHECK      (1)
#define OS_ERROR_DSI                (2)
#define OS_ERROR_ISI                (3)
#define OS_ERROR_EXTERNAL_INTERRUPT (4)
#define OS_ERROR_ALIGNMENT          (5)
#define OS_ERROR_PROGRAM            (6)
#define OS_ERROR_FLOATING_POINT     (7)
#define OS_ERROR_DECREMENTER        (8)
#define OS_ERROR_SYSTEM_CALL        (9)
#define OS_ERROR_TRACE              (10)
#define OS_ERROR_PERFORMACE_MONITOR (11)
#define OS_ERROR_BREAKPOINT         (12)
#define OS_ERROR_SYSTEM_INTERRUPT   (13)
#define OS_ERROR_THERMAL_INTERRUPT  (14)
#define OS_ERROR_PROTECTION         (15)
#define OS_ERROR_MAX                (OS_ERROR_PROTECTION + 1)

// Error table.
extern OSErrorHandler __OSErrorTable[16];

//////////////////////////////////

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
