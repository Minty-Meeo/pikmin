#ifndef _TYPES_H
#define _TYPES_H

// r2  is 803F0200
// r13 is 803E4D20

// Custom types
typedef int BOOL;
typedef unsigned int uint;
typedef unsigned long size_t;

// Standard types
typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;

// Volatile types
typedef volatile u8 vu8;
typedef volatile u16 vu16;
typedef volatile u32 vu32;
typedef volatile u64 vu64;
typedef volatile s8 vs8;
typedef volatile s16 vs16;
typedef volatile s32 vs32;
typedef volatile s64 vs64;

typedef float f32;
typedef double f64;
typedef long double f128;
typedef volatile f32 vf32;
typedef volatile f64 vf64;
typedef volatile f128 vf128;

#ifndef __cplusplus
typedef u16 wchar_t;
#endif

// Here we check if the decomp build system is configured for a non-matching build, and define `BUILD_MATCHING` if it is not.
// Please do not use the `DTK_CONFIG_NONMATCHING` macro for any other purpose, and instead check if the the `BUILD_MATCHING`
// macro is defined.  This is to ensure the codebase doesn't require any preprocessor macros to be defined by the build system.
#if defined(DTK_CONFIG_NONMATCHING) && !DTK_CONFIG_NONMATCHING
#define BUILD_MATCHING
#endif

// The following version group macro is for conditionally-compiled code shared among all three demo versions.
#if defined(VERSION_DPIJ01_PIKIDEMO) || defined(VERSION_G98E01_PIKIDEMO) || defined(VERSION_G98P01_PIKIDEMO)
#define VERSION_PIKIDEMO
#endif

// Defining this macro enables fixes for known crashes and mistakes.
#if !defined(BUILD_MATCHING) && !defined(BUGFIX)
#define BUGFIX
#endif

// Defining this macro enables development features removed from the final game.
#if !defined(BUILD_MATCHING) && !defined(DEVELOP)
// #define DEVELOP
#endif

// For when you have to pass something as a macro argument that contains commas.
#define MACRO_ARG(...) __VA_ARGS__

// Workaround to introduce scoped enums (A feature of C++11 and onward).
#define BEGIN_ENUM_TYPE(name) \
	struct name {             \
		typedef

#define END_ENUM_TYPE \
	Type;             \
	}

// For bugfixes that can fit sub-statement, use this instead of a clunky #if #else #endif.
#if defined(BUGFIX)
#define TERNARY_BUGFIX(fixed, buggy) fixed
#else
#define TERNARY_BUGFIX(fixed, buggy) buggy
#endif

// For undesireable code necessary to produce a matching build, use this instead of a clunky #if #else #endif.
#if defined(BUILD_MATCHING)
#define TERNARY_BUILD_MATCHING(matching, nonmatching) matching
#else
#define TERNARY_BUILD_MATCHING(matching, nonmatching) nonmatching
#endif

// Workarounds for our version of C++ and other stupidities
#undef TRUE
#define TRUE (1)
#undef FALSE
#define FALSE (0)

#if !defined(__cplusplus)
#define NULL    ((void*)0)
#define nullptr 0
#elif __cplusplus >= 201103L
#define NULL nullptr
#else
#define NULL    0
#define nullptr 0
#endif

// Here's some fun facts about the non-standard C++ that `immut` and `NRef` exist to eliminate:
//  - According to https://isocpp.org/wiki/faq/cpp11-language#rval, binding rvalues to non-const references has been forbidden since C++98.
//  - IBM's C/C++ compiler has the option `-qlanglvl=compatrvaluebinding`, for which its documentation says "the C++ Standard (2003)
//    indicates that an rvalue can only be bound to a const lvalue reference".
//  - MSVC allows rvalues to bind to non-const references by default.  However, by specifying the `/Zc:referenceBinding` option, "the
//    compiler follows section 8.5.3 of the C++11 standard".
// So was it C++98, 03, or 11?  Nobody can agree on what / when to blame, but MWCC 1.2.5 is definitely a standards non-compliant compiler.

// This entire codebase is cripplingly const-incorrect.  The result of a constructor being bound to a non-const reference in function
// parameters is done all the time, not to mention the mutable string literals.  Part of the promise of a matching decomp is that the
// original codebase is represented as closely as possible, warts and all, but portability (MWCC 1.2.5 was the *last* version of MWCC
// to allow this non-standard behavior) is also desireable.  Luckily, almost all const-incorrectness in the codebase is merely a result
// of apathy, so this cv-qualifier macro exists to document and fix the places that could have been const-correct but weren't.
#define immut TERNARY_BUILD_MATCHING(, const)

// Nakata had a bad habit of writing mutable references to lifetime-extended rvalues when a value type would have sufficed, so this macro
// is named for him.  MWCC 1.2.5 sometimes optimizes `Type foo = Type(...)` *really* poorly compared to `Type foo(...)`, so unless you are
// using a different compiler, this const-correctness fix might generate worse code.
#define NRef TERNARY_BUILD_MATCHING(&, )

