#ifndef _TRAVERSABLE_H
#define _TRAVERSABLE_H

#include "Condition.h"
#include "types.h"

struct Creature;

/**
 * @brief TODO.
 */
struct Traversable {
	inline Traversable()
	    : _04(0)
	{
	}

	virtual Creature* getCreature(int) = 0; // _08
	virtual int getFirst()             = 0; // _0C
	virtual int getNext(int)           = 0; // _10
	virtual bool isDone(int)           = 0; // _14

	// _00 = VTBL
	u32 _04; // _04, unknown
};

/**
 * @brief An iterator for traversing a Traversable object.
 */
struct Iterator {
	Iterator(Traversable* trav)
	    : mTrav(trav)
	{
	}

	Creature* operator*()
	{
		if (mIndex == -1) {
			return mTrav->getCreature(0);
		}

		return mTrav->getCreature(mIndex);
	}

	void first() { mIndex = mTrav->getFirst(); }

	void next() { mIndex = mTrav->getNext(mIndex); }

	void dec()
	{
		if (mIndex >= 0) {
			mIndex--;
		}
	}

	bool isDone()
	{
		if (mTrav->isDone(mIndex)) {
			return true;
		}

		if (!mTrav->getCreature(mIndex)) {
			return true;
		}

		return false;
	}

	int mIndex;            // _00
	Traversable* mTrav;    // _04
};

#define CI_LOOP(iter) for (iter.first(); !iter.isDone(); iter.next())

#endif
