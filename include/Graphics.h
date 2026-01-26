#ifndef _GRAPHICS_H
#define _GRAPHICS_H

#include "Dolphin/mtx.h"
#include "Joint.h"
#include "Light.h"
#include "Shape.h"
#include "types.h"

struct BaseShape;
struct CachedShape;
struct Camera;
struct Colour;
struct Font;
struct Light;
struct LightCamera;
struct Material;
struct MaterialHandler;
struct Matrix4f;
struct Mesh;
struct OSContext;
struct Plane;
struct PVWLightingInfo;
struct RectArea;
struct Shape;
struct ShapeDynMaterials;
struct Texture;
struct Vector2f;
struct Vector3f;

struct GColor {
	GColor()
	{
		mMatColor.r = 255;
		mMatColor.g = 255;
		mMatColor.b = 255;
		mMatColor.a = 255;
		mAmbColor.r = 255;
		mAmbColor.g = 255;
		mAmbColor.b = 255;
		mAmbColor.a = 255;
	}

	GXColor mMatColor; // _00
	GXColor mAmbColor; // _04
};

extern GColor GColors[];

/**
 * @brief TODO
 *
 * @note Size: 0x3B8.
 */
struct Graphics {
	Graphics(bool);

	void videoReset();
	void setVerticalFilter(u8*);
	void getVerticalFilter(u8*);
	u8* getDListPtr();
	u32 getDListRemainSize();
	u32 compileMaterial(Material*);
	void useDList(u32);
	void initRender(int, int);
	void resetCopyFilter();
	void setAmbient();
	bool setLighting(bool, PVWLightingInfo*);
	void setLight(Light*, int);
	void clearBuffer(int, bool);
	void setPerspective(Mtx, f32, f32, f32, f32, f32);
	void setOrthogonal(Mtx, immut RectArea&);
	void setLightcam(LightCamera* cam) { mLightCam = cam; }
	void setViewport(immut RectArea&);
	void setViewportOffset(immut RectArea&);
	void setScissor(immut RectArea&);
	void setBlendMode(u8, u8, u8);
	int setCullFront(int);
	u8 setDepth(bool);
	int setCBlending(int);
	void setPointSize(f32) { }
	f32 setLineWidth(f32);
	void setCamera(Camera*);
	void calcViewMatrix(immut Matrix4f& modelMtx, Matrix4f& viewMtx);
	void useMatrix(immut Matrix4f&, int);
	void setClippingPlane(bool, Plane*) { }
	void initMesh(Shape*);
	void drawSingleMatpoly(Shape*, Joint::MatPoly*);
	void drawMeshes(Camera&, Shape*);
	bool initParticle(bool);
	void drawParticle(Camera&, immut Vector3f&, f32);
	void drawRotParticle(Camera&, immut Vector3f&, u16, f32);
	void drawCamParticle(Camera&, immut Vector3f&, immut Vector2f&, immut Vector2f&, immut Vector2f&);
	void drawLine(immut Vector3f&, immut Vector3f&);
	void drawPoints(immut Vector3f*, int);
	void drawOneTri(immut Vector3f* vertices, immut Vector3f* normals, immut Vector2f* texCoords, int count);
	void setColour(immut Colour&, bool);
	void setAuxColour(immut Colour&);
	void setPrimEnv(immut Colour*, immut Colour*);
	void setClearColour(immut Colour&);
	void setFog(bool);
	void setFog(bool, immut Colour&, f32, f32, f32);
	void setMaterial(Material*, bool);
	void useMaterial(Material* mat) { mCurrentMaterialHandler->setMaterial(mat); }
	void useTexture(Texture*, int);
	void drawRectangle(immut RectArea&, immut RectArea&, immut Vector3f*);
	void fillRectangle(immut RectArea&);
	void blatRectangle(immut RectArea&);
	void lineRectangle(immut RectArea&);
	void testRectangle(immut RectArea&);
	void initProjTex(bool enableProj, LightCamera* projCamera);
	void initReflectTex(bool);
	void texturePrintf(Font* font, int x, int y, immut char* format, ...);
	void perspPrintf(Font*, immut Vector3f&, int, int, immut char*, ...);
	void useMatrixQuick(immut Matrix4f&, int);
	void drawOutline(Camera&, Shape*) { }
	void drawOneStrip(immut Vector3f*, immut Vector3f*, immut Vector2f*, int) { }

	void setupRender();
	void beginRender();
	void doneRender();
	void waitRetrace();
	void waitPostRetrace();
	static void retraceProc(u32);
	void setMatMatrices(Material*, int);
	void setupVtxDesc(Shape*, Material*, Mesh*);

	// unused/inlined:
	void GXReInit();
	void showCrash(u16, OSContext*);
	void showError(immut char*, immut char*, int);
	void directDrawChar(int, int, int);
	void directDrawChar(RectArea&, RectArea&);
	void directPrint(int, int, immut char*, ...);
	void directErase(RectArea&, bool);

