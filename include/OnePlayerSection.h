#ifndef _ONEPLAYERSECTION_H
#define _ONEPLAYERSECTION_H

#include "types.h"
#include "Section.h"

/*
 * @brief TODO
 */
struct FlowController {
	void readMapList(char*);

	// unused/inlined:
	void setStage(char*);

	// TODO: members
};

/**
 * @brief TODO
 */
struct StageInfo : public CoreNode {
	virtual void read(RandomAccessStream&); // _0C

	void parseGenerators(CmdStream*);

	// unused/inlined:
	void write(RandomAccessStream&);

	// _00     = VTBL
	// _00-_14 = CoreNode
	// TODO: members
};

/**
 * @brief TODO
 */
struct OnePlayerSection : public Section {
	virtual void init(); // _30

	// _00     = VTBL
	// _00-_20 = Section?
	// TODO: members
};

#endif