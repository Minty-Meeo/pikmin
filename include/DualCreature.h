#ifndef _DUALCREATURE_H
#define _DUALCREATURE_H

#include "Collision.h"
#include "DynCreature.h"
#include "PaniAnimator.h"
#include "types.h"

struct ItemShapeObject;
struct MapMgr;

/**
 * @brief TODO
 *
 * @note Size: 0x440.
 */
struct DualCreature : public DynCreature {
public:
	DualCreature();

	virtual void update();                           // _E0
	virtual void refresh(Graphics&);                 // _EC
	virtual void doKill();                           // _10C
	virtual bool onGround();                         // _114
	virtual void doRender(Graphics&, Matrix4f&) = 0; // _118
	virtual void doCreateColls(Graphics&)       = 0; // _11C

	bool isFrontFace();
	f32 getY();
	void useRealDynamics();
	void useSimpleDynamics();
	void rotateY(f32);

	// unused/inlined:
	void createCollisions(Graphics&);

	void setDynamicsSimpleFixed(bool isSimpleFixed) { mIsDynamicsSimpleFixed = isSimpleFixed; }

	// DLL inlines todo:
	bool isRealDynamics() { return mIsRealDynamics; }
	void invalidateCollisions() { mIsCollisionInitialised = false; }

protected:
	// _00      = VTBL
	// _00-_43C = DynCreature
	bool mIsRealDynamics;         // _43C
	bool mIsCollisionInitialised; // _43D
	bool _43E;                    // _43E
	bool mIsDynamicsSimpleFixed;  // _43F
};

#endif