	void resetMatrixBuffer();
	Matrix4f* getMatrices(int);
	void resetCacheBuffer();
	void cacheShape(BaseShape*, ShapeDynMaterials*);
	void flushCachedShapes();
	void drawCylinder(immut Vector3f&, immut Vector3f&, f32, immut Matrix4f&);
	void drawSphere(immut Vector3f&, f32, immut Matrix4f&);
	int calcLighting(f32);

	// unused/inlined:
	void drawCircle(immut Vector3f&, f32, immut Matrix4f&);
	int calcSphereLighting(immut Vector3f&, f32);
	int calcBoxLighting(immut BoundBox&);

	void addLight(Light* light)
	{
		light->initCore("");
		gsys->mLightCount++;
		mLight.add(light);
	}

	void setMatHandler(MaterialHandler* handler)
	{
		if (mCurrentMaterialHandler && !handler) {
			mCurrentMaterialHandler->setMaterial(nullptr);
		}

		mCurrentMaterialHandler       = (handler) ? handler : mDefaultMaterialHandler;
		mCurrentMaterialHandler->mGfx = this;
	}

	static Graphics* gfx;

	// _3B4 = VTBL
	int mRenderMode;                          // _00, 0 = localNtsc480IntDf, 1 = progressiveRenderMode
	u32 mMatRenderMask;                       // _04, see MaterialFlags enum.
	immut Matrix4f* mLastModelMatrix;         // _08
	immut Matrix4f* mActiveMatrix;            // _0C
	Light mLight;                             // _10
	Camera* mCamera;                          // _2E4
	Texture* mActiveTexture[8];               // _2E8
	u32 _308;                                 // _308
	int mScreenWidth;                         // _30C
	int mScreenHeight;                        // _310
	Colour mBufferClearColour;                // _314
	Colour mPrimaryColour;                    // _318
	Colour mAuxiliaryColour;                  // _31C
	bool mIsLightingEnabled;                  // _320
	bool mIsDepthEnabled;                     // _321
	BOOL mHasTexGen;                          // _324
	u32 mMtxDepIdx;                           // _328
	u32 mBlendMode;                           // _32C, 0 is normal, 1 is additive, 2 is subtractive, 3 is alpha additive, 4 is no blend
	int mCullMode;                            // _330
	u32 mCullFlip;                            // _334
	LightCamera* mLightCam;                   // _338
	Vector3f mSunPosition;                    // _33C
	u32 _348;                                 // _348
	MaterialHandler* mDefaultMaterialHandler; // _34C
	MaterialHandler* mCurrentMaterialHandler; // _350
	Material* mCurrentMaterial;               // _354
	f32 mFogStart;                            // _358
	f32 mFogEnd;                              // _35C
	f32 mFogDensity;                          // _360
	Colour mFogColour;                        // _364
	Colour mAmbientColour;                    // _368
	Colour _36C;                              // _36C
	f32 mLightDistance;                       // _370
	f32 mLightIntensity;                      // _374
	u32 mActiveLightMask;                     // _378
	f32 mLineWidth;                           // _37C
	Vector3f* mCustomScale;                   // _380
	Matrix4f* mMatrixBuffer;                  // _384
	int mMaxMatrixCount;                      // _388
	int mNextFreeMatrixIdx;                   // _38C
	CachedShape mShapeCache;                  // _390
	CachedShape* mCachedShapes;               // _3A8
	int mCachedShapeMax;                      // _3AC
	int mCachedShapeCount;                    // _3B0
	GXFifoObj* mGpFifo;                       // _3B8
	u8* mDefaultFifoBuffer;                   // _3BC
	u8* mTempFifoBuffer;                      // _3C0
	u8* mDefaultDLBuffer;                     // _3C4
	u8* mDisplayListPtr;                      // _3C8
	int mDisplayListSize;                     // _3CC
	u32 _3D0;                                 // _3D0
	bool mIsEnvMapActive;                     // _3D4
	int mCurrentMatrixId;                     // _3D8
	int mTexMtxBaseID;                        // _3DC
	Mtx mProjectionTextureMatrix;             // _3E0, Mtx (3x4) not Matrix4f (4x4)
	GXLightObj mGXLights[8];                  // _410
	u8* mDisplayBuffer;                       // _610
	vu32 mPostRetraceWaitCount;               // _614
	int mRetraceCount;                        // _618
	int mSystemFrameRate;                     // _61C
	VIRetraceCallback mRetraceCallback;       // _620
	OSMessageQueue mPostRetraceMsgQueue;      // _624
	OSMessage mPostRetraceMsgBuffer;          // _644
};

/**
 * @brief Stripped, only has one unused/inlined function in map
 */
struct GfxInfo {
	// unused/inlined:
	void createCollData(immut Vector3f*, f32);

	BoundBox mBox;           // _00
	u8 _18[0x4];             // _18, unknown
	s16* _1C;                // _1C, this is probably actually a pointer to a struct
	CollTriInfo* mTriangles; // _20
};

#endif