// Random and useful macros
#define PATH_MAX  (256)                     // Max path length
#define MAX(a, b) (((a) > (b)) ? (a) : (b)) // Returns the maximum of a and b
#define MIN(a, b) (((a) < (b)) ? (a) : (b)) // Returns the minimum of a and b

// Flag manipulation macros
#define ARRAY_SIZE(o)        (sizeof((o)) / sizeof(*(o)))   // Array size define
#define ALIGN_PREV(X, N)     ((X) & ~((N) - 1))             // Align X to the previous N bytes (N must be power of two)
#define ALIGN_NEXT(X, N)     ALIGN_PREV(((X) + (N) - 1), N) // Align X to the next N bytes (N must be power of two)
#define IS_NOT_ALIGNED(X, N) (((X) & ((N) - 1)) != 0)       // True if X is not aligned to N bytes, else false
#define ATTRIBUTE_ALIGN(num) __attribute__((aligned(num)))  // Align object to num bytes (num should be power of two)

#define BUMP_REGISTER(reg) TERNARY_BUILD_MATCHING(MACRO_ARG({ asm { mr reg, reg } }), (void)0)

// clang-format off
#define REPEAT1(x)  x
#define REPEAT2(x)  REPEAT1(x); x
#define REPEAT3(x)  REPEAT2(x); x
#define REPEAT4(x)  REPEAT3(x); x
#define REPEAT5(x)  REPEAT4(x); x
#define REPEAT6(x)  REPEAT5(x); x
#define REPEAT7(x)  REPEAT6(x); x
#define REPEAT8(x)  REPEAT7(x); x
#define REPEAT9(x)  REPEAT8(x); x
#define REPEAT10(x) REPEAT9(x); x
#define REPEAT11(x) REPEAT10(x); x
#define REPEAT12(x) REPEAT11(x); x
#define REPEAT13(x) REPEAT12(x); x
#define REPEAT14(x) REPEAT13(x); x
#define REPEAT15(x) REPEAT14(x); x
#define REPEAT16(x) REPEAT15(x); x
#define REPEAT17(x) REPEAT16(x); x
#define REPEAT18(x) REPEAT17(x); x
#define REPEAT19(x) REPEAT18(x); x
#define REPEAT20(x) REPEAT19(x); x
#define REPEAT21(x) REPEAT20(x); x
#define REPEAT22(x) REPEAT21(x); x
#define REPEAT23(x) REPEAT22(x); x
#define REPEAT24(x) REPEAT23(x); x
#define REPEAT25(x) REPEAT24(x); x
#define REPEAT26(x) REPEAT25(x); x
#define REPEAT27(x) REPEAT26(x); x
#define REPEAT28(x) REPEAT27(x); x
#define REPEAT29(x) REPEAT28(x); x
#define REPEAT30(x) REPEAT29(x); x
#define REPEAT31(x) REPEAT30(x); x
#define REPEAT32(x) REPEAT31(x); x
#define REPEAT33(x) REPEAT32(x); x
#define REPEAT34(x) REPEAT33(x); x
#define REPEAT35(x) REPEAT34(x); x
#define REPEAT36(x) REPEAT35(x); x
#define REPEAT37(x) REPEAT36(x); x
#define REPEAT38(x) REPEAT37(x); x
#define REPEAT39(x) REPEAT38(x); x
#define REPEAT40(x) REPEAT39(x); x
#define REPEAT41(x) REPEAT40(x); x
#define REPEAT42(x) REPEAT41(x); x
#define REPEAT43(x) REPEAT42(x); x
#define REPEAT44(x) REPEAT43(x); x
#define REPEAT45(x) REPEAT44(x); x
#define REPEAT46(x) REPEAT45(x); x
#define REPEAT47(x) REPEAT46(x); x
#define REPEAT48(x) REPEAT47(x); x
#define REPEAT49(x) REPEAT48(x); x
#define REPEAT50(x) REPEAT49(x); x
#define REPEAT51(x) REPEAT50(x); x
#define REPEAT52(x) REPEAT51(x); x
#define REPEAT53(x) REPEAT52(x); x
#define REPEAT54(x) REPEAT53(x); x
#define REPEAT55(x) REPEAT54(x); x
#define REPEAT56(x) REPEAT55(x); x
#define REPEAT57(x) REPEAT56(x); x
#define REPEAT58(x) REPEAT57(x); x
#define REPEAT59(x) REPEAT58(x); x
#define REPEAT60(x) REPEAT59(x); x
#define REPEAT61(x) REPEAT60(x); x
#define REPEAT62(x) REPEAT61(x); x
#define REPEAT63(x) REPEAT62(x); x
#define REPEAT64(x) REPEAT63(x); x
#define REPEAT65(x) REPEAT64(x); x
#define REPEAT66(x) REPEAT65(x); x
#define REPEAT67(x) REPEAT66(x); x
#define REPEAT68(x) REPEAT67(x); x
#define REPEAT69(x) REPEAT68(x); x
#define REPEAT70(x) REPEAT69(x); x
#define REPEAT71(x) REPEAT70(x); x
#define REPEAT72(x) REPEAT71(x); x
#define REPEAT73(x) REPEAT72(x); x
#define REPEAT74(x) REPEAT73(x); x
#define REPEAT75(x) REPEAT74(x); x
#define REPEAT76(x) REPEAT75(x); x
#define REPEAT77(x) REPEAT76(x); x
#define REPEAT78(x) REPEAT77(x); x
#define REPEAT79(x) REPEAT78(x); x
#define REPEAT80(x) REPEAT79(x); x
#define REPEAT81(x) REPEAT80(x); x
#define REPEAT82(x) REPEAT81(x); x
#define REPEAT83(x) REPEAT82(x); x
#define REPEAT84(x) REPEAT83(x); x
#define REPEAT85(x) REPEAT84(x); x
#define REPEAT86(x) REPEAT85(x); x
#define REPEAT87(x) REPEAT86(x); x
#define REPEAT88(x) REPEAT87(x); x
#define REPEAT89(x) REPEAT88(x); x
#define REPEAT90(x) REPEAT89(x); x
#define REPEAT91(x) REPEAT90(x); x
#define REPEAT92(x) REPEAT91(x); x
#define REPEAT93(x) REPEAT92(x); x
#define REPEAT94(x) REPEAT93(x); x
#define REPEAT95(x) REPEAT94(x); x
#define REPEAT96(x) REPEAT95(x); x
#define REPEAT97(x) REPEAT96(x); x
#define REPEAT98(x) REPEAT97(x); x
#define REPEAT99(x) REPEAT98(x); x
#define REPEAT100(x) REPEAT99(x); x
#define REPEAT101(x) REPEAT100(x); x
#define REPEAT102(x) REPEAT101(x); x
#define REPEAT103(x) REPEAT102(x); x
#define REPEAT104(x) REPEAT103(x); x
#define REPEAT105(x) REPEAT104(x); x
#define REPEAT106(x) REPEAT105(x); x
#define REPEAT107(x) REPEAT106(x); x
#define REPEAT108(x) REPEAT107(x); x
#define REPEAT109(x) REPEAT108(x); x
#define REPEAT110(x) REPEAT109(x); x
#define REPEAT111(x) REPEAT110(x); x
#define REPEAT112(x) REPEAT111(x); x
#define REPEAT113(x) REPEAT112(x); x
#define REPEAT114(x) REPEAT113(x); x
#define REPEAT115(x) REPEAT114(x); x
#define REPEAT116(x) REPEAT115(x); x
#define REPEAT117(x) REPEAT116(x); x
#define REPEAT118(x) REPEAT117(x); x
#define REPEAT119(x) REPEAT118(x); x
#define REPEAT120(x) REPEAT119(x); x
// clang-format on

