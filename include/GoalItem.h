#ifndef _GOALITEM_H
#define _GOALITEM_H

#include "types.h"
#include "Suckable.h"
#include "zen/CallBack.h"
#include "zen/particle.h"
#include "CreatureProp.h"
#include "SimpleAI.h"

namespace zen {
struct particleGenerator;
struct particleMdl;
} // namespace zen

struct ItemShapeObject;
struct Piki;
struct SimpleAI;

/**
 * @brief TODO
 *
 * @note Size: 0x58.
 */
struct GoalItemProp : public CreatureProp {
	inline GoalItemProp()
	{
		mCreatureProps.mFriction.mValue     = 0.1f;
		mCreatureProps.mBounceFactor.mValue = 0.8f;
	}

	// _54     = VTBL
	// _00-_58 = CreatureProp
};

/**
 * @brief TODO
 *
 * @note Size: 0x494.
 */
struct GoalItem : public Suckable, public zen::CallBack2<zen::particleGenerator*, zen::particleMdl*> {
	GoalItem(CreatureProp*, ItemShapeObject*, ItemShapeObject*, ItemShapeObject*, SimpleAI*);

	virtual bool insideSafeArea(Vector3f&);                          // _10
	virtual void startAI(int);                                       // _34
	virtual f32 getiMass();                                          // _38
	virtual f32 getSize();                                           // _3C
	virtual bool isVisible();                                        // _74
	virtual bool isAlive();                                          // _88
	virtual bool needShadow();                                       // _90
	virtual bool ignoreAtari(Creature*);                             // _98
	virtual void update();                                           // _E0
	virtual void refresh(Graphics&);                                 // _EC
	virtual void playEffect(int);                                    // _12C
	virtual Vector3f getGoalPos();                                   // _15C
	virtual f32 getGoalPosRadius();                                  // _160
	virtual Vector3f getSuckPos();                                   // _164
	virtual void suckMe(Pellet*);                                    // _168
	virtual s16 getRouteIndex();                                     // _170
	virtual bool invoke(zen::particleGenerator*, zen::particleMdl*); // _180

	void setFlowEffect(bool);
	void setSpotActive(bool);
	void setFlightLight(bool);
	void enterGoal(Piki*);
	void exitPikis(int);
	void exitPiki();
	void setColorType(int);
	void startTakeoff();
	void startLand();
	void startConeShrink();
	void startConeEmit();
	void startBoot();
	void emitPiki();

	// unused/inlined:
	void updateConeShrink();
	void updateConeEmit();

	static u8 demoHideFlag;

	// _00       = VTBL
	// _00-_3C8  = Suckable
	// _3C8-_3CC = zen::CallBack2
	u8 _3CC[0x428 - 0x3CC]; // _3CC, unknown
	u16 _428;               // _428, maybe color?
	u8 _42A[0x494 - 0x42A]; // _42A, unknown
};

/**
 * @brief TODO
 */
struct GoalAI : public SimpleAI {

	/**
	 * @brief TODO
	 */
	struct NotFinished : public SAICondition {

		virtual bool satisfy(AICreature*); // _10

		// _00     = VTBL
		// _00-_14 = SAICondition
		// TODO: members
	};

	/**
	 * @brief TODO
	 */
	struct BootDone : public SAIAction {

		virtual void act(AICreature*); // _08

		// _00     = VTBL
		// _00-_14 = SAIAction
		// TODO: members
	};

	/**
	 * @brief TODO
	 */
	struct BootEmit : public SAIAction {

		virtual void act(AICreature*); // _08

		// _00     = VTBL
		// _00-_14 = SAIAction
		// TODO: members
	};

	/**
	 * @brief TODO
	 */
	struct BootInit : public SAIAction {

		virtual void act(AICreature*); // _08

		// _00     = VTBL
		// _00-_14 = SAIAction
		// TODO: members
	};

	/**
	 * @brief TODO
	 */
	struct Effect : public SAIAction {

		virtual void act(AICreature*); // _08

		// _00     = VTBL
		// _00-_14 = SAIAction
		// TODO: members
	};

	/**
	 * @brief TODO
	 */
	struct EmitPiki : public SAIAction {

		virtual void act(AICreature*); // _08

		// _00     = VTBL
		// _00-_14 = SAIAction
		// TODO: members
	};

	/**
	 * @brief TODO
	 */
	struct EmitWait : public SAIAction {

		virtual void act(AICreature*); // _08

		// _00     = VTBL
		// _00-_14 = SAIAction
		// TODO: members
	};

	/**
	 * @brief TODO
	 */
	struct WaitInit : public SAIAction {

		virtual void act(AICreature*); // _08

		// _00     = VTBL
		// _00-_14 = SAIAction
		// TODO: members
	};

	GoalAI();

	// _00     = VTBL
	// _00-_?? = SimpleAI
	// TODO: members
};

#endif
