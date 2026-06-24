#ifndef _SYSNEW_H
#define _SYSNEW_H

#include "system.h"
#include "types.h"
#include <new>
#include <stddef.h>

inline void* operator new(size_t size)
{
	return System::alloc(size);
}
inline void* operator new[](size_t size)
{
	return System::alloc(size);
}
void* operator new(size_t size, int alignment);
void* operator new[](size_t size, int alignment);
void operator delete(void* ptr);
void operator delete[](void* ptr);

// MetroWerks allowed programmers to take the address of an rvalue, but this is illegal
// in C and C++.  This illegal operation effectively acts like a placement new on stack
// allocated space; the only difference is that object destruction would be automatic.
// Pikmin 1 almost never uses destructors, however, so this should be of no consequence.
#ifdef __MWERKS__
#define stack_new(...) &__VA_ARGS__
#else
#define stack_new(...) new (__builtin_alloca(ALIGN_NEXT(sizeof(__VA_ARGS__), alignof(__VA_ARGS__)))) __VA_ARGS__
#endif

#endif // _SYSNEW_H
