#ifndef _CONDITION_H
#define _CONDITION_H

#include "types.h"

struct Creature;

/**
 * @brief TODO
 */
struct Condition {
	Condition() { }

	virtual bool satisfy(Creature*) immut { return true; } // _08

	// _00 = VTBL
};

#endif
