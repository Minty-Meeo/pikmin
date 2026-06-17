#ifndef _DOLPHIN_OS_OSEXCEPTION_H
#define _DOLPHIN_OS_OSEXCEPTION_H

#include "Dolphin/OS/OSContext.h"
#include "Dolphin/OS/OSUtil.h"
#include "types.h"

BEGIN_SCOPE_EXTERN_C

//////// EXCEPTION TYPES /////////
// Useful typedef for exceptions.
typedef u8 __OSException;

// Exception handler function type.
typedef void (*__OSExceptionHandler)(__OSException exception, OSContext* context);

// Exception handling functions.
__OSExceptionHandler __OSSetExceptionHandler(__OSException exception, __OSExceptionHandler handler);
__OSExceptionHandler __OSGetExceptionHandler(__OSException exception);

//////////////////////////////////

/////////// EXCEPTIONS ///////////
// Exception codes.
#define __OS_EXCEPTION_SYSTEM_RESET       0
#define __OS_EXCEPTION_MACHINE_CHECK      1
#define __OS_EXCEPTION_DSI                2
#define __OS_EXCEPTION_ISI                3
#define __OS_EXCEPTION_EXTERNAL_INTERRUPT 4
#define __OS_EXCEPTION_ALIGNMENT          5
#define __OS_EXCEPTION_PROGRAM            6
#define __OS_EXCEPTION_FLOATING_POINT     7
#define __OS_EXCEPTION_DECREMENTER        8
#define __OS_EXCEPTION_SYSTEM_CALL        9
#define __OS_EXCEPTION_TRACE              10
#define __OS_EXCEPTION_PERFORMACE_MONITOR 11
#define __OS_EXCEPTION_BREAKPOINT         12
#define __OS_EXCEPTION_SYSTEM_INTERRUPT   13
#define __OS_EXCEPTION_THERMAL_INTERRUPT  14
#define __OS_EXCEPTION_MAX                (__OS_EXCEPTION_THERMAL_INTERRUPT + 1)

//////////////////////////////////

///////// CONTEXT SAVING /////////
// Macro for saving context on exception (for asm functions).

// clang-format off
#define OS_EXCEPTION_SAVE_GPRS(context)               \
	"stw    r0, OSContext.gpr0 (" #context ");"       \
	"stw    r1, OSContext.gpr1 (" #context ");"       \
	"stw    r2, OSContext.gpr2 (" #context ");"       \
	"stmw   r6, OSContext.gpr6 (" #context ");"       \
	/* Save GQR1 to GQR7. GQR0 must always be zero */ \
	"mfspr  r0, SPR_GQR1;"                            \
	"stw    r0, OSContext.gqr1 (" #context ");"       \
	"mfspr  r0, SPR_GQR2;"                            \
	"stw    r0, OSContext.gqr2 (" #context ");"       \
	"mfspr  r0, SPR_GQR3;"                            \
	"stw    r0, OSContext.gqr3 (" #context ");"       \
	"mfspr  r0, SPR_GQR4;"                            \
	"stw    r0, OSContext.gqr4 (" #context ");"       \
	"mfspr  r0, SPR_GQR5;"                            \
	"stw    r0, OSContext.gqr5 (" #context ");"       \
	"mfspr  r0, SPR_GQR6;"                            \
	"stw    r0, OSContext.gqr6 (" #context ");"       \
	"mfspr  r0, SPR_GQR7;"                            \
	"stw    r0, OSContext.gqr7 (" #context ");"
// clang-format on

//////////////////////////////////

END_SCOPE_EXTERN_C

#endif