#define REPEAT(x, n) REPEAT##n(x)

// Somehow this overwhelms the automatic inlining score and stops unwanted function inlining
#define FORCE_DONT_INLINE TERNARY_BUILD_MATCHING(REPEAT16(REPEAT10((void*)0)), (void)0)

// Add an unused local variable to pad the stack by some number of words
#define STACK_PAD_VAR(n) TERNARY_BUILD_MATCHING(do { int pad[n]; } while (0), (void)0)

// Create a temporary struct to pad the stack by some number of words
#define STACK_PAD_STRUCT(n) TERNARY_BUILD_MATCHING(if (0)(struct { int pad[n]; }) {}, (void)0)

inline void padStack(void)
{
	int pad = 0;
}

// Add an unused variable in an inline function to pad the stack by some number of words
#define STACK_PAD_INLINE(n) TERNARY_BUILD_MATCHING(REPEAT(padStack(), n), (void)0)

// Uses a ternary to pad the stack by some number of words
#define STACK_PAD_TERNARY(expr, n) TERNARY_BUILD_MATCHING(REPEAT((expr) ? "fake" : "fake", n), (void)0)

// Add a member to a struct consisting of an array of bytes to pad for unknowable members
// NOTE: DO NOT use this for any structs that are SERIALIZED or otherwise a FIXED SIZE
#define STRUCT_PAD(n) REPEAT(int : 8, n)

// clang-format on

#ifdef __MWERKS__
#define WEAKFUNC        __declspec(weak)
#define DECL_SECT(name) __declspec(section name)
#define ASM             asm
#else
#define WEAKFUNC
#define DECL_SECT(name)
#define ASM
#endif

#define INIT  DECL_SECT(".init")
#define CTORS DECL_SECT(".ctors")

// Disable clangd warnings
#ifdef __clang__
// Allow string literals to be converted to char*
#pragma clang diagnostic ignored "-Wc++11-compat-deprecated-writable-strings"
#endif

#endif // _TYPES_H
