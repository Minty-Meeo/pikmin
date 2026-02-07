#include "App.h"
#include "Dolphin/os.h"
#include "sysNew.h"
#include "system.h"
#include <stdlib.h>

/**
 * @todo: Documentation
 */
TERNARY_BUILD_MATCHING(void, int) main(int argc, char* argv[])
{
	srand(OSGetTick());
	gsys->Initialise();
	nodeMgr = new NodeMgr();
	gsys->run(new PlugPikiApp());

	OSErrorLine(29, "End of demo");
}
