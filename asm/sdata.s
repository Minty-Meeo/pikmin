.include "macros.inc"
.section .sdata, "wa"  # 0x803DCD20 - 0x803E7820
.global JAC_DAC_RATE
JAC_DAC_RATE:
	.incbin "baserom.dol", 0x2E6640, 0x4
.global JAC_SUBFRAMES
JAC_SUBFRAMES:
	.incbin "baserom.dol", 0x2E6644, 0x4
.global JAC_FRAMESAMPLES
JAC_FRAMESAMPLES:
	.incbin "baserom.dol", 0x2E6648, 0x4
.global DAC_SIZE
DAC_SIZE:
	.incbin "baserom.dol", 0x2E664C, 0x4
.global DSP_MIXERLEVEL
DSP_MIXERLEVEL:
	.incbin "baserom.dol", 0x2E6650, 0x8
.global MAX_MIXERLEVEL
MAX_MIXERLEVEL:
	.incbin "baserom.dol", 0x2E6658, 0x4
.global JAC_SYSTEM_OUTPUT_MODE
JAC_SYSTEM_OUTPUT_MODE:
	.incbin "baserom.dol", 0x2E665C, 0x4
.global COMP_BLOCKSAMPLES$81
COMP_BLOCKSAMPLES$81:
	.incbin "baserom.dol", 0x2E6660, 0x8
.global COMP_BLOCKBYTES$82
COMP_BLOCKBYTES$82:
	.incbin "baserom.dol", 0x2E6668, 0x8
.global v0
v0:
	.incbin "baserom.dol", 0x2E6670, 0x4
.global v1
v1:
	.incbin "baserom.dol", 0x2E6674, 0x4
.global ARCALL
ARCALL:
	.incbin "baserom.dol", 0x2E6678, 0x4
.global first
first:
	.incbin "baserom.dol", 0x2E667C, 0x4
.global osc_table
osc_table:
	.incbin "baserom.dol", 0x2E6680, 0x8
.global OSC_REL
OSC_REL:
	.incbin "baserom.dol", 0x2E6688, 0x8
.global game_bgm_vol
game_bgm_vol:
	.incbin "baserom.dol", 0x2E6690, 0x1
.global game_se_vol
game_se_vol:
	.incbin "baserom.dol", 0x2E6691, 0x3
.global current_process
current_process:
	.incbin "baserom.dol", 0x2E6694, 0x4
.global buffer
buffer:
	.incbin "baserom.dol", 0x2E6698, 0x8
.global buffer_mus
buffer_mus:
	.incbin "baserom.dol", 0x2E66A0, 0x8
.global fadeouttime
fadeouttime:
	.incbin "baserom.dol", 0x2E66A8, 0x4
.global game_bgm_volume
game_bgm_volume:
	.incbin "baserom.dol", 0x2E66AC, 0x4
.global bgm0_set
bgm0_set:
	.incbin "baserom.dol", 0x2E66B0, 0x8
.global bgm1_set
bgm1_set:
	.incbin "baserom.dol", 0x2E66B8, 0x8
.global bgm2_set
bgm2_set:
	.incbin "baserom.dol", 0x2E66C0, 0x8
.global bgm3_set
bgm3_set:
	.incbin "baserom.dol", 0x2E66C8, 0x8
.global bgm4_set
bgm4_set:
	.incbin "baserom.dol", 0x2E66D0, 0x8
.global bgm5_set
bgm5_set:
	.incbin "baserom.dol", 0x2E66D8, 0x8
.global bgm0_volset
bgm0_volset:
	.incbin "baserom.dol", 0x2E66E0, 0x8
.global bgm1_volset
bgm1_volset:
	.incbin "baserom.dol", 0x2E66E8, 0x8
.global bgm2_volset
bgm2_volset:
	.incbin "baserom.dol", 0x2E66F0, 0x8
.global bgm3_volset
bgm3_volset:
	.incbin "baserom.dol", 0x2E66F8, 0x8
.global bgm4_volset
bgm4_volset:
	.incbin "baserom.dol", 0x2E6700, 0x8
.global bgm5_volset
bgm5_volset:
	.incbin "baserom.dol", 0x2E6708, 0x8
.global cresult_volset
cresult_volset:
	.incbin "baserom.dol", 0x2E6710, 0x8
.global last_bgm_level
last_bgm_level:
	.incbin "baserom.dol", 0x2E6718, 0x8
.global current_scene
current_scene:
	.incbin "baserom.dol", 0x2E6720, 0x4
.global current_stage
current_stage:
	.incbin "baserom.dol", 0x2E6724, 0x4
.global current_prepare
current_prepare:
	.incbin "baserom.dol", 0x2E6728, 0x4
.global stream_level
stream_level:
	.incbin "baserom.dol", 0x2E672C, 0x2
.global stream_se_level
stream_se_level:
	.incbin "baserom.dol", 0x2E672E, 0x2
.global current_demo_no
current_demo_no:
	.incbin "baserom.dol", 0x2E6730, 0x4
.global demo_seq_active
demo_seq_active:
	.incbin "baserom.dol", 0x2E6734, 0x4
.global demo_mml_active
demo_mml_active:
	.incbin "baserom.dol", 0x2E6738, 0x4
.global demo1
demo1:
	.incbin "baserom.dol", 0x2E673C, 0x8
.global demo2
demo2:
	.incbin "baserom.dol", 0x2E6744, 0x4
.global demo3
demo3:
	.incbin "baserom.dol", 0x2E6748, 0x8
.global demo12
demo12:
	.incbin "baserom.dol", 0x2E6750, 0x8
.global demo27
demo27:
	.incbin "baserom.dol", 0x2E6758, 0x8
.global demo102
demo102:
	.incbin "baserom.dol", 0x2E6760, 0x8
.global first_1
first_1:
	.incbin "baserom.dol", 0x2E6768, 0x8
.global copy
copy:
	.incbin "baserom.dol", 0x2E6770, 0x8
.global buf
buf:
	.incbin "baserom.dol", 0x2E6778, 0x8
.global gop_subframe
gop_subframe:
	.incbin "baserom.dol", 0x2E6780, 0x4
.global playback_first_wait
playback_first_wait:
	.incbin "baserom.dol", 0x2E6784, 0x4
.global hvqm_first
hvqm_first:
	.incbin "baserom.dol", 0x2E6788, 0x8
.global lbl_803DCE70
lbl_803DCE70:
	.incbin "baserom.dol", 0x2E6790, 0x38
.global __RTTI__7BaseApp
__RTTI__7BaseApp:
  .4byte 0x803dce78
  .4byte 0x80227314
  .4byte 0x53747265
  .4byte 0x616d0000
  .4byte 0x803dceb0
  .4byte 0
  .4byte 0x53747265
  .4byte 0x616d0000
  .4byte 0x803dcec0
  .4byte 0
  .4byte 0x80227430
  .4byte 0x80227444
.global __RTTI__19BufferedInputStream
__RTTI__19BufferedInputStream:
  .4byte 0x8022741c
  .4byte 0x80227450
.global lbl_803DCEE0
lbl_803DCEE0:
	.incbin "baserom.dol", 0x2E6800, 0x4
.global lbl_803DCEE4
lbl_803DCEE4:
	.incbin "baserom.dol", 0x2E6804, 0x4
.global lbl_803DCEE8
lbl_803DCEE8:
	.incbin "baserom.dol", 0x2E6808, 0x4
.global lbl_803DCEEC
lbl_803DCEEC:
	.incbin "baserom.dol", 0x2E680C, 0x4
.global lbl_803DCEF0
lbl_803DCEF0:
	.incbin "baserom.dol", 0x2E6810, 0x4
.global lbl_803DCEF4
lbl_803DCEF4:
	.incbin "baserom.dol", 0x2E6814, 0x4
.global lbl_803DCEF8
lbl_803DCEF8:
	.incbin "baserom.dol", 0x2E6818, 0x4
.global lbl_803DCEFC
lbl_803DCEFC:
	.incbin "baserom.dol", 0x2E681C, 0x4
.global lbl_803DCF00
lbl_803DCF00:
	.incbin "baserom.dol", 0x2E6820, 0x4
.global lbl_803DCF04
lbl_803DCF04:
	.incbin "baserom.dol", 0x2E6824, 0x4
.global lbl_803DCF08
lbl_803DCF08:
	.incbin "baserom.dol", 0x2E6828, 0x4
.global lbl_803DCF0C
lbl_803DCF0C:
	.incbin "baserom.dol", 0x2E682C, 0x4
.global lbl_803DCF10
lbl_803DCF10:
	.incbin "baserom.dol", 0x2E6830, 0x14
.global lbl_803DCF24
lbl_803DCF24:
	.incbin "baserom.dol", 0x2E6844, 0xC
.global lbl_803DCF30
lbl_803DCF30:
	.incbin "baserom.dol", 0x2E6850, 0x8
.global lbl_803DCF38
lbl_803DCF38:
	.incbin "baserom.dol", 0x2E6858, 0x4
.global lbl_803DCF3C
lbl_803DCF3C:
	.incbin "baserom.dol", 0x2E685C, 0x4
.global lbl_803DCF40
lbl_803DCF40:
	.incbin "baserom.dol", 0x2E6860, 0x4
.global lbl_803DCF44
lbl_803DCF44:
	.incbin "baserom.dol", 0x2E6864, 0x4
.global lbl_803DCF48
lbl_803DCF48:
	.incbin "baserom.dol", 0x2E6868, 0x4
.global lbl_803DCF4C
lbl_803DCF4C:
	.incbin "baserom.dol", 0x2E686C, 0x4
.global lbl_803DCF50
lbl_803DCF50:
	.incbin "baserom.dol", 0x2E6870, 0x4
.global lbl_803DCF54
lbl_803DCF54:
	.incbin "baserom.dol", 0x2E6874, 0x4
.global lbl_803DCF58
lbl_803DCF58:
	.incbin "baserom.dol", 0x2E6878, 0x4
.global lbl_803DCF5C
lbl_803DCF5C:
	.incbin "baserom.dol", 0x2E687C, 0x4
.global lbl_803DCF60
lbl_803DCF60:
	.incbin "baserom.dol", 0x2E6880, 0x4
.global lbl_803DCF64
lbl_803DCF64:
	.incbin "baserom.dol", 0x2E6884, 0x4
.global lbl_803DCF68
lbl_803DCF68:
	.incbin "baserom.dol", 0x2E6888, 0x4
.global lbl_803DCF6C
lbl_803DCF6C:
	.incbin "baserom.dol", 0x2E688C, 0x4
.global __RTTI__9GfxObject
__RTTI__9GfxObject:
  .4byte 0x802280b4
  .4byte 0
  .4byte 0x54657874
  .4byte 0x75726500
.global __RTTI__7Texture
__RTTI__7Texture:
  .4byte 0x803dcf78
  .4byte 0x802280c0
.global __RTTI__12CacheTexture
__RTTI__12CacheTexture:
  .4byte 0x802280a4
  .4byte 0x802280cc
  .4byte 0x54657841
  .4byte 0x74747200
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803dcf98
  .4byte 0
  .4byte 0x802280f4
  .4byte 0x80228100
.global __RTTI__7TexAttr
__RTTI__7TexAttr:
  .4byte 0x803dcf90
  .4byte 0x8022810c
  .4byte 0x54657849
  .4byte 0x6d670000
.global __RTTI__6TexImg
__RTTI__6TexImg:
  .4byte 0x803dcfb8
  .4byte 0x80228130
.global __RTTI__8Graphics
__RTTI__8Graphics:
  .4byte 0x80227550
  .4byte 0
.global __RTTI__15MaterialHandler
__RTTI__15MaterialHandler:
  .4byte 0x80228248
  .4byte 0
.global __RTTI__8Material
__RTTI__8Material:
  .4byte 0x80228268
  .4byte 0x80228274
.global lbl_803DCFE0
lbl_803DCFE0:
	.incbin "baserom.dol", 0x2E6900, 0x4
.global lbl_803DCFE4
lbl_803DCFE4:
	.incbin "baserom.dol", 0x2E6904, 0x4
.global lbl_803DCFE8
lbl_803DCFE8:
	.incbin "baserom.dol", 0x2E6908, 0x4
.global lbl_803DCFEC
lbl_803DCFEC:
	.incbin "baserom.dol", 0x2E690C, 0x4
.global lbl_803DCFF0
lbl_803DCFF0:
	.incbin "baserom.dol", 0x2E6910, 0x4
.global lbl_803DCFF4
lbl_803DCFF4:
	.incbin "baserom.dol", 0x2E6914, 0x4
.global lbl_803DCFF8
lbl_803DCFF8:
	.incbin "baserom.dol", 0x2E6918, 0x4
.global lbl_803DCFFC
lbl_803DCFFC:
	.incbin "baserom.dol", 0x2E691C, 0x4
.global lbl_803DD000
lbl_803DD000:
	.incbin "baserom.dol", 0x2E6920, 0x4
.global lbl_803DD004
lbl_803DD004:
	.incbin "baserom.dol", 0x2E6924, 0x28
.global __RTTI__5Light
__RTTI__5Light:
  .4byte 0x803dd00c
  .4byte 0x802282e0
  .4byte 0
.global lbl_803DD038
lbl_803DD038:
	.incbin "baserom.dol", 0x2E6958, 0x4
.global lbl_803DD03C
lbl_803DD03C:
	.incbin "baserom.dol", 0x2E695C, 0x4
.global lbl_803DD040
lbl_803DD040:
	.incbin "baserom.dol", 0x2E6960, 0x4
.global lbl_803DD044
lbl_803DD044:
	.incbin "baserom.dol", 0x2E6964, 0x4
.global lbl_803DD048
lbl_803DD048:
	.incbin "baserom.dol", 0x2E6968, 0x4
.global lbl_803DD04C
lbl_803DD04C:
	.incbin "baserom.dol", 0x2E696C, 0x4
.global lbl_803DD050
lbl_803DD050:
	.incbin "baserom.dol", 0x2E6970, 0x4
.global lbl_803DD054
lbl_803DD054:
	.incbin "baserom.dol", 0x2E6974, 0x4
.global lbl_803DD058
lbl_803DD058:
	.incbin "baserom.dol", 0x2E6978, 0x18
.global lbl_803DD070
lbl_803DD070:
	.incbin "baserom.dol", 0x2E6990, 0x8
.global lbl_803DD078
lbl_803DD078:
	.incbin "baserom.dol", 0x2E6998, 0x4
.global lbl_803DD07C
lbl_803DD07C:
	.incbin "baserom.dol", 0x2E699C, 0x8
.global lbl_803DD084
lbl_803DD084:
	.incbin "baserom.dol", 0x2E69A4, 0x8
.global lbl_803DD08C
lbl_803DD08C:
	.incbin "baserom.dol", 0x2E69AC, 0x4
.global lbl_803DD090
lbl_803DD090:
	.incbin "baserom.dol", 0x2E69B0, 0x4
.global lbl_803DD094
lbl_803DD094:
	.incbin "baserom.dol", 0x2E69B4, 0x8
.global lbl_803DD09C
lbl_803DD09C:
	.incbin "baserom.dol", 0x2E69BC, 0x8
.global lbl_803DD0A4
lbl_803DD0A4:
	.incbin "baserom.dol", 0x2E69C4, 0x8
.global lbl_803DD0AC
lbl_803DD0AC:
	.incbin "baserom.dol", 0x2E69CC, 0x8
.global lbl_803DD0B4
lbl_803DD0B4:
	.incbin "baserom.dol", 0x2E69D4, 0x8
.global lbl_803DD0BC
lbl_803DD0BC:
	.incbin "baserom.dol", 0x2E69DC, 0x8
.global lbl_803DD0C4
lbl_803DD0C4:
	.incbin "baserom.dol", 0x2E69E4, 0x8
.global lbl_803DD0CC
lbl_803DD0CC:
	.incbin "baserom.dol", 0x2E69EC, 0x8
.global lbl_803DD0D4
lbl_803DD0D4:
	.incbin "baserom.dol", 0x2E69F4, 0x8
.global lbl_803DD0DC
lbl_803DD0DC:
	.incbin "baserom.dol", 0x2E69FC, 0x8
.global lbl_803DD0E4
lbl_803DD0E4:
	.incbin "baserom.dol", 0x2E6A04, 0x8
.global lbl_803DD0EC
lbl_803DD0EC:
	.incbin "baserom.dol", 0x2E6A0C, 0x8
.global lbl_803DD0F4
lbl_803DD0F4:
	.incbin "baserom.dol", 0x2E6A14, 0x8
.global lbl_803DD0FC
lbl_803DD0FC:
	.incbin "baserom.dol", 0x2E6A1C, 0x8
.global lbl_803DD104
lbl_803DD104:
	.incbin "baserom.dol", 0x2E6A24, 0x8
.global lbl_803DD10C
lbl_803DD10C:
	.incbin "baserom.dol", 0x2E6A2C, 0x10
.global __RTTI__10MatobjInfo
__RTTI__10MatobjInfo:
  .4byte 0x80228670
  .4byte 0x80228688
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803dd124
  .4byte 0
  .4byte lbl_80228350
  .4byte 0x802286c0
.global __RTTI__9BaseShape
__RTTI__9BaseShape:
  .4byte 0x802286b4
  .4byte 0x802286cc
.global __RTTI__22IDelegate2$$0P5Joint$$4Ul$$1
__RTTI__22IDelegate2$$0P5Joint$$4Ul$$1:
  .4byte 0x80228734
  .4byte 0
.global __RTTI__32Delegate2$$09BaseShape$$4P5Joint$$4Ul$$1
__RTTI__32Delegate2$$09BaseShape$$4P5Joint$$4Ul$$1:
  .4byte 0x80228704
  .4byte 0x80228758
.global __RTTI__10LightFlare
__RTTI__10LightFlare:
  .4byte 0x8022877c
  .4byte 0x80228788
.global __RTTI__10LightGroup
__RTTI__10LightGroup:
  .4byte 0x802287ac
  .4byte 0x802287b8
.global __RTTI__11ObjCollInfo
__RTTI__11ObjCollInfo:
  .4byte 0x802287dc
  .4byte 0x802287e8
  .4byte 0x416e696d
  .4byte 0x44636b00
.global __RTTI__8AnimData
__RTTI__8AnimData:
  .4byte 0x8022880c
  .4byte 0x80228818
.global __RTTI__7AnimDck
__RTTI__7AnimDck:
  .4byte 0x803dd16c
  .4byte 0x8022882c
  .4byte 0x416e696d
  .4byte 0x44636100
.global __RTTI__7AnimDca
__RTTI__7AnimDca:
  .4byte 0x803dd184
  .4byte 0x80228868
.global __RTTI__11AnimContext
__RTTI__11AnimContext:
  .4byte 0x802288c4
  .4byte 0
.global __RTTI__Q25Joint7MatPoly
__RTTI__Q25Joint7MatPoly:
  .4byte 0x802288dc
  .4byte 0x802288ec
  .4byte 0x4a6f696e
  .4byte 0x74000000
.global __RTTI__5Joint
__RTTI__5Joint:
  .4byte 0x803dd1a4
  .4byte 0x80228910
  .4byte 0x4d657368
  .4byte 0
.global __RTTI__4Mesh
__RTTI__4Mesh:
  .4byte 0x803dd1b4
  .4byte 0x80228934
.global __RTTI__8FaceNode
__RTTI__8FaceNode:
  .4byte 0x80228958
  .4byte 0x80228964
.global __RTTI__8DispList
__RTTI__8DispList:
  .4byte 0x802289a4
  .4byte 0x802289b0
  .4byte 0
.global lbl_803DD1D8
lbl_803DD1D8:
	.incbin "baserom.dol", 0x2E6AF8, 0x8
.global lbl_803DD1E0
lbl_803DD1E0:
	.incbin "baserom.dol", 0x2E6B00, 0x4
.global lbl_803DD1E4
lbl_803DD1E4:
	.incbin "baserom.dol", 0x2E6B04, 0x4
.global lbl_803DD1E8
lbl_803DD1E8:
	.incbin "baserom.dol", 0x2E6B08, 0x8
.global lbl_803DD1F0
lbl_803DD1F0:
	.incbin "baserom.dol", 0x2E6B10, 0x8
.global lbl_803DD1F8
lbl_803DD1F8:
	.incbin "baserom.dol", 0x2E6B18, 0x4
.global lbl_803DD1FC
lbl_803DD1FC:
	.incbin "baserom.dol", 0x2E6B1C, 0x8
.global lbl_803DD204
lbl_803DD204:
	.incbin "baserom.dol", 0x2E6B24, 0x4
.global lbl_803DD208
lbl_803DD208:
	.incbin "baserom.dol", 0x2E6B28, 0x8
.global lbl_803DD210
lbl_803DD210:
	.incbin "baserom.dol", 0x2E6B30, 0x8
.global lbl_803DD218
lbl_803DD218:
	.incbin "baserom.dol", 0x2E6B38, 0x8
.global lbl_803DD220
lbl_803DD220:
	.incbin "baserom.dol", 0x2E6B40, 0x4
.global lbl_803DD224
lbl_803DD224:
	.incbin "baserom.dol", 0x2E6B44, 0x4
.global lbl_803DD228
lbl_803DD228:
	.incbin "baserom.dol", 0x2E6B48, 0x4
.global lbl_803DD22C
lbl_803DD22C:
	.incbin "baserom.dol", 0x2E6B4C, 0x4
.global lbl_803DD230
lbl_803DD230:
	.incbin "baserom.dol", 0x2E6B50, 0x8
.global lbl_803DD238
lbl_803DD238:
	.incbin "baserom.dol", 0x2E6B58, 0x8
.global lbl_803DD240
lbl_803DD240:
	.incbin "baserom.dol", 0x2E6B60, 0x4
.global lbl_803DD244
lbl_803DD244:
	.incbin "baserom.dol", 0x2E6B64, 0x4
.global lbl_803DD248
lbl_803DD248:
	.incbin "baserom.dol", 0x2E6B68, 0x8
.global lbl_803DD250
lbl_803DD250:
	.incbin "baserom.dol", 0x2E6B70, 0x8
.global lbl_803DD258
lbl_803DD258:
	.incbin "baserom.dol", 0x2E6B78, 0x4
.global lbl_803DD25C
lbl_803DD25C:
	.incbin "baserom.dol", 0x2E6B7C, 0x4
.global lbl_803DD260
lbl_803DD260:
	.incbin "baserom.dol", 0x2E6B80, 0x4
.global lbl_803DD264
lbl_803DD264:
	.incbin "baserom.dol", 0x2E6B84, 0x8
.global lbl_803DD26C
lbl_803DD26C:
	.incbin "baserom.dol", 0x2E6B8C, 0x4
.global lbl_803DD270
lbl_803DD270:
	.incbin "baserom.dol", 0x2E6B90, 0x4
.global lbl_803DD274
lbl_803DD274:
	.incbin "baserom.dol", 0x2E6B94, 0x8
.global lbl_803DD27C
lbl_803DD27C:
	.incbin "baserom.dol", 0x2E6B9C, 0x8
.global lbl_803DD284
lbl_803DD284:
	.incbin "baserom.dol", 0x2E6BA4, 0x4
.global lbl_803DD288
lbl_803DD288:
	.incbin "baserom.dol", 0x2E6BA8, 0x4
.global lbl_803DD28C
lbl_803DD28C:
	.incbin "baserom.dol", 0x2E6BAC, 0x4
.global lbl_803DD290
lbl_803DD290:
	.incbin "baserom.dol", 0x2E6BB0, 0x4
.global lbl_803DD294
lbl_803DD294:
	.incbin "baserom.dol", 0x2E6BB4, 0x4
.global lbl_803DD298
lbl_803DD298:
	.incbin "baserom.dol", 0x2E6BB8, 0x4
.global lbl_803DD29C
lbl_803DD29C:
	.incbin "baserom.dol", 0x2E6BBC, 0x8
.global lbl_803DD2A4
lbl_803DD2A4:
	.incbin "baserom.dol", 0x2E6BC4, 0x8
.global lbl_803DD2AC
lbl_803DD2AC:
	.incbin "baserom.dol", 0x2E6BCC, 0x8
.global lbl_803DD2B4
lbl_803DD2B4:
	.incbin "baserom.dol", 0x2E6BD4, 0x20
.global __RTTI__8EditNode
__RTTI__8EditNode:
  .4byte 0x80228b08
  .4byte 0x80228b14
.global __RTTI__10RouteGroup
__RTTI__10RouteGroup:
  .4byte 0x80228ae4
  .4byte 0x80228b28
.global __RTTI__9RouteLink
__RTTI__9RouteLink:
  .4byte 0x80228b74
  .4byte 0x80228b80
.global __RTTI__10RoutePoint
__RTTI__10RoutePoint:
  .4byte 0x80228ba4
  .4byte 0x80228bb0
  .4byte 0
.global lbl_803DD2F8
lbl_803DD2F8:
	.incbin "baserom.dol", 0x2E6C18, 0x4
.global lbl_803DD2FC
lbl_803DD2FC:
	.incbin "baserom.dol", 0x2E6C1C, 0x4
.global lbl_803DD300
lbl_803DD300:
	.incbin "baserom.dol", 0x2E6C20, 0x4
.global lbl_803DD304
lbl_803DD304:
	.incbin "baserom.dol", 0x2E6C24, 0x4
.global lbl_803DD308
lbl_803DD308:
	.incbin "baserom.dol", 0x2E6C28, 0x4
.global gs_fTolerance
gs_fTolerance:
	.incbin "baserom.dol", 0x2E6C2C, 0x4
.global lbl_803DD310
lbl_803DD310:
	.incbin "baserom.dol", 0x2E6C30, 0x8
.global lbl_803DD318
lbl_803DD318:
	.incbin "baserom.dol", 0x2E6C38, 0x4
.global lbl_803DD31C
lbl_803DD31C:
	.incbin "baserom.dol", 0x2E6C3C, 0x4
.global lbl_803DD320
lbl_803DD320:
	.incbin "baserom.dol", 0x2E6C40, 0x8
.global lbl_803DD328
lbl_803DD328:
	.incbin "baserom.dol", 0x2E6C48, 0x10
.global __RTTI__10BinobjInfo
__RTTI__10BinobjInfo:
  .4byte 0x80228c34
  .4byte 0x80228c4c
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803dd340
  .4byte 0
  .4byte 0x80228c0c
  .4byte 0x80228c74
.global __RTTI__11LFlareGroup
__RTTI__11LFlareGroup:
  .4byte 0x80228c68
  .4byte 0x80228c80
.global __RTTI__9StdSystem
__RTTI__9StdSystem:
  .4byte 0x80228c00
  .4byte 0
.global __RTTI__10TexobjInfo
__RTTI__10TexobjInfo:
  .4byte 0x80228cd8
  .4byte 0x80228ce4
.global __RTTI__10ShpobjInfo
__RTTI__10ShpobjInfo:
  .4byte 0x80228d00
  .4byte 0x80228d0c
.global __RTTI__10AnmobjInfo
__RTTI__10AnmobjInfo:
  .4byte 0x80228d54
  .4byte 0x80228d60
  .4byte 0x4e6f6465
  .4byte 0
.global lbl_803DD388
lbl_803DD388:
	.incbin "baserom.dol", 0x2E6CA8, 0x30
.global __RTTI__7SRTNode
__RTTI__7SRTNode:
  .4byte 0x803dd390
  .4byte 0x80228db8
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803dd3c0
  .4byte 0
  .4byte 0x80228e6c
  .4byte 0x80228e78
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803dd3d8
  .4byte 0x80228e84
.global __RTTI__10Controller
__RTTI__10Controller:
  .4byte 0x80228e60
  .4byte 0x80228e98
.global lbl_803DD3F0
lbl_803DD3F0:
	.incbin "baserom.dol", 0x2E6D10, 0x4
.global lbl_803DD3F4
lbl_803DD3F4:
	.incbin "baserom.dol", 0x2E6D14, 0x4
.global lbl_803DD3F8
lbl_803DD3F8:
	.incbin "baserom.dol", 0x2E6D18, 0x4
.global lbl_803DD3FC
lbl_803DD3FC:
	.incbin "baserom.dol", 0x2E6D1C, 0x4
.global lbl_803DD400
lbl_803DD400:
	.incbin "baserom.dol", 0x2E6D20, 0x4
.global lbl_803DD404
lbl_803DD404:
	.incbin "baserom.dol", 0x2E6D24, 0x4
.global lbl_803DD408
lbl_803DD408:
	.incbin "baserom.dol", 0x2E6D28, 0x4
.global lbl_803DD40C
lbl_803DD40C:
	.incbin "baserom.dol", 0x2E6D2C, 0x4
.global lbl_803DD410
lbl_803DD410:
	.incbin "baserom.dol", 0x2E6D30, 0x4
.global lbl_803DD414
lbl_803DD414:
	.incbin "baserom.dol", 0x2E6D34, 0x4
.global lbl_803DD418
lbl_803DD418:
	.incbin "baserom.dol", 0x2E6D38, 0x4
.global lbl_803DD41C
lbl_803DD41C:
	.incbin "baserom.dol", 0x2E6D3C, 0x4
.global lbl_803DD420
lbl_803DD420:
	.incbin "baserom.dol", 0x2E6D40, 0x4
.global lbl_803DD424
lbl_803DD424:
	.incbin "baserom.dol", 0x2E6D44, 0x4
.global lbl_803DD428
lbl_803DD428:
	.incbin "baserom.dol", 0x2E6D48, 0x4
.global lbl_803DD42C
lbl_803DD42C:
	.incbin "baserom.dol", 0x2E6D4C, 0x4
.global lbl_803DD430
lbl_803DD430:
	.incbin "baserom.dol", 0x2E6D50, 0x4
.global lbl_803DD434
lbl_803DD434:
	.incbin "baserom.dol", 0x2E6D54, 0x4
.global lbl_803DD438
lbl_803DD438:
	.incbin "baserom.dol", 0x2E6D58, 0x4
.global lbl_803DD43C
lbl_803DD43C:
	.incbin "baserom.dol", 0x2E6D5C, 0x4
.global lbl_803DD440
lbl_803DD440:
	.incbin "baserom.dol", 0x2E6D60, 0x4
.global lbl_803DD444
lbl_803DD444:
	.incbin "baserom.dol", 0x2E6D64, 0x4
.global lbl_803DD448
lbl_803DD448:
	.incbin "baserom.dol", 0x2E6D68, 0x4
.global lbl_803DD44C
lbl_803DD44C:
	.incbin "baserom.dol", 0x2E6D6C, 0x4
.global lbl_803DD450
lbl_803DD450:
	.incbin "baserom.dol", 0x2E6D70, 0x4
.global lbl_803DD454
lbl_803DD454:
	.incbin "baserom.dol", 0x2E6D74, 0x4
.global lbl_803DD458
lbl_803DD458:
	.incbin "baserom.dol", 0x2E6D78, 0x4
.global lbl_803DD45C
lbl_803DD45C:
	.incbin "baserom.dol", 0x2E6D7C, 0x4
.global lbl_803DD460
lbl_803DD460:
	.incbin "baserom.dol", 0x2E6D80, 0x4
.global lbl_803DD464
lbl_803DD464:
	.incbin "baserom.dol", 0x2E6D84, 0x4
.global lbl_803DD468
lbl_803DD468:
	.incbin "baserom.dol", 0x2E6D88, 0x4
.global lbl_803DD46C
lbl_803DD46C:
	.incbin "baserom.dol", 0x2E6D8C, 0x1C
.global __RTTI__13AtxFileStream
__RTTI__13AtxFileStream:
  .4byte 0x80228f00
  .4byte 0x80228f30
  .4byte 0x80228fac
  .4byte 0x80228fb8
  .4byte 0x54657874
  .4byte 0x75726500
.global lbl_803DD4A0
lbl_803DD4A0:
	.incbin "baserom.dol", 0x2E6DC0, 0x4
.global lbl_803DD4A4
lbl_803DD4A4:
	.incbin "baserom.dol", 0x2E6DC4, 0x8
.global lbl_803DD4AC
lbl_803DD4AC:
	.incbin "baserom.dol", 0x2E6DCC, 0x4
.global __RTTI__9GfxObject_1
__RTTI__9GfxObject_1:
  .4byte 0x80229050
  .4byte 0
.global __RTTI__7Texture_1
__RTTI__7Texture_1:
  .4byte 0x803dd498
  .4byte 0x8022905c
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803dd4c0
  .4byte 0
  .4byte 0x53797374
  .4byte 0x656d0000
.global glnWidth
glnWidth:
	.incbin "baserom.dol", 0x2E6DF8, 0x4
.global glnHeight
glnHeight:
	.incbin "baserom.dol", 0x2E6DFC, 0x4
.global lbl_803DD4E0
lbl_803DD4E0:
	.incbin "baserom.dol", 0x2E6E00, 0x4
.global lbl_803DD4E4
lbl_803DD4E4:
	.incbin "baserom.dol", 0x2E6E04, 0x4
.global lbl_803DD4E8
lbl_803DD4E8:
	.incbin "baserom.dol", 0x2E6E08, 0x8
.global lbl_803DD4F0
lbl_803DD4F0:
	.incbin "baserom.dol", 0x2E6E10, 0x8
.global lbl_803DD4F8
lbl_803DD4F8:
	.incbin "baserom.dol", 0x2E6E18, 0x8
.global lbl_803DD500
lbl_803DD500:
	.incbin "baserom.dol", 0x2E6E20, 0x8
.global lbl_803DD508
lbl_803DD508:
	.incbin "baserom.dol", 0x2E6E28, 0x4
.global lbl_803DD50C
lbl_803DD50C:
	.incbin "baserom.dol", 0x2E6E2C, 0x8
.global lbl_803DD514
lbl_803DD514:
	.incbin "baserom.dol", 0x2E6E34, 0x8
.global lbl_803DD51C
lbl_803DD51C:
	.incbin "baserom.dol", 0x2E6E3C, 0x8
.global lbl_803DD524
lbl_803DD524:
	.incbin "baserom.dol", 0x2E6E44, 0x4
.global __RTTI__22IDelegate1$$0R8Graphics$$1
__RTTI__22IDelegate1$$0R8Graphics$$1:
  .4byte 0x802a5390
  .4byte 0
.global __RTTI__29Delegate1$$06System$$4R8Graphics$$1
__RTTI__29Delegate1$$06System$$4R8Graphics$$1:
  .4byte 0x802a5370
  .4byte 0x802a53a8
  .4byte 0x53747265
  .4byte 0x616d0000
  .4byte 0x803dd538
  .4byte 0
.global __RTTI__9LogStream
__RTTI__9LogStream:
  .4byte 0x802a53cc
  .4byte 0x802a53d8
.global lbl_803DD550
lbl_803DD550:
	.incbin "baserom.dol", 0x2E6E70, 0x1C
.global __RTTI__11AddressNode
__RTTI__11AddressNode:
  .4byte 0x802a543c
  .4byte 0x802a5460
.global __RTTI__8DirEntry
__RTTI__8DirEntry:
  .4byte 0x802a5484
  .4byte 0x802a5490
  .4byte 0x802a54dc
  .4byte 0x802a54f0
.global __RTTI__9DVDStream
__RTTI__9DVDStream:
  .4byte 0x802a54d0
  .4byte 0x802a54fc
.global __RTTI__9StdSystem_1
__RTTI__9StdSystem_1:
  .4byte 0x802a55d8
  .4byte 0
.global __RTTI__6System
__RTTI__6System:
  .4byte 0x803dd4d0
  .4byte 0x802a55e4
.global __RTTI__10AramStream
__RTTI__10AramStream:
  .4byte 0x802a5624
  .4byte 0x802a5630
  .4byte 0
.global __RTTI__13ControllerMgr
__RTTI__13ControllerMgr:
  .4byte 0x802a56bc
  .4byte 0
.global sScreenMode
sScreenMode:
	.incbin "baserom.dol", 0x2E6ED0, 0x8
.global sFirstFrame
sFirstFrame:
	.incbin "baserom.dol", 0x2E6ED8, 0x4
.global kDefaultFifoSize
kDefaultFifoSize:
	.incbin "baserom.dol", 0x2E6EDC, 0x4
.global kTempFifoSize
kTempFifoSize:
	.incbin "baserom.dol", 0x2E6EE0, 0x4
.global kDefaultDLSize
kDefaultDLSize:
	.incbin "baserom.dol", 0x2E6EE4, 0x4
.global sendMtxIndx
sendMtxIndx:
	.incbin "baserom.dol", 0x2E6EE8, 0x4
.global sendTxUVIndx
sendTxUVIndx:
	.incbin "baserom.dol", 0x2E6EEC, 0x8
.global lbl_803DD5D4
lbl_803DD5D4:
	.incbin "baserom.dol", 0x2E6EF4, 0x4
.global lbl_803DD5D8
lbl_803DD5D8:
	.incbin "baserom.dol", 0x2E6EF8, 0x4
.global lbl_803DD5DC
lbl_803DD5DC:
	.incbin "baserom.dol", 0x2E6EFC, 0x4
.global lbl_803DD5E0
lbl_803DD5E0:
	.incbin "baserom.dol", 0x2E6F00, 0x4
.global lbl_803DD5E4
lbl_803DD5E4:
	.incbin "baserom.dol", 0x2E6F04, 0x4
.global lbl_803DD5E8
lbl_803DD5E8:
	.incbin "baserom.dol", 0x2E6F08, 0x4
.global lbl_803DD5EC
lbl_803DD5EC:
	.incbin "baserom.dol", 0x2E6F0C, 0x4
.global lbl_803DD5F0
lbl_803DD5F0:
	.incbin "baserom.dol", 0x2E6F10, 0x24
.global __RTTI__9BaseShape_1
__RTTI__9BaseShape_1:
  .4byte 0x802a5d3c
  .4byte 0x802a5d48
.global __RTTI__5Shape
__RTTI__5Shape:
  .4byte 0x803dd5f4
  .4byte 0x802a5d5c
.global __RTTI__8Graphics_1
__RTTI__8Graphics_1:
  .4byte 0x802a5d9c
  .4byte 0
.global __RTTI__11DGXGraphics
__RTTI__11DGXGraphics:
  .4byte 0x802a56f8
  .4byte 0x802a5da8
  .4byte 0
.global lbl_803DD638
lbl_803DD638:
	.incbin "baserom.dol", 0x2E6F58, 0x4
.global lbl_803DD63C
lbl_803DD63C:
	.incbin "baserom.dol", 0x2E6F5C, 0x4
.global lbl_803DD640
lbl_803DD640:
	.incbin "baserom.dol", 0x2E6F60, 0x4
.global lbl_803DD644
lbl_803DD644:
	.incbin "baserom.dol", 0x2E6F64, 0x4
.global lbl_803DD648
lbl_803DD648:
	.incbin "baserom.dol", 0x2E6F68, 0x4
.global lbl_803DD64C
lbl_803DD64C:
	.incbin "baserom.dol", 0x2E6F6C, 0x4
.global lbl_803DD650
lbl_803DD650:
	.incbin "baserom.dol", 0x2E6F70, 0x4
.global lbl_803DD654
lbl_803DD654:
	.incbin "baserom.dol", 0x2E6F74, 0x4
.global lbl_803DD658
lbl_803DD658:
	.incbin "baserom.dol", 0x2E6F78, 0x4
.global lbl_803DD65C
lbl_803DD65C:
	.incbin "baserom.dol", 0x2E6F7C, 0x4
.global lbl_803DD660
lbl_803DD660:
	.incbin "baserom.dol", 0x2E6F80, 0x4
.global lbl_803DD664
lbl_803DD664:
	.incbin "baserom.dol", 0x2E6F84, 0x4
.global lbl_803DD668
lbl_803DD668:
	.incbin "baserom.dol", 0x2E6F88, 0x4
.global lbl_803DD66C
lbl_803DD66C:
	.incbin "baserom.dol", 0x2E6F8C, 0x4
.global lbl_803DD670
lbl_803DD670:
	.incbin "baserom.dol", 0x2E6F90, 0x4
.global lbl_803DD674
lbl_803DD674:
	.incbin "baserom.dol", 0x2E6F94, 0x4
.global lbl_803DD678
lbl_803DD678:
	.incbin "baserom.dol", 0x2E6F98, 0x4
.global lbl_803DD67C
lbl_803DD67C:
	.incbin "baserom.dol", 0x2E6F9C, 0x4
.global lbl_803DD680
lbl_803DD680:
	.incbin "baserom.dol", 0x2E6FA0, 0x4
.global lbl_803DD684
lbl_803DD684:
	.incbin "baserom.dol", 0x2E6FA4, 0x4
.global lbl_803DD688
lbl_803DD688:
	.incbin "baserom.dol", 0x2E6FA8, 0x4
.global lbl_803DD68C
lbl_803DD68C:
	.incbin "baserom.dol", 0x2E6FAC, 0x4
.global lbl_803DD690
lbl_803DD690:
	.incbin "baserom.dol", 0x2E6FB0, 0x4
.global lbl_803DD694
lbl_803DD694:
	.incbin "baserom.dol", 0x2E6FB4, 0x4
.global lbl_803DD698
lbl_803DD698:
	.incbin "baserom.dol", 0x2E6FB8, 0x4
.global lbl_803DD69C
lbl_803DD69C:
	.incbin "baserom.dol", 0x2E6FBC, 0x4
.global lbl_803DD6A0
lbl_803DD6A0:
	.incbin "baserom.dol", 0x2E6FC0, 0x4
.global lbl_803DD6A4
lbl_803DD6A4:
	.incbin "baserom.dol", 0x2E6FC4, 0x4
.global lbl_803DD6A8
lbl_803DD6A8:
	.incbin "baserom.dol", 0x2E6FC8, 0x4
.global lbl_803DD6AC
lbl_803DD6AC:
	.incbin "baserom.dol", 0x2E6FCC, 0x4
.global lbl_803DD6B0
lbl_803DD6B0:
	.incbin "baserom.dol", 0x2E6FD0, 0x4
.global lbl_803DD6B4
lbl_803DD6B4:
	.incbin "baserom.dol", 0x2E6FD4, 0x4
.global lbl_803DD6B8
lbl_803DD6B8:
	.incbin "baserom.dol", 0x2E6FD8, 0x2C
.global __RTTI__9RigidBody
__RTTI__9RigidBody:
  .4byte 0x802a5efc
  .4byte 0x802a5f34
  .4byte 0
.global lbl_803DD6F0
lbl_803DD6F0:
	.incbin "baserom.dol", 0x2E7010, 0x8
.global lbl_803DD6F8
lbl_803DD6F8:
	.incbin "baserom.dol", 0x2E7018, 0x4
.global lbl_803DD6FC
lbl_803DD6FC:
	.incbin "baserom.dol", 0x2E701C, 0x4
.global lbl_803DD700
lbl_803DD700:
	.incbin "baserom.dol", 0x2E7020, 0x4
.global lbl_803DD704
lbl_803DD704:
	.incbin "baserom.dol", 0x2E7024, 0x4
.global lbl_803DD708
lbl_803DD708:
	.incbin "baserom.dol", 0x2E7028, 0x4
.global lbl_803DD70C
lbl_803DD70C:
	.incbin "baserom.dol", 0x2E702C, 0x8
.global lbl_803DD714
lbl_803DD714:
	.incbin "baserom.dol", 0x2E7034, 0x8
.global lbl_803DD71C
lbl_803DD71C:
	.incbin "baserom.dol", 0x2E703C, 0x24
.global __RTTI__7AnimMgr
__RTTI__7AnimMgr:
  .4byte lbl_803DD6F0
  .4byte 0x802a6020
  .4byte 0x802a6054
  .4byte 0
.global __RTTI__13Parm$$06String$$1
__RTTI__13Parm$$06String$$1:
  .4byte 0x802a6044
  .4byte 0x802a6060
.global __RTTI__7Parm$$0f$$1
__RTTI__7Parm$$0f$$1:
  .4byte 0x802a6080
  .4byte 0x802a608c
.global __RTTI__7Parm$$0i$$1
__RTTI__7Parm$$0i$$1:
  .4byte 0x802a60ac
  .4byte 0x802a60b8
.global __RTTI__8AnimInfo
__RTTI__8AnimInfo:
  .4byte 0x802a60d8
  .4byte 0x802a60e4
  .4byte 0x205b6f66
  .4byte 0x665d0000
  .4byte 0x20205b6f
  .4byte 0x6e5d0000
  .4byte 0x5b66756c
  .4byte 0x6c5d0000
.global lbl_803DD788
lbl_803DD788:
	.incbin "baserom.dol", 0x2E70A8, 0x8
.global lbl_803DD790
lbl_803DD790:
	.incbin "baserom.dol", 0x2E70B0, 0x18
.global filterNames
filterNames:
	.incbin "baserom.dol", 0x2E70C8, 0x8
.global lbl_803DD7B0
lbl_803DD7B0:
	.incbin "baserom.dol", 0x2E70D0, 0x4
.global lbl_803DD7B4
lbl_803DD7B4:
	.incbin "baserom.dol", 0x2E70D4, 0x4
.global lbl_803DD7B8
lbl_803DD7B8:
	.incbin "baserom.dol", 0x2E70D8, 0x4
.global lbl_803DD7BC
lbl_803DD7BC:
	.incbin "baserom.dol", 0x2E70DC, 0x4
.global lbl_803DD7C0
lbl_803DD7C0:
	.incbin "baserom.dol", 0x2E70E0, 0x4
.global lbl_803DD7C4
lbl_803DD7C4:
	.incbin "baserom.dol", 0x2E70E4, 0x4
.global lbl_803DD7C8
lbl_803DD7C8:
	.incbin "baserom.dol", 0x2E70E8, 0x4
.global lbl_803DD7CC
lbl_803DD7CC:
	.incbin "baserom.dol", 0x2E70EC, 0x4
.global lbl_803DD7D0
lbl_803DD7D0:
	.incbin "baserom.dol", 0x2E70F0, 0x4
.global lbl_803DD7D4
lbl_803DD7D4:
	.incbin "baserom.dol", 0x2E70F4, 0x4
.global lbl_803DD7D8
lbl_803DD7D8:
	.incbin "baserom.dol", 0x2E70F8, 0x4
.global lbl_803DD7DC
lbl_803DD7DC:
	.incbin "baserom.dol", 0x2E70FC, 0x4
.global lbl_803DD7E0
lbl_803DD7E0:
	.incbin "baserom.dol", 0x2E7100, 0x4
.global lbl_803DD7E4
lbl_803DD7E4:
	.incbin "baserom.dol", 0x2E7104, 0x4
.global lbl_803DD7E8
lbl_803DD7E8:
	.incbin "baserom.dol", 0x2E7108, 0x8
.global lbl_803DD7F0
lbl_803DD7F0:
	.incbin "baserom.dol", 0x2E7110, 0x8
.global lbl_803DD7F8
lbl_803DD7F8:
	.incbin "baserom.dol", 0x2E7118, 0x8
.global lbl_803DD800
lbl_803DD800:
	.incbin "baserom.dol", 0x2E7120, 0x4
.global lbl_803DD804
lbl_803DD804:
	.incbin "baserom.dol", 0x2E7124, 0x8
.global lbl_803DD80C
lbl_803DD80C:
	.incbin "baserom.dol", 0x2E712C, 0x30
.global __RTTI__11GameGenNode
__RTTI__11GameGenNode:
  .4byte 0x802a635c
  .4byte 0x802a6394
  .4byte 0x53656374
  .4byte 0x696f6e00
  .4byte 0x803dd844
  .4byte 0x802a6410
.global __RTTI__11GameGenFlow
__RTTI__11GameGenFlow:
  .4byte 0x802a6320
  .4byte 0x802a6460
  .4byte 0x802a64d8
  .4byte 0
.global __RTTI__8GameFlow
__RTTI__8GameFlow:
  .4byte lbl_802A6138
  .4byte 0x802a655c
.global __RTTI__18IDelegate1$$0R4Menu$$1
__RTTI__18IDelegate1$$0R4Menu$$1:
  .4byte 0x802a65c4
  .4byte 0
.global __RTTI__27Delegate1$$08GameFlow$$4R4Menu$$1
__RTTI__27Delegate1$$08GameFlow$$4R4Menu$$1:
  .4byte 0x802a65a8
  .4byte 0x802a65d8
.global __RTTI__9LoadIdler
__RTTI__9LoadIdler:
  .4byte 0x802a660c
  .4byte 0x802a6618
.global __RTTI__13GameLoadIdler
__RTTI__13GameLoadIdler:
  .4byte 0x802a65fc
  .4byte 0x802a662c
.global __RTTI__10MemoryCard
__RTTI__10MemoryCard:
  .4byte 0x802a669c
  .4byte 0x802a66a8
  .4byte 0
.global lbl_803DD898
lbl_803DD898:
	.incbin "baserom.dol", 0x2E71B8, 0x8
.global lbl_803DD8A0
lbl_803DD8A0:
	.incbin "baserom.dol", 0x2E71C0, 0x4
.global lbl_803DD8A4
lbl_803DD8A4:
	.incbin "baserom.dol", 0x2E71C4, 0x4
.global lbl_803DD8A8
lbl_803DD8A8:
	.incbin "baserom.dol", 0x2E71C8, 0x4
.global lbl_803DD8AC
lbl_803DD8AC:
	.incbin "baserom.dol", 0x2E71CC, 0x8
.global lbl_803DD8B4
lbl_803DD8B4:
	.incbin "baserom.dol", 0x2E71D4, 0x8
.global lbl_803DD8BC
lbl_803DD8BC:
	.incbin "baserom.dol", 0x2E71DC, 0x8
.global lbl_803DD8C4
lbl_803DD8C4:
	.incbin "baserom.dol", 0x2E71E4, 0x8
.global lbl_803DD8CC
lbl_803DD8CC:
	.incbin "baserom.dol", 0x2E71EC, 0x4
.global lbl_803DD8D0
lbl_803DD8D0:
	.incbin "baserom.dol", 0x2E71F0, 0x8
.global lbl_803DD8D8
lbl_803DD8D8:
	.incbin "baserom.dol", 0x2E71F8, 0x40
.global __RTTI__16OnePlayerSection
__RTTI__16OnePlayerSection:
  .4byte 0x802a67e8
  .4byte 0x802a6844
.global __RTTI__11GenFileInfo
__RTTI__11GenFileInfo:
  .4byte 0x802a689c
  .4byte 0x802a68a8
.global __RTTI__9StageInfo
__RTTI__9StageInfo:
  .4byte 0x802a68e8
  .4byte 0x802a68f4
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803dd930
  .4byte 0
  .4byte 0x802a6940
  .4byte 0x802a694c
.global __RTTI__9PlayState
__RTTI__9PlayState:
  .4byte 0x802a6934
  .4byte 0x802a6958
.global __RTTI__9GamePrefs
__RTTI__9GamePrefs:
  .4byte 0x802a6928
  .4byte 0x802a6980
.global lbl_803DD958
lbl_803DD958:
	.incbin "baserom.dol", 0x2E7278, 0x4
.global lbl_803DD95C
lbl_803DD95C:
	.incbin "baserom.dol", 0x2E727C, 0x8
.global lbl_803DD964
lbl_803DD964:
	.incbin "baserom.dol", 0x2E7284, 0x40
.global __RTTI__16GameSetupSection
__RTTI__16GameSetupSection:
  .4byte 0x802a744c
  .4byte 0x802a74a8
  .4byte 0x53747265
  .4byte 0x616d0000
  .4byte 0x803dd9ac
  .4byte 0
  .4byte 0x802a7528
  .4byte 0x802a753c
.global __RTTI__9RamStream
__RTTI__9RamStream:
  .4byte 0x802a751c
  .4byte 0x802a7548
  .4byte 0
.global lbl_803DD9D0
lbl_803DD9D0:
	.incbin "baserom.dol", 0x2E72F0, 0x30
.global __RTTI__22CardSelectSetupSection
__RTTI__22CardSelectSetupSection:
  .4byte 0x802a76e8
  .4byte 0x802a7714
.global lbl_803DDA08
lbl_803DDA08:
	.incbin "baserom.dol", 0x2E7328, 0x14
.global __RTTI__17CardSelectSection
__RTTI__17CardSelectSection:
  .4byte 0x802a7760
  .4byte 0x802a7790
  .4byte 0
.global lbl_803DDA28
lbl_803DDA28:
	.incbin "baserom.dol", 0x2E7348, 0x4
.global lbl_803DDA2C
lbl_803DDA2C:
	.incbin "baserom.dol", 0x2E734C, 0x8
.global lbl_803DDA34
lbl_803DDA34:
	.incbin "baserom.dol", 0x2E7354, 0x8
.global lbl_803DDA3C
lbl_803DDA3C:
	.incbin "baserom.dol", 0x2E735C, 0x2C
.global __RTTI__21MapSelectSetupSection
__RTTI__21MapSelectSetupSection:
  .4byte 0x802a7914
  .4byte 0x802a7940
  .4byte 0x53656374
  .4byte 0x696f6e00
  .4byte 0x803dda70
  .4byte 0x802a79a0
.global __RTTI__16MapSelectSection
__RTTI__16MapSelectSection:
  .4byte 0x802a798c
  .4byte 0x802a79bc
.global __RTTI__18IDelegate1$$0R4Menu$$1_1
__RTTI__18IDelegate1$$0R4Menu$$1_1:
  .4byte 0x802a7a60
  .4byte 0
.global __RTTI__23Delegate1$$04Menu$$4R4Menu$$1
__RTTI__23Delegate1$$04Menu$$4R4Menu$$1:
  .4byte 0x802a7a48
  .4byte 0x802a7a74
.global __RTTI__41Delegate1$$021MapSelectSetupSection$$4R4Menu$$1
__RTTI__41Delegate1$$021MapSelectSetupSection$$4R4Menu$$1:
  .4byte 0x802a7a8c
  .4byte 0x802a7ab8
.global lbl_803DDAA0
lbl_803DDAA0:
	.incbin "baserom.dol", 0x2E73C0, 0x4
.global lbl_803DDAA4
lbl_803DDAA4:
	.incbin "baserom.dol", 0x2E73C4, 0x4
.global lbl_803DDAA8
lbl_803DDAA8:
	.incbin "baserom.dol", 0x2E73C8, 0x4
.global lbl_803DDAAC
lbl_803DDAAC:
	.incbin "baserom.dol", 0x2E73CC, 0x4
.global lbl_803DDAB0
lbl_803DDAB0:
	.incbin "baserom.dol", 0x2E73D0, 0x4
.global lbl_803DDAB4
lbl_803DDAB4:
	.incbin "baserom.dol", 0x2E73D4, 0x4
.global lbl_803DDAB8
lbl_803DDAB8:
	.incbin "baserom.dol", 0x2E73D8, 0x4
.global lbl_803DDABC
lbl_803DDABC:
	.incbin "baserom.dol", 0x2E73DC, 0x4
.global lbl_803DDAC0
lbl_803DDAC0:
	.incbin "baserom.dol", 0x2E73E0, 0x4
.global lbl_803DDAC4
lbl_803DDAC4:
	.incbin "baserom.dol", 0x2E73E4, 0x4
.global lbl_803DDAC8
lbl_803DDAC8:
	.incbin "baserom.dol", 0x2E73E8, 0x4
.global lbl_803DDACC
lbl_803DDACC:
	.incbin "baserom.dol", 0x2E73EC, 0x4
.global lbl_803DDAD0
lbl_803DDAD0:
	.incbin "baserom.dol", 0x2E73F0, 0x4
.global lbl_803DDAD4
lbl_803DDAD4:
	.incbin "baserom.dol", 0x2E73F4, 0x4
.global lbl_803DDAD8
lbl_803DDAD8:
	.incbin "baserom.dol", 0x2E73F8, 0x4
.global lbl_803DDADC
lbl_803DDADC:
	.incbin "baserom.dol", 0x2E73FC, 0x4
.global lbl_803DDAE0
lbl_803DDAE0:
	.incbin "baserom.dol", 0x2E7400, 0x4
.global lbl_803DDAE4
lbl_803DDAE4:
	.incbin "baserom.dol", 0x2E7404, 0x4
.global lbl_803DDAE8
lbl_803DDAE8:
	.incbin "baserom.dol", 0x2E7408, 0x4
.global lbl_803DDAEC
lbl_803DDAEC:
	.incbin "baserom.dol", 0x2E740C, 0x4
.global lbl_803DDAF0
lbl_803DDAF0:
	.incbin "baserom.dol", 0x2E7410, 0x4
.global lbl_803DDAF4
lbl_803DDAF4:
	.incbin "baserom.dol", 0x2E7414, 0x4
.global lbl_803DDAF8
lbl_803DDAF8:
	.incbin "baserom.dol", 0x2E7418, 0x4
.global lbl_803DDAFC
lbl_803DDAFC:
	.incbin "baserom.dol", 0x2E741C, 0x4
.global lbl_803DDB00
lbl_803DDB00:
	.incbin "baserom.dol", 0x2E7420, 0x4
.global lbl_803DDB04
lbl_803DDB04:
	.incbin "baserom.dol", 0x2E7424, 0x4
.global lbl_803DDB08
lbl_803DDB08:
	.incbin "baserom.dol", 0x2E7428, 0x4
.global lbl_803DDB0C
lbl_803DDB0C:
	.incbin "baserom.dol", 0x2E742C, 0x4
.global lbl_803DDB10
lbl_803DDB10:
	.incbin "baserom.dol", 0x2E7430, 0x4
.global lbl_803DDB14
lbl_803DDB14:
	.incbin "baserom.dol", 0x2E7434, 0x4
.global lbl_803DDB18
lbl_803DDB18:
	.incbin "baserom.dol", 0x2E7438, 0x4
.global lbl_803DDB1C
lbl_803DDB1C:
	.incbin "baserom.dol", 0x2E743C, 0x8
.global lbl_803DDB24
lbl_803DDB24:
	.incbin "baserom.dol", 0x2E7444, 0x4
.global lbl_803DDB28
lbl_803DDB28:
	.incbin "baserom.dol", 0x2E7448, 0x8
.global lbl_803DDB30
lbl_803DDB30:
	.incbin "baserom.dol", 0x2E7450, 0x8
.global lbl_803DDB38
lbl_803DDB38:
	.incbin "baserom.dol", 0x2E7458, 0x8
.global lbl_803DDB40
lbl_803DDB40:
	.incbin "baserom.dol", 0x2E7460, 0x8
.global lbl_803DDB48
lbl_803DDB48:
	.incbin "baserom.dol", 0x2E7468, 0x8
.global lbl_803DDB50
lbl_803DDB50:
	.incbin "baserom.dol", 0x2E7470, 0x4
.global lbl_803DDB54
lbl_803DDB54:
	.incbin "baserom.dol", 0x2E7474, 0x8
.global lbl_803DDB5C
lbl_803DDB5C:
	.incbin "baserom.dol", 0x2E747C, 0x4
.global lbl_803DDB60
lbl_803DDB60:
	.incbin "baserom.dol", 0x2E7480, 0x4
.global lbl_803DDB64
lbl_803DDB64:
	.incbin "baserom.dol", 0x2E7484, 0x28
.global __RTTI__9GaugeInfo
__RTTI__9GaugeInfo:
  .4byte 0x802a7bf8
  .4byte 0x802a7c1c
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803ddb94
  .4byte 0x802a7c58
.global __RTTI__15BaseGameSection
__RTTI__15BaseGameSection:
  .4byte 0x802a7c6c
  .4byte 0x802a7c7c
.global __RTTI__23NewPikiGameSetupSection
__RTTI__23NewPikiGameSetupSection:
  .4byte 0x802a7c40
  .4byte 0x802a7c98
  .4byte 0x53656374
  .4byte 0x696f6e00
  .4byte 0x803ddbb4
  .4byte 0x802a7d04
.global __RTTI__18NewPikiGameSection
__RTTI__18NewPikiGameSection:
  .4byte 0x802a7cf0
  .4byte 0x802a7d20
.global __RTTI__18GameMovieInterface
__RTTI__18GameMovieInterface:
  .4byte 0x802a7dac
  .4byte 0x802a7dc0
.global __RTTI__9ModeState
__RTTI__9ModeState:
  .4byte 0x802a7e00
  .4byte 0
.global __RTTI__16DayOverModeState
__RTTI__16DayOverModeState:
  .4byte 0x802a7dec
  .4byte 0x802a7e0c
.global __RTTI__16MessageModeState
__RTTI__16MessageModeState:
  .4byte 0x802a7e2c
  .4byte 0x802a7e40
.global __RTTI__16RunningModeState
__RTTI__16RunningModeState:
  .4byte 0x802a7e60
  .4byte 0x802a7e74
.global __RTTI__21QuittingGameModeState
__RTTI__21QuittingGameModeState:
  .4byte 0x802a7e94
  .4byte 0x802a7eac
.global __RTTI__18IntroGameModeState
__RTTI__18IntroGameModeState:
  .4byte 0x802a7ee0
  .4byte 0x802a7ef4
  .4byte 0
.global lbl_803DDC08
lbl_803DDC08:
	.incbin "baserom.dol", 0x2E7528, 0x4
.global lbl_803DDC0C
lbl_803DDC0C:
	.incbin "baserom.dol", 0x2E752C, 0x4
.global lbl_803DDC10
lbl_803DDC10:
	.incbin "baserom.dol", 0x2E7530, 0x4
.global lbl_803DDC14
lbl_803DDC14:
	.incbin "baserom.dol", 0x2E7534, 0x4
.global lbl_803DDC18
lbl_803DDC18:
	.incbin "baserom.dol", 0x2E7538, 0x4
.global lbl_803DDC1C
lbl_803DDC1C:
	.incbin "baserom.dol", 0x2E753C, 0x4
.global lbl_803DDC20
lbl_803DDC20:
	.incbin "baserom.dol", 0x2E7540, 0x4
.global lbl_803DDC24
lbl_803DDC24:
	.incbin "baserom.dol", 0x2E7544, 0x4
.global lbl_803DDC28
lbl_803DDC28:
	.incbin "baserom.dol", 0x2E7548, 0x4
.global lbl_803DDC2C
lbl_803DDC2C:
	.incbin "baserom.dol", 0x2E754C, 0x4
.global lbl_803DDC30
lbl_803DDC30:
	.incbin "baserom.dol", 0x2E7550, 0x4
.global lbl_803DDC34
lbl_803DDC34:
	.incbin "baserom.dol", 0x2E7554, 0x4
.global lbl_803DDC38
lbl_803DDC38:
	.incbin "baserom.dol", 0x2E7558, 0x4
.global lbl_803DDC3C
lbl_803DDC3C:
	.incbin "baserom.dol", 0x2E755C, 0x4
.global lbl_803DDC40
lbl_803DDC40:
	.incbin "baserom.dol", 0x2E7560, 0x4
.global lbl_803DDC44
lbl_803DDC44:
	.incbin "baserom.dol", 0x2E7564, 0x8
.global lbl_803DDC4C
lbl_803DDC4C:
	.incbin "baserom.dol", 0x2E756C, 0x20
.global __RTTI__9ModeState_1
__RTTI__9ModeState_1:
  .4byte 0x802a7fdc
  .4byte 0
.global __RTTI__14IntroModeState
__RTTI__14IntroModeState:
  .4byte 0x802a7fcc
  .4byte 0x802a7fe8
.global __RTTI__17QuittingModeState
__RTTI__17QuittingModeState:
  .4byte 0x802a8008
  .4byte 0x802a801c
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803ddc84
  .4byte 0x802a8068
.global __RTTI__15BaseGameSection_1
__RTTI__15BaseGameSection_1:
  .4byte 0x802a807c
  .4byte 0x802a808c
.global __RTTI__21IntroGameSetupSection
__RTTI__21IntroGameSetupSection:
  .4byte 0x802a8050
  .4byte 0x802a80a8
  .4byte 0x53656374
  .4byte 0x696f6e00
  .4byte 0x803ddca4
  .4byte 0x802a8114
.global __RTTI__16IntroGameSection
__RTTI__16IntroGameSection:
  .4byte 0x802a8100
  .4byte 0x802a8130
  .4byte 0
.global lbl_803DDCC0
lbl_803DDCC0:
	.incbin "baserom.dol", 0x2E75E0, 0x8
.global lbl_803DDCC8
lbl_803DDCC8:
	.incbin "baserom.dol", 0x2E75E8, 0x3C
.global __RTTI__15GameExitSection
__RTTI__15GameExitSection:
  .4byte 0x802a81dc
  .4byte 0x802a8234
  .4byte 0
.global lbl_803DDD10
lbl_803DDD10:
	.incbin "baserom.dol", 0x2E7630, 0x4
.global lbl_803DDD14
lbl_803DDD14:
	.incbin "baserom.dol", 0x2E7634, 0x4
.global lbl_803DDD18
lbl_803DDD18:
	.incbin "baserom.dol", 0x2E7638, 0x4
.global lbl_803DDD1C
lbl_803DDD1C:
	.incbin "baserom.dol", 0x2E763C, 0x4
.global lbl_803DDD20
lbl_803DDD20:
	.incbin "baserom.dol", 0x2E7640, 0x4
.global lbl_803DDD24
lbl_803DDD24:
	.incbin "baserom.dol", 0x2E7644, 0x4
.global lbl_803DDD28
lbl_803DDD28:
	.incbin "baserom.dol", 0x2E7648, 0x4
.global lbl_803DDD2C
lbl_803DDD2C:
	.incbin "baserom.dol", 0x2E764C, 0x4
.global lbl_803DDD30
lbl_803DDD30:
	.incbin "baserom.dol", 0x2E7650, 0x4
.global lbl_803DDD34
lbl_803DDD34:
	.incbin "baserom.dol", 0x2E7654, 0x4
.global lbl_803DDD38
lbl_803DDD38:
	.incbin "baserom.dol", 0x2E7658, 0x4
.global lbl_803DDD3C
lbl_803DDD3C:
	.incbin "baserom.dol", 0x2E765C, 0x4
.global lbl_803DDD40
lbl_803DDD40:
	.incbin "baserom.dol", 0x2E7660, 0x4
.global lbl_803DDD44
lbl_803DDD44:
	.incbin "baserom.dol", 0x2E7664, 0x4
.global lbl_803DDD48
lbl_803DDD48:
	.incbin "baserom.dol", 0x2E7668, 0x4
.global lbl_803DDD4C
lbl_803DDD4C:
	.incbin "baserom.dol", 0x2E766C, 0x4
.global lbl_803DDD50
lbl_803DDD50:
	.incbin "baserom.dol", 0x2E7670, 0x4
.global lbl_803DDD54
lbl_803DDD54:
	.incbin "baserom.dol", 0x2E7674, 0x4
.global lbl_803DDD58
lbl_803DDD58:
	.incbin "baserom.dol", 0x2E7678, 0x8
.global lbl_803DDD60
lbl_803DDD60:
	.incbin "baserom.dol", 0x2E7680, 0x4
.global lbl_803DDD64
lbl_803DDD64:
	.incbin "baserom.dol", 0x2E7684, 0x4
.global lbl_803DDD68
lbl_803DDD68:
	.incbin "baserom.dol", 0x2E7688, 0x4
.global lbl_803DDD6C
lbl_803DDD6C:
	.incbin "baserom.dol", 0x2E768C, 0x4
.global lbl_803DDD70
lbl_803DDD70:
	.incbin "baserom.dol", 0x2E7690, 0x4
.global lbl_803DDD74
lbl_803DDD74:
	.incbin "baserom.dol", 0x2E7694, 0x2C
.global __RTTI__9RigidBody_1
__RTTI__9RigidBody_1:
  .4byte 0x802a83a0
  .4byte 0x802a83ac
.global __RTTI__10DynObjBody
__RTTI__10DynObjBody:
  .4byte 0x802a83c8
  .4byte 0x802a83d4
.global __RTTI__12DynObjBridge
__RTTI__12DynObjBridge:
  .4byte 0x802a837c
  .4byte 0x802a83f8
  .4byte 0x802a84b0
  .4byte 0
  .4byte 0x47656e42
  .4byte 0x61736500
  .4byte 0x803dddc0
  .4byte 0x802a84bc
  .4byte 0x802a84c8
  .4byte 0x802a84d4
.global __RTTI__18GenObjectMapObject
__RTTI__18GenObjectMapObject:
  .4byte 0x802a849c
  .4byte 0x802a84e8
.global lbl_803DDDE0
lbl_803DDDE0:
	.incbin "baserom.dol", 0x2E7700, 0x8
.global lbl_803DDDE8
lbl_803DDDE8:
	.incbin "baserom.dol", 0x2E7708, 0x8
.global lbl_803DDDF0
lbl_803DDDF0:
	.incbin "baserom.dol", 0x2E7710, 0x34
.global __RTTI__4Menu
__RTTI__4Menu:
  .4byte 0x803dddf4
  .4byte 0x802a85f0
  .4byte 0
  .4byte 0x802a8690
  .4byte 0
.global lbl_803DDE38
lbl_803DDE38:
	.incbin "baserom.dol", 0x2E7758, 0x4
.global lbl_803DDE3C
lbl_803DDE3C:
	.incbin "baserom.dol", 0x2E775C, 0x8
.global lbl_803DDE44
lbl_803DDE44:
	.incbin "baserom.dol", 0x2E7764, 0x8
.global lbl_803DDE4C
lbl_803DDE4C:
	.incbin "baserom.dol", 0x2E776C, 0x4
.global lbl_803DDE50
lbl_803DDE50:
	.incbin "baserom.dol", 0x2E7770, 0x1C
.global __RTTI__16AtxCommandStream
__RTTI__16AtxCommandStream:
  .4byte 0x802a874c
  .4byte 0x802a8778
  .4byte 0x47616d65
  .4byte 0x41707000
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803dde7c
  .4byte 0
  .4byte 0x802a87e4
  .4byte 0x802a87f0
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803dde94
  .4byte 0x802a87fc
  .4byte 0x42617365
  .4byte 0x41707000
.global __RTTI__7BaseApp_1
__RTTI__7BaseApp_1:
  .4byte 0x803ddea4
  .4byte 0x802a8810
.global __RTTI__7GameApp
__RTTI__7GameApp:
  .4byte 0x803dde74
  .4byte 0x802a882c
.global __RTTI__11PlugPikiApp
__RTTI__11PlugPikiApp:
  .4byte 0x802a889c
  .4byte 0x802a88a8
  .4byte 0
.global lbl_803DDEC8
lbl_803DDEC8:
	.incbin "baserom.dol", 0x2E77E8, 0x4
.global lbl_803DDECC
lbl_803DDECC:
	.incbin "baserom.dol", 0x2E77EC, 0x4
.global lbl_803DDED0
lbl_803DDED0:
	.incbin "baserom.dol", 0x2E77F0, 0x4
.global lbl_803DDED4
lbl_803DDED4:
	.incbin "baserom.dol", 0x2E77F4, 0x4
.global lbl_803DDED8
lbl_803DDED8:
	.incbin "baserom.dol", 0x2E77F8, 0x4
.global lbl_803DDEDC
lbl_803DDEDC:
	.incbin "baserom.dol", 0x2E77FC, 0x4
.global lbl_803DDEE0
lbl_803DDEE0:
	.incbin "baserom.dol", 0x2E7800, 0x4
.global lbl_803DDEE4
lbl_803DDEE4:
	.incbin "baserom.dol", 0x2E7804, 0x4
.global lbl_803DDEE8
lbl_803DDEE8:
	.incbin "baserom.dol", 0x2E7808, 0x4
.global lbl_803DDEEC
lbl_803DDEEC:
	.incbin "baserom.dol", 0x2E780C, 0x4
.global lbl_803DDEF0
lbl_803DDEF0:
	.incbin "baserom.dol", 0x2E7810, 0x4
.global lbl_803DDEF4
lbl_803DDEF4:
	.incbin "baserom.dol", 0x2E7814, 0x4
.global lbl_803DDEF8
lbl_803DDEF8:
	.incbin "baserom.dol", 0x2E7818, 0x4
.global lbl_803DDEFC
lbl_803DDEFC:
	.incbin "baserom.dol", 0x2E781C, 0x4
.global lbl_803DDF00
lbl_803DDF00:
	.incbin "baserom.dol", 0x2E7820, 0x4
.global lbl_803DDF04
lbl_803DDF04:
	.incbin "baserom.dol", 0x2E7824, 0x4
.global lbl_803DDF08
lbl_803DDF08:
	.incbin "baserom.dol", 0x2E7828, 0x4
.global lbl_803DDF0C
lbl_803DDF0C:
	.incbin "baserom.dol", 0x2E782C, 0x4
.global lbl_803DDF10
lbl_803DDF10:
	.incbin "baserom.dol", 0x2E7830, 0x4
.global lbl_803DDF14
lbl_803DDF14:
	.incbin "baserom.dol", 0x2E7834, 0x4
.global lbl_803DDF18
lbl_803DDF18:
	.incbin "baserom.dol", 0x2E7838, 0x4
.global lbl_803DDF1C
lbl_803DDF1C:
	.incbin "baserom.dol", 0x2E783C, 0x4
.global lbl_803DDF20
lbl_803DDF20:
	.incbin "baserom.dol", 0x2E7840, 0x4
.global lbl_803DDF24
lbl_803DDF24:
	.incbin "baserom.dol", 0x2E7844, 0x4
.global lbl_803DDF28
lbl_803DDF28:
	.incbin "baserom.dol", 0x2E7848, 0x4
.global lbl_803DDF2C
lbl_803DDF2C:
	.incbin "baserom.dol", 0x2E784C, 0x4
.global lbl_803DDF30
lbl_803DDF30:
	.incbin "baserom.dol", 0x2E7850, 0x4
.global lbl_803DDF34
lbl_803DDF34:
	.incbin "baserom.dol", 0x2E7854, 0x4
.global lbl_803DDF38
lbl_803DDF38:
	.incbin "baserom.dol", 0x2E7858, 0x4
.global lbl_803DDF3C
lbl_803DDF3C:
	.incbin "baserom.dol", 0x2E785C, 0x8
.global lbl_803DDF44
lbl_803DDF44:
	.incbin "baserom.dol", 0x2E7864, 0x20
.global __RTTI__18IDelegate1$$0R4Menu$$1_2
__RTTI__18IDelegate1$$0R4Menu$$1_2:
  .4byte 0x802a8a24
  .4byte 0
.global __RTTI__37Delegate1$$017TitleSetupSection$$4R4Menu$$1
__RTTI__37Delegate1$$017TitleSetupSection$$4R4Menu$$1:
  .4byte 0x802a8a50
  .4byte 0x802a8a78
  .4byte 0x802a8a9c
  .4byte 0
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803ddf7c
  .4byte 0x802a8ad8
.global __RTTI__17TitleSetupSection
__RTTI__17TitleSetupSection:
  .4byte 0x802a8ac4
  .4byte 0x802a8aec
.global lbl_803DDF94
lbl_803DDF94:
	.incbin "baserom.dol", 0x2E78B4, 0x14
.global __RTTI__13TitlesSection
__RTTI__13TitlesSection:
  .4byte 0x802a8b38
  .4byte 0x802a8b64
.global __RTTI__20TitlesMovieInterface
__RTTI__20TitlesMovieInterface:
  .4byte 0x802a8bbc
  .4byte 0x802a8bd4
.global lbl_803DDFB8
lbl_803DDFB8:
	.incbin "baserom.dol", 0x2E78D8, 0x30
.global __RTTI__19NinLogoSetupSection
__RTTI__19NinLogoSetupSection:
  .4byte 0x802a8c6c
  .4byte 0x802a8c94
  .4byte 0x53656374
  .4byte 0x696f6e00
  .4byte 0x803ddff0
  .4byte 0x802a8cf0
.global __RTTI__14NinLogoSection
__RTTI__14NinLogoSection:
  .4byte 0x802a8ce0
  .4byte 0x802a8d0c
.global lbl_803DE008
lbl_803DE008:
	.incbin "baserom.dol", 0x2E7928, 0x4
.global lbl_803DE00C
lbl_803DE00C:
	.incbin "baserom.dol", 0x2E792C, 0x4
.global lbl_803DE010
lbl_803DE010:
	.incbin "baserom.dol", 0x2E7930, 0x4
.global lbl_803DE014
lbl_803DE014:
	.incbin "baserom.dol", 0x2E7934, 0x4
.global lbl_803DE018
lbl_803DE018:
	.incbin "baserom.dol", 0x2E7938, 0x4
.global lbl_803DE01C
lbl_803DE01C:
	.incbin "baserom.dol", 0x2E793C, 0x4
.global lbl_803DE020
lbl_803DE020:
	.incbin "baserom.dol", 0x2E7940, 0x4
.global lbl_803DE024
lbl_803DE024:
	.incbin "baserom.dol", 0x2E7944, 0x4
.global lbl_803DE028
lbl_803DE028:
	.incbin "baserom.dol", 0x2E7948, 0x4
.global lbl_803DE02C
lbl_803DE02C:
	.incbin "baserom.dol", 0x2E794C, 0x4
.global lbl_803DE030
lbl_803DE030:
	.incbin "baserom.dol", 0x2E7950, 0x4
.global lbl_803DE034
lbl_803DE034:
	.incbin "baserom.dol", 0x2E7954, 0x4
.global lbl_803DE038
lbl_803DE038:
	.incbin "baserom.dol", 0x2E7958, 0x4
.global lbl_803DE03C
lbl_803DE03C:
	.incbin "baserom.dol", 0x2E795C, 0x4
.global lbl_803DE040
lbl_803DE040:
	.incbin "baserom.dol", 0x2E7960, 0x4
.global lbl_803DE044
lbl_803DE044:
	.incbin "baserom.dol", 0x2E7964, 0x4
.global lbl_803DE048
lbl_803DE048:
	.incbin "baserom.dol", 0x2E7968, 0x4
.global lbl_803DE04C
lbl_803DE04C:
	.incbin "baserom.dol", 0x2E796C, 0x4
.global lbl_803DE050
lbl_803DE050:
	.incbin "baserom.dol", 0x2E7970, 0x4
.global Kdl
Kdl:
	.incbin "baserom.dol", 0x2E7974, 0x4
.global lbl_803DE058
lbl_803DE058:
	.incbin "baserom.dol", 0x2E7978, 0x4
.global lbl_803DE05C
lbl_803DE05C:
	.incbin "baserom.dol", 0x2E797C, 0x4
.global lbl_803DE060
lbl_803DE060:
	.incbin "baserom.dol", 0x2E7980, 0x4
.global lbl_803DE064
lbl_803DE064:
	.incbin "baserom.dol", 0x2E7984, 0x4
.global lbl_803DE068
lbl_803DE068:
	.incbin "baserom.dol", 0x2E7988, 0x4
.global lbl_803DE06C
lbl_803DE06C:
	.incbin "baserom.dol", 0x2E798C, 0x4
.global lbl_803DE070
lbl_803DE070:
	.incbin "baserom.dol", 0x2E7990, 0x8
.global lbl_803DE078
lbl_803DE078:
	.incbin "baserom.dol", 0x2E7998, 0x4
.global lbl_803DE07C
lbl_803DE07C:
	.incbin "baserom.dol", 0x2E799C, 0x4
.global lbl_803DE080
lbl_803DE080:
	.incbin "baserom.dol", 0x2E79A0, 0x4
.global lbl_803DE084
lbl_803DE084:
	.incbin "baserom.dol", 0x2E79A4, 0x4
.global lbl_803DE088
lbl_803DE088:
	.incbin "baserom.dol", 0x2E79A8, 0x4
.global lbl_803DE08C
lbl_803DE08C:
	.incbin "baserom.dol", 0x2E79AC, 0x4
.global lbl_803DE090
lbl_803DE090:
	.incbin "baserom.dol", 0x2E79B0, 0x4
.global lbl_803DE094
lbl_803DE094:
	.incbin "baserom.dol", 0x2E79B4, 0x4
.global lbl_803DE098
lbl_803DE098:
	.incbin "baserom.dol", 0x2E79B8, 0x4
.global lbl_803DE09C
lbl_803DE09C:
	.incbin "baserom.dol", 0x2E79BC, 0x4
.global lbl_803DE0A0
lbl_803DE0A0:
	.incbin "baserom.dol", 0x2E79C0, 0x4
.global lbl_803DE0A4
lbl_803DE0A4:
	.incbin "baserom.dol", 0x2E79C4, 0x8
.global lbl_803DE0AC
lbl_803DE0AC:
	.incbin "baserom.dol", 0x2E79CC, 0x8
.global lbl_803DE0B4
lbl_803DE0B4:
	.incbin "baserom.dol", 0x2E79D4, 0x8
.global lbl_803DE0BC
lbl_803DE0BC:
	.incbin "baserom.dol", 0x2E79DC, 0x4
.global lbl_803DE0C0
lbl_803DE0C0:
	.incbin "baserom.dol", 0x2E79E0, 0x4
.global lbl_803DE0C4
lbl_803DE0C4:
	.incbin "baserom.dol", 0x2E79E4, 0x4
.global lbl_803DE0C8
lbl_803DE0C8:
	.incbin "baserom.dol", 0x2E79E8, 0x4
.global lbl_803DE0CC
lbl_803DE0CC:
	.incbin "baserom.dol", 0x2E79EC, 0x4
.global lbl_803DE0D0
lbl_803DE0D0:
	.incbin "baserom.dol", 0x2E79F0, 0x4
.global lbl_803DE0D4
lbl_803DE0D4:
	.incbin "baserom.dol", 0x2E79F4, 0x4
.global lbl_803DE0D8
lbl_803DE0D8:
	.incbin "baserom.dol", 0x2E79F8, 0x4
.global lbl_803DE0DC
lbl_803DE0DC:
	.incbin "baserom.dol", 0x2E79FC, 0x4
.global lbl_803DE0E0
lbl_803DE0E0:
	.incbin "baserom.dol", 0x2E7A00, 0x4
.global lbl_803DE0E4
lbl_803DE0E4:
	.incbin "baserom.dol", 0x2E7A04, 0x4
.global lbl_803DE0E8
lbl_803DE0E8:
	.incbin "baserom.dol", 0x2E7A08, 0x4
.global lbl_803DE0EC
lbl_803DE0EC:
	.incbin "baserom.dol", 0x2E7A0C, 0x4
.global lbl_803DE0F0
lbl_803DE0F0:
	.incbin "baserom.dol", 0x2E7A10, 0x4
.global lbl_803DE0F4
lbl_803DE0F4:
	.incbin "baserom.dol", 0x2E7A14, 0x4
.global lbl_803DE0F8
lbl_803DE0F8:
	.incbin "baserom.dol", 0x2E7A18, 0x4
.global lbl_803DE0FC
lbl_803DE0FC:
	.incbin "baserom.dol", 0x2E7A1C, 0x4
.global lbl_803DE100
lbl_803DE100:
	.incbin "baserom.dol", 0x2E7A20, 0x4
.global lbl_803DE104
lbl_803DE104:
	.incbin "baserom.dol", 0x2E7A24, 0x4
.global lbl_803DE108
lbl_803DE108:
	.incbin "baserom.dol", 0x2E7A28, 0x4
.global lbl_803DE10C
lbl_803DE10C:
	.incbin "baserom.dol", 0x2E7A2C, 0x4
.global lbl_803DE110
lbl_803DE110:
	.incbin "baserom.dol", 0x2E7A30, 0x4
.global lbl_803DE114
lbl_803DE114:
	.incbin "baserom.dol", 0x2E7A34, 0x4
.global lbl_803DE118
lbl_803DE118:
	.incbin "baserom.dol", 0x2E7A38, 0x4
.global lbl_803DE11C
lbl_803DE11C:
	.incbin "baserom.dol", 0x2E7A3C, 0x4
.global lbl_803DE120
lbl_803DE120:
	.incbin "baserom.dol", 0x2E7A40, 0x4
.global lbl_803DE124
lbl_803DE124:
	.incbin "baserom.dol", 0x2E7A44, 0x4
.global lbl_803DE128
lbl_803DE128:
	.incbin "baserom.dol", 0x2E7A48, 0x4
.global lbl_803DE12C
lbl_803DE12C:
	.incbin "baserom.dol", 0x2E7A4C, 0x4
.global lbl_803DE130
lbl_803DE130:
	.incbin "baserom.dol", 0x2E7A50, 0x4
.global lbl_803DE134
lbl_803DE134:
	.incbin "baserom.dol", 0x2E7A54, 0x4
.global lbl_803DE138
lbl_803DE138:
	.incbin "baserom.dol", 0x2E7A58, 0x4
.global lbl_803DE13C
lbl_803DE13C:
	.incbin "baserom.dol", 0x2E7A5C, 0x4
.global lbl_803DE140
lbl_803DE140:
	.incbin "baserom.dol", 0x2E7A60, 0x4
.global lbl_803DE144
lbl_803DE144:
	.incbin "baserom.dol", 0x2E7A64, 0x4
.global lbl_803DE148
lbl_803DE148:
	.incbin "baserom.dol", 0x2E7A68, 0x4
.global lbl_803DE14C
lbl_803DE14C:
	.incbin "baserom.dol", 0x2E7A6C, 0x4
.global lbl_803DE150
lbl_803DE150:
	.incbin "baserom.dol", 0x2E7A70, 0x4
.global lbl_803DE154
lbl_803DE154:
	.incbin "baserom.dol", 0x2E7A74, 0x4
.global lbl_803DE158
lbl_803DE158:
	.incbin "baserom.dol", 0x2E7A78, 0x4
.global lbl_803DE15C
lbl_803DE15C:
	.incbin "baserom.dol", 0x2E7A7C, 0x8
.global lbl_803DE164
lbl_803DE164:
	.incbin "baserom.dol", 0x2E7A84, 0x4
.global lbl_803DE168
lbl_803DE168:
	.incbin "baserom.dol", 0x2E7A88, 0x4
.global lbl_803DE16C
lbl_803DE16C:
	.incbin "baserom.dol", 0x2E7A8C, 0x4
.global lbl_803DE170
lbl_803DE170:
	.incbin "baserom.dol", 0x2E7A90, 0x4
.global lbl_803DE174
lbl_803DE174:
	.incbin "baserom.dol", 0x2E7A94, 0x4
.global lbl_803DE178
lbl_803DE178:
	.incbin "baserom.dol", 0x2E7A98, 0x4
.global lbl_803DE17C
lbl_803DE17C:
	.incbin "baserom.dol", 0x2E7A9C, 0x4
.global lbl_803DE180
lbl_803DE180:
	.incbin "baserom.dol", 0x2E7AA0, 0x4
.global lbl_803DE184
lbl_803DE184:
	.incbin "baserom.dol", 0x2E7AA4, 0x4
.global lbl_803DE188
lbl_803DE188:
	.incbin "baserom.dol", 0x2E7AA8, 0x4
.global lbl_803DE18C
lbl_803DE18C:
	.incbin "baserom.dol", 0x2E7AAC, 0x4
.global lbl_803DE190
lbl_803DE190:
	.incbin "baserom.dol", 0x2E7AB0, 0x4
.global lbl_803DE194
lbl_803DE194:
	.incbin "baserom.dol", 0x2E7AB4, 0x4
.global lbl_803DE198
lbl_803DE198:
	.incbin "baserom.dol", 0x2E7AB8, 0x1C
.global __RTTI__12ShadowCaster
__RTTI__12ShadowCaster:
  .4byte 0x802a8e48
  .4byte 0x802a8e70
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803de1bc
  .4byte 0x802a8ea4
.global __RTTI__12DynSimulator
__RTTI__12DynSimulator:
  .4byte 0x802a8e94
  .4byte 0x802a8eb8
.global __RTTI__15MaterialHandler_1
__RTTI__15MaterialHandler_1:
  .4byte 0x802a8f18
  .4byte 0
.global __RTTI__17MapProjMatHandler
__RTTI__17MapProjMatHandler:
  .4byte 0x802a8f04
  .4byte 0x802a8f28
.global __RTTI__17MapShadMatHandler
__RTTI__17MapShadMatHandler:
  .4byte 0x802a8f44
  .4byte 0x802a8f58
.global __RTTI__9RigidBody_2
__RTTI__9RigidBody_2:
  .4byte 0x802a8f84
  .4byte 0x802a8f90
.global __RTTI__10DynObjBody_1
__RTTI__10DynObjBody_1:
  .4byte 0x802a8fac
  .4byte 0x802a8fb8
.global __RTTI__14DynObjPushable
__RTTI__14DynObjPushable:
  .4byte 0x802a8f74
  .4byte 0x802a8fdc
.global __RTTI__12DynObjSeeSaw
__RTTI__12DynObjSeeSaw:
  .4byte 0x802a90f8
  .4byte 0x802a9108
  .4byte 0x802a91bc
  .4byte 0x802a91cc
.global __RTTI__12DynCollShape
__RTTI__12DynCollShape:
  .4byte 0x802a91e8
  .4byte 0x802a91f8
.global __RTTI__14DynCollObjBody
__RTTI__14DynCollObjBody:
  .4byte 0x802a91ac
  .4byte 0x802a921c
.global __RTTI__12DynMapObject
__RTTI__12DynMapObject:
  .4byte 0x802a9290
  .4byte 0x802a92a0
.global __RTTI__13MapObjectPart
__RTTI__13MapObjectPart:
  .4byte 0x802a9330
  .4byte 0x802a9340
  .4byte 0x802a9404
  .4byte 0
.global __RTTI__14MapObjAnimator
__RTTI__14MapObjAnimator:
  .4byte 0x802a93f4
  .4byte 0x802a9410
  .4byte 0
.global lbl_803DE248
lbl_803DE248:
	.incbin "baserom.dol", 0x2E7B68, 0x4
.global lbl_803DE24C
lbl_803DE24C:
	.incbin "baserom.dol", 0x2E7B6C, 0x4
.global lbl_803DE250
lbl_803DE250:
	.incbin "baserom.dol", 0x2E7B70, 0x4
.global lbl_803DE254
lbl_803DE254:
	.incbin "baserom.dol", 0x2E7B74, 0x4
.global lbl_803DE258
lbl_803DE258:
	.incbin "baserom.dol", 0x2E7B78, 0x4
.global lbl_803DE25C
lbl_803DE25C:
	.incbin "baserom.dol", 0x2E7B7C, 0x4
.global lbl_803DE260
lbl_803DE260:
	.incbin "baserom.dol", 0x2E7B80, 0x4
.global lbl_803DE264
lbl_803DE264:
	.incbin "baserom.dol", 0x2E7B84, 0x4
.global lbl_803DE268
lbl_803DE268:
	.incbin "baserom.dol", 0x2E7B88, 0x4
.global lbl_803DE26C
lbl_803DE26C:
	.incbin "baserom.dol", 0x2E7B8C, 0x4
.global lbl_803DE270
lbl_803DE270:
	.incbin "baserom.dol", 0x2E7B90, 0x4
.global lbl_803DE274
lbl_803DE274:
	.incbin "baserom.dol", 0x2E7B94, 0x4
.global lbl_803DE278
lbl_803DE278:
	.incbin "baserom.dol", 0x2E7B98, 0x4
.global lbl_803DE27C
lbl_803DE27C:
	.incbin "baserom.dol", 0x2E7B9C, 0x4
.global lbl_803DE280
lbl_803DE280:
	.incbin "baserom.dol", 0x2E7BA0, 0x4
.global lbl_803DE284
lbl_803DE284:
	.incbin "baserom.dol", 0x2E7BA4, 0x4
.global lbl_803DE288
lbl_803DE288:
	.incbin "baserom.dol", 0x2E7BA8, 0x4
.global lbl_803DE28C
lbl_803DE28C:
	.incbin "baserom.dol", 0x2E7BAC, 0x4
.global lbl_803DE290
lbl_803DE290:
	.incbin "baserom.dol", 0x2E7BB0, 0x4
.global lbl_803DE294
lbl_803DE294:
	.incbin "baserom.dol", 0x2E7BB4, 0x4
.global lbl_803DE298
lbl_803DE298:
	.incbin "baserom.dol", 0x2E7BB8, 0x4
.global lbl_803DE29C
lbl_803DE29C:
	.incbin "baserom.dol", 0x2E7BBC, 0x4
.global lbl_803DE2A0
lbl_803DE2A0:
	.incbin "baserom.dol", 0x2E7BC0, 0x4
.global lbl_803DE2A4
lbl_803DE2A4:
	.incbin "baserom.dol", 0x2E7BC4, 0x4
.global lbl_803DE2A8
lbl_803DE2A8:
	.incbin "baserom.dol", 0x2E7BC8, 0x4
.global lbl_803DE2AC
lbl_803DE2AC:
	.incbin "baserom.dol", 0x2E7BCC, 0x4
.global lbl_803DE2B0
lbl_803DE2B0:
	.incbin "baserom.dol", 0x2E7BD0, 0x4
.global lbl_803DE2B4
lbl_803DE2B4:
	.incbin "baserom.dol", 0x2E7BD4, 0x4
.global lbl_803DE2B8
lbl_803DE2B8:
	.incbin "baserom.dol", 0x2E7BD8, 0x4
.global lbl_803DE2BC
lbl_803DE2BC:
	.incbin "baserom.dol", 0x2E7BDC, 0x4
.global lbl_803DE2C0
lbl_803DE2C0:
	.incbin "baserom.dol", 0x2E7BE0, 0x4
.global lbl_803DE2C4
lbl_803DE2C4:
	.incbin "baserom.dol", 0x2E7BE4, 0x4
.global lbl_803DE2C8
lbl_803DE2C8:
	.incbin "baserom.dol", 0x2E7BE8, 0x4
.global lbl_803DE2CC
lbl_803DE2CC:
	.incbin "baserom.dol", 0x2E7BEC, 0x4
.global lbl_803DE2D0
lbl_803DE2D0:
	.incbin "baserom.dol", 0x2E7BF0, 0x4
.global lbl_803DE2D4
lbl_803DE2D4:
	.incbin "baserom.dol", 0x2E7BF4, 0x4
.global lbl_803DE2D8
lbl_803DE2D8:
	.incbin "baserom.dol", 0x2E7BF8, 0x4
.global lbl_803DE2DC
lbl_803DE2DC:
	.incbin "baserom.dol", 0x2E7BFC, 0x4
.global lbl_803DE2E0
lbl_803DE2E0:
	.incbin "baserom.dol", 0x2E7C00, 0x4
.global lbl_803DE2E4
lbl_803DE2E4:
	.incbin "baserom.dol", 0x2E7C04, 0x4
.global lbl_803DE2E8
lbl_803DE2E8:
	.incbin "baserom.dol", 0x2E7C08, 0x4
.global lbl_803DE2EC
lbl_803DE2EC:
	.incbin "baserom.dol", 0x2E7C0C, 0x4
.global lbl_803DE2F0
lbl_803DE2F0:
	.incbin "baserom.dol", 0x2E7C10, 0x4
.global lbl_803DE2F4
lbl_803DE2F4:
	.incbin "baserom.dol", 0x2E7C14, 0x4
.global lbl_803DE2F8
lbl_803DE2F8:
	.incbin "baserom.dol", 0x2E7C18, 0x4
.global lbl_803DE2FC
lbl_803DE2FC:
	.incbin "baserom.dol", 0x2E7C1C, 0x4
.global lbl_803DE300
lbl_803DE300:
	.incbin "baserom.dol", 0x2E7C20, 0x8
.global lbl_803DE308
lbl_803DE308:
	.incbin "baserom.dol", 0x2E7C28, 0x4
.global lbl_803DE30C
lbl_803DE30C:
	.incbin "baserom.dol", 0x2E7C2C, 0x4
.global lbl_803DE310
lbl_803DE310:
	.incbin "baserom.dol", 0x2E7C30, 0x4
.global lbl_803DE314
lbl_803DE314:
	.incbin "baserom.dol", 0x2E7C34, 0x4
.global lbl_803DE318
lbl_803DE318:
	.incbin "baserom.dol", 0x2E7C38, 0x1C
.global lightTypes
lightTypes:
	.incbin "baserom.dol", 0x2E7C54, 0x10
.global lightMoveNames
lightMoveNames:
	.incbin "baserom.dol", 0x2E7C64, 0x8
.global lbl_803DE34C
lbl_803DE34C:
	.incbin "baserom.dol", 0x2E7C6C, 0x8
.global lbl_803DE354
lbl_803DE354:
	.incbin "baserom.dol", 0x2E7C74, 0x4
.global lbl_803DE358
lbl_803DE358:
	.incbin "baserom.dol", 0x2E7C78, 0x8
.global lbl_803DE360
lbl_803DE360:
	.incbin "baserom.dol", 0x2E7C80, 0x8
.global lbl_803DE368
lbl_803DE368:
	.incbin "baserom.dol", 0x2E7C88, 0x8
.global lbl_803DE370
lbl_803DE370:
	.incbin "baserom.dol", 0x2E7C90, 0x8
.global lbl_803DE378
lbl_803DE378:
	.incbin "baserom.dol", 0x2E7C98, 0x8
.global lbl_803DE380
lbl_803DE380:
	.incbin "baserom.dol", 0x2E7CA0, 0x4
.global lbl_803DE384
lbl_803DE384:
	.incbin "baserom.dol", 0x2E7CA4, 0x4
.global lbl_803DE388
lbl_803DE388:
	.incbin "baserom.dol", 0x2E7CA8, 0x4
.global lbl_803DE38C
lbl_803DE38C:
	.incbin "baserom.dol", 0x2E7CAC, 0x4
.global lbl_803DE390
lbl_803DE390:
	.incbin "baserom.dol", 0x2E7CB0, 0x4
.global lbl_803DE394
lbl_803DE394:
	.incbin "baserom.dol", 0x2E7CB4, 0x4
.global lbl_803DE398
lbl_803DE398:
	.incbin "baserom.dol", 0x2E7CB8, 0x4
.global lbl_803DE39C
lbl_803DE39C:
	.incbin "baserom.dol", 0x2E7CBC, 0x4
.global lbl_803DE3A0
lbl_803DE3A0:
	.incbin "baserom.dol", 0x2E7CC0, 0x4
.global lbl_803DE3A4
lbl_803DE3A4:
	.incbin "baserom.dol", 0x2E7CC4, 0x4
.global lbl_803DE3A8
lbl_803DE3A8:
	.incbin "baserom.dol", 0x2E7CC8, 0x4
.global lbl_803DE3AC
lbl_803DE3AC:
	.incbin "baserom.dol", 0x2E7CCC, 0x4
.global lbl_803DE3B0
lbl_803DE3B0:
	.incbin "baserom.dol", 0x2E7CD0, 0x4
.global lbl_803DE3B4
lbl_803DE3B4:
	.incbin "baserom.dol", 0x2E7CD4, 0x4
.global lbl_803DE3B8
lbl_803DE3B8:
	.incbin "baserom.dol", 0x2E7CD8, 0x4
.global lbl_803DE3BC
lbl_803DE3BC:
	.incbin "baserom.dol", 0x2E7CDC, 0x4
.global lbl_803DE3C0
lbl_803DE3C0:
	.incbin "baserom.dol", 0x2E7CE0, 0x4
.global lbl_803DE3C4
lbl_803DE3C4:
	.incbin "baserom.dol", 0x2E7CE4, 0x4
.global lbl_803DE3C8
lbl_803DE3C8:
	.incbin "baserom.dol", 0x2E7CE8, 0x4
.global lbl_803DE3CC
lbl_803DE3CC:
	.incbin "baserom.dol", 0x2E7CEC, 0x4
.global lbl_803DE3D0
lbl_803DE3D0:
	.incbin "baserom.dol", 0x2E7CF0, 0x3C
.global lbl_803DE40C
lbl_803DE40C:
	.incbin "baserom.dol", 0x2E7D2C, 0x4
.global lbl_803DE410
lbl_803DE410:
	.incbin "baserom.dol", 0x2E7D30, 0x8
.global lbl_803DE418
lbl_803DE418:
	.incbin "baserom.dol", 0x2E7D38, 0x8
.global lbl_803DE420
lbl_803DE420:
	.incbin "baserom.dol", 0x2E7D40, 0x8
.global lbl_803DE428
lbl_803DE428:
	.incbin "baserom.dol", 0x2E7D48, 0x4
.global lbl_803DE42C
lbl_803DE42C:
	.incbin "baserom.dol", 0x2E7D4C, 0x4
.global lbl_803DE430
lbl_803DE430:
	.incbin "baserom.dol", 0x2E7D50, 0x8
.global lbl_803DE438
lbl_803DE438:
	.incbin "baserom.dol", 0x2E7D58, 0x8
.global __RTTI__18IDelegate1$$0R4Menu$$1_3
__RTTI__18IDelegate1$$0R4Menu$$1_3:
  .4byte 0x802a98e8
  .4byte 0
.global __RTTI__26Delegate1$$07FogMenu$$4R4Menu$$1
__RTTI__26Delegate1$$07FogMenu$$4R4Menu$$1:
  .4byte 0x802a98cc
  .4byte 0x802a98fc
  .4byte 0x466f674d
  .4byte 0x656e7500
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803de458
  .4byte 0
  .4byte 0x802a9914
  .4byte 0x802a9920
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803de470
  .4byte 0x802a992c
  .4byte 0x4d656e75
  .4byte 0
.global __RTTI__4Menu_1
__RTTI__4Menu_1:
  .4byte 0x803de480
  .4byte 0x802a9940
.global __RTTI__7FogMenu
__RTTI__7FogMenu:
  .4byte 0x803de450
  .4byte 0x802a995c
.global __RTTI__9LightMenu
__RTTI__9LightMenu:
  .4byte 0x802a99d4
  .4byte 0x802a99e0
.global __RTTI__10DaySetMenu
__RTTI__10DaySetMenu:
  .4byte 0x802a9a58
  .4byte 0x802a9a64
.global __RTTI__25Delegate1$$06DayMgr$$4R4Menu$$1
__RTTI__25Delegate1$$06DayMgr$$4R4Menu$$1:
  .4byte 0x802a9adc
  .4byte 0x802a9af8
.global __RTTI__32Delegate1$$012PositionMenu$$4R4Menu$$1
__RTTI__32Delegate1$$012PositionMenu$$4R4Menu$$1:
  .4byte 0x802a9b10
  .4byte 0x802a9b30
.global __RTTI__12PositionMenu
__RTTI__12PositionMenu:
  .4byte 0x802a9b48
  .4byte 0x802a9b58
.global __RTTI__30Delegate1$$010ColourMenu$$4R4Menu$$1
__RTTI__30Delegate1$$010ColourMenu$$4R4Menu$$1:
  .4byte 0x802a9bd0
  .4byte 0x802a9bf0
.global __RTTI__10ColourMenu
__RTTI__10ColourMenu:
  .4byte 0x802a9c38
  .4byte 0x802a9c44
.global __RTTI__28Delegate1$$09LightMenu$$4R4Menu$$1
__RTTI__28Delegate1$$09LightMenu$$4R4Menu$$1:
  .4byte 0x802a9cbc
  .4byte 0x802a9cdc
.global lbl_803DE4D8
lbl_803DE4D8:
	.incbin "baserom.dol", 0x2E7DF8, 0x4
.global lbl_803DE4DC
lbl_803DE4DC:
	.incbin "baserom.dol", 0x2E7DFC, 0x8
.global lbl_803DE4E4
lbl_803DE4E4:
	.incbin "baserom.dol", 0x2E7E04, 0x4
.global lbl_803DE4E8
lbl_803DE4E8:
	.incbin "baserom.dol", 0x2E7E08, 0x8
.global lbl_803DE4F0
lbl_803DE4F0:
	.incbin "baserom.dol", 0x2E7E10, 0x8
.global lbl_803DE4F8
lbl_803DE4F8:
	.incbin "baserom.dol", 0x2E7E18, 0x8
.global lbl_803DE500
lbl_803DE500:
	.incbin "baserom.dol", 0x2E7E20, 0x8
.global lbl_803DE508
lbl_803DE508:
	.incbin "baserom.dol", 0x2E7E28, 0x8
.global lbl_803DE510
lbl_803DE510:
	.incbin "baserom.dol", 0x2E7E30, 0x8
.global lbl_803DE518
lbl_803DE518:
	.incbin "baserom.dol", 0x2E7E38, 0x4
.global lbl_803DE51C
lbl_803DE51C:
	.incbin "baserom.dol", 0x2E7E3C, 0x8
.global lbl_803DE524
lbl_803DE524:
	.incbin "baserom.dol", 0x2E7E44, 0x8
.global lbl_803DE52C
lbl_803DE52C:
	.incbin "baserom.dol", 0x2E7E4C, 0x8
.global lbl_803DE534
lbl_803DE534:
	.incbin "baserom.dol", 0x2E7E54, 0x8
.global lbl_803DE53C
lbl_803DE53C:
	.incbin "baserom.dol", 0x2E7E5C, 0x4
.global lbl_803DE540
lbl_803DE540:
	.incbin "baserom.dol", 0x2E7E60, 0x4
.global lbl_803DE544
lbl_803DE544:
	.incbin "baserom.dol", 0x2E7E64, 0x4
.global lbl_803DE548
lbl_803DE548:
	.incbin "baserom.dol", 0x2E7E68, 0x4
.global lbl_803DE54C
lbl_803DE54C:
	.incbin "baserom.dol", 0x2E7E6C, 0x4
.global lbl_803DE550
lbl_803DE550:
	.incbin "baserom.dol", 0x2E7E70, 0x4
.global lbl_803DE554
lbl_803DE554:
	.incbin "baserom.dol", 0x2E7E74, 0x4
.global lbl_803DE558
lbl_803DE558:
	.incbin "baserom.dol", 0x2E7E78, 0x4
.global lbl_803DE55C
lbl_803DE55C:
	.incbin "baserom.dol", 0x2E7E7C, 0x4
.global lbl_803DE560
lbl_803DE560:
	.incbin "baserom.dol", 0x2E7E80, 0x4
.global lbl_803DE564
lbl_803DE564:
	.incbin "baserom.dol", 0x2E7E84, 0x4
.global lbl_803DE568
lbl_803DE568:
	.incbin "baserom.dol", 0x2E7E88, 0x4
.global lbl_803DE56C
lbl_803DE56C:
	.incbin "baserom.dol", 0x2E7E8C, 0x4
.global lbl_803DE570
lbl_803DE570:
	.incbin "baserom.dol", 0x2E7E90, 0x4
.global lbl_803DE574
lbl_803DE574:
	.incbin "baserom.dol", 0x2E7E94, 0x4
.global lbl_803DE578
lbl_803DE578:
	.incbin "baserom.dol", 0x2E7E98, 0x4
.global lbl_803DE57C
lbl_803DE57C:
	.incbin "baserom.dol", 0x2E7E9C, 0x4
.global lbl_803DE580
lbl_803DE580:
	.incbin "baserom.dol", 0x2E7EA0, 0x4
.global lbl_803DE584
lbl_803DE584:
	.incbin "baserom.dol", 0x2E7EA4, 0x4
.global lbl_803DE588
lbl_803DE588:
	.incbin "baserom.dol", 0x2E7EA8, 0x4
.global lbl_803DE58C
lbl_803DE58C:
	.incbin "baserom.dol", 0x2E7EAC, 0x4
.global lbl_803DE590
lbl_803DE590:
	.incbin "baserom.dol", 0x2E7EB0, 0x4
.global lbl_803DE594
lbl_803DE594:
	.incbin "baserom.dol", 0x2E7EB4, 0x4
.global lbl_803DE598
lbl_803DE598:
	.incbin "baserom.dol", 0x2E7EB8, 0x4
.global lbl_803DE59C
lbl_803DE59C:
	.incbin "baserom.dol", 0x2E7EBC, 0x4
.global lbl_803DE5A0
lbl_803DE5A0:
	.incbin "baserom.dol", 0x2E7EC0, 0x4
.global lbl_803DE5A4
lbl_803DE5A4:
	.incbin "baserom.dol", 0x2E7EC4, 0x4
.global lbl_803DE5A8
lbl_803DE5A8:
	.incbin "baserom.dol", 0x2E7EC8, 0x4
.global lbl_803DE5AC
lbl_803DE5AC:
	.incbin "baserom.dol", 0x2E7ECC, 0x4
.global lbl_803DE5B0
lbl_803DE5B0:
	.incbin "baserom.dol", 0x2E7ED0, 0x4
.global lbl_803DE5B4
lbl_803DE5B4:
	.incbin "baserom.dol", 0x2E7ED4, 0x4
.global lbl_803DE5B8
lbl_803DE5B8:
	.incbin "baserom.dol", 0x2E7ED8, 0x4
.global lbl_803DE5BC
lbl_803DE5BC:
	.incbin "baserom.dol", 0x2E7EDC, 0x4
.global lbl_803DE5C0
lbl_803DE5C0:
	.incbin "baserom.dol", 0x2E7EE0, 0x4
.global lbl_803DE5C4
lbl_803DE5C4:
	.incbin "baserom.dol", 0x2E7EE4, 0x4
.global lbl_803DE5C8
lbl_803DE5C8:
	.incbin "baserom.dol", 0x2E7EE8, 0x4
.global lbl_803DE5CC
lbl_803DE5CC:
	.incbin "baserom.dol", 0x2E7EEC, 0x4
.global lbl_803DE5D0
lbl_803DE5D0:
	.incbin "baserom.dol", 0x2E7EF0, 0x4
.global lbl_803DE5D4
lbl_803DE5D4:
	.incbin "baserom.dol", 0x2E7EF4, 0x4
.global lbl_803DE5D8
lbl_803DE5D8:
	.incbin "baserom.dol", 0x2E7EF8, 0x4
.global lbl_803DE5DC
lbl_803DE5DC:
	.incbin "baserom.dol", 0x2E7EFC, 0x4
.global lbl_803DE5E0
lbl_803DE5E0:
	.incbin "baserom.dol", 0x2E7F00, 0x4
.global lbl_803DE5E4
lbl_803DE5E4:
	.incbin "baserom.dol", 0x2E7F04, 0x4
.global lbl_803DE5E8
lbl_803DE5E8:
	.incbin "baserom.dol", 0x2E7F08, 0x4
.global lbl_803DE5EC
lbl_803DE5EC:
	.incbin "baserom.dol", 0x2E7F0C, 0x4
.global lbl_803DE5F0
lbl_803DE5F0:
	.incbin "baserom.dol", 0x2E7F10, 0x4
.global lbl_803DE5F4
lbl_803DE5F4:
	.incbin "baserom.dol", 0x2E7F14, 0x4
.global lbl_803DE5F8
lbl_803DE5F8:
	.incbin "baserom.dol", 0x2E7F18, 0x4
.global lbl_803DE5FC
lbl_803DE5FC:
	.incbin "baserom.dol", 0x2E7F1C, 0x4
.global lbl_803DE600
lbl_803DE600:
	.incbin "baserom.dol", 0x2E7F20, 0x4
.global lbl_803DE604
lbl_803DE604:
	.incbin "baserom.dol", 0x2E7F24, 0x4
.global lbl_803DE608
lbl_803DE608:
	.incbin "baserom.dol", 0x2E7F28, 0x4
.global lbl_803DE60C
lbl_803DE60C:
	.incbin "baserom.dol", 0x2E7F2C, 0x4
.global lbl_803DE610
lbl_803DE610:
	.incbin "baserom.dol", 0x2E7F30, 0x4
.global lbl_803DE614
lbl_803DE614:
	.incbin "baserom.dol", 0x2E7F34, 0x4
.global lbl_803DE618
lbl_803DE618:
	.incbin "baserom.dol", 0x2E7F38, 0x4
.global lbl_803DE61C
lbl_803DE61C:
	.incbin "baserom.dol", 0x2E7F3C, 0x4
.global lbl_803DE620
lbl_803DE620:
	.incbin "baserom.dol", 0x2E7F40, 0x4
.global lbl_803DE624
lbl_803DE624:
	.incbin "baserom.dol", 0x2E7F44, 0x4
.global lbl_803DE628
lbl_803DE628:
	.incbin "baserom.dol", 0x2E7F48, 0x4
.global lbl_803DE62C
lbl_803DE62C:
	.incbin "baserom.dol", 0x2E7F4C, 0x4
.global lbl_803DE630
lbl_803DE630:
	.incbin "baserom.dol", 0x2E7F50, 0x4
.global lbl_803DE634
lbl_803DE634:
	.incbin "baserom.dol", 0x2E7F54, 0x4
.global lbl_803DE638
lbl_803DE638:
	.incbin "baserom.dol", 0x2E7F58, 0x4
.global lbl_803DE63C
lbl_803DE63C:
	.incbin "baserom.dol", 0x2E7F5C, 0x4
.global lbl_803DE640
lbl_803DE640:
	.incbin "baserom.dol", 0x2E7F60, 0x4
.global lbl_803DE644
lbl_803DE644:
	.incbin "baserom.dol", 0x2E7F64, 0x4
.global lbl_803DE648
lbl_803DE648:
	.incbin "baserom.dol", 0x2E7F68, 0x4
.global lbl_803DE64C
lbl_803DE64C:
	.incbin "baserom.dol", 0x2E7F6C, 0x4
.global lbl_803DE650
lbl_803DE650:
	.incbin "baserom.dol", 0x2E7F70, 0x4
.global lbl_803DE654
lbl_803DE654:
	.incbin "baserom.dol", 0x2E7F74, 0x4
.global lbl_803DE658
lbl_803DE658:
	.incbin "baserom.dol", 0x2E7F78, 0x4
.global lbl_803DE65C
lbl_803DE65C:
	.incbin "baserom.dol", 0x2E7F7C, 0x4
.global lbl_803DE660
lbl_803DE660:
	.incbin "baserom.dol", 0x2E7F80, 0x4
.global lbl_803DE664
lbl_803DE664:
	.incbin "baserom.dol", 0x2E7F84, 0x4
.global lbl_803DE668
lbl_803DE668:
	.incbin "baserom.dol", 0x2E7F88, 0x4
.global lbl_803DE66C
lbl_803DE66C:
	.incbin "baserom.dol", 0x2E7F8C, 0x4
.global lbl_803DE670
lbl_803DE670:
	.incbin "baserom.dol", 0x2E7F90, 0x4
.global lbl_803DE674
lbl_803DE674:
	.incbin "baserom.dol", 0x2E7F94, 0x4
.global lbl_803DE678
lbl_803DE678:
	.incbin "baserom.dol", 0x2E7F98, 0x4
.global lbl_803DE67C
lbl_803DE67C:
	.incbin "baserom.dol", 0x2E7F9C, 0x4
.global lbl_803DE680
lbl_803DE680:
	.incbin "baserom.dol", 0x2E7FA0, 0x4
.global lbl_803DE684
lbl_803DE684:
	.incbin "baserom.dol", 0x2E7FA4, 0x4
.global lbl_803DE688
lbl_803DE688:
	.incbin "baserom.dol", 0x2E7FA8, 0x4
.global lbl_803DE68C
lbl_803DE68C:
	.incbin "baserom.dol", 0x2E7FAC, 0x4
.global lbl_803DE690
lbl_803DE690:
	.incbin "baserom.dol", 0x2E7FB0, 0x4
.global lbl_803DE694
lbl_803DE694:
	.incbin "baserom.dol", 0x2E7FB4, 0x4
.global lbl_803DE698
lbl_803DE698:
	.incbin "baserom.dol", 0x2E7FB8, 0x4
.global lbl_803DE69C
lbl_803DE69C:
	.incbin "baserom.dol", 0x2E7FBC, 0x4
.global lbl_803DE6A0
lbl_803DE6A0:
	.incbin "baserom.dol", 0x2E7FC0, 0x4
.global lbl_803DE6A4
lbl_803DE6A4:
	.incbin "baserom.dol", 0x2E7FC4, 0x4
.global lbl_803DE6A8
lbl_803DE6A8:
	.incbin "baserom.dol", 0x2E7FC8, 0x4
.global lbl_803DE6AC
lbl_803DE6AC:
	.incbin "baserom.dol", 0x2E7FCC, 0x4
.global lbl_803DE6B0
lbl_803DE6B0:
	.incbin "baserom.dol", 0x2E7FD0, 0x4
.global lbl_803DE6B4
lbl_803DE6B4:
	.incbin "baserom.dol", 0x2E7FD4, 0x4
.global lbl_803DE6B8
lbl_803DE6B8:
	.incbin "baserom.dol", 0x2E7FD8, 0x4
.global lbl_803DE6BC
lbl_803DE6BC:
	.incbin "baserom.dol", 0x2E7FDC, 0x4
.global lbl_803DE6C0
lbl_803DE6C0:
	.incbin "baserom.dol", 0x2E7FE0, 0x4
.global lbl_803DE6C4
lbl_803DE6C4:
	.incbin "baserom.dol", 0x2E7FE4, 0x4
.global lbl_803DE6C8
lbl_803DE6C8:
	.incbin "baserom.dol", 0x2E7FE8, 0x4
.global lbl_803DE6CC
lbl_803DE6CC:
	.incbin "baserom.dol", 0x2E7FEC, 0x4
.global lbl_803DE6D0
lbl_803DE6D0:
	.incbin "baserom.dol", 0x2E7FF0, 0x4
.global lbl_803DE6D4
lbl_803DE6D4:
	.incbin "baserom.dol", 0x2E7FF4, 0x4
.global lbl_803DE6D8
lbl_803DE6D8:
	.incbin "baserom.dol", 0x2E7FF8, 0x4
.global lbl_803DE6DC
lbl_803DE6DC:
	.incbin "baserom.dol", 0x2E7FFC, 0x4
.global lbl_803DE6E0
lbl_803DE6E0:
	.incbin "baserom.dol", 0x2E8000, 0x4
.global lbl_803DE6E4
lbl_803DE6E4:
	.incbin "baserom.dol", 0x2E8004, 0x4
.global lbl_803DE6E8
lbl_803DE6E8:
	.incbin "baserom.dol", 0x2E8008, 0x4
.global lbl_803DE6EC
lbl_803DE6EC:
	.incbin "baserom.dol", 0x2E800C, 0x4
.global lbl_803DE6F0
lbl_803DE6F0:
	.incbin "baserom.dol", 0x2E8010, 0x4
.global lbl_803DE6F4
lbl_803DE6F4:
	.incbin "baserom.dol", 0x2E8014, 0x4
.global lbl_803DE6F8
lbl_803DE6F8:
	.incbin "baserom.dol", 0x2E8018, 0x4
.global lbl_803DE6FC
lbl_803DE6FC:
	.incbin "baserom.dol", 0x2E801C, 0x4
.global lbl_803DE700
lbl_803DE700:
	.incbin "baserom.dol", 0x2E8020, 0x4
.global lbl_803DE704
lbl_803DE704:
	.incbin "baserom.dol", 0x2E8024, 0x4
.global lbl_803DE708
lbl_803DE708:
	.incbin "baserom.dol", 0x2E8028, 0x4
.global lbl_803DE70C
lbl_803DE70C:
	.incbin "baserom.dol", 0x2E802C, 0x4
.global lbl_803DE710
lbl_803DE710:
	.incbin "baserom.dol", 0x2E8030, 0x4
.global lbl_803DE714
lbl_803DE714:
	.incbin "baserom.dol", 0x2E8034, 0x4
.global lbl_803DE718
lbl_803DE718:
	.incbin "baserom.dol", 0x2E8038, 0x4
.global lbl_803DE71C
lbl_803DE71C:
	.incbin "baserom.dol", 0x2E803C, 0x4
.global lbl_803DE720
lbl_803DE720:
	.incbin "baserom.dol", 0x2E8040, 0x4
.global lbl_803DE724
lbl_803DE724:
	.incbin "baserom.dol", 0x2E8044, 0x4
.global lbl_803DE728
lbl_803DE728:
	.incbin "baserom.dol", 0x2E8048, 0x4
.global lbl_803DE72C
lbl_803DE72C:
	.incbin "baserom.dol", 0x2E804C, 0x4
.global lbl_803DE730
lbl_803DE730:
	.incbin "baserom.dol", 0x2E8050, 0x1C
.global __RTTI__13ActorInstance
__RTTI__13ActorInstance:
  .4byte 0x802a9e60
  .4byte 0x802a9e88
.global __RTTI__8SceneCut
__RTTI__8SceneCut:
  .4byte 0x802a9eac
  .4byte 0x802a9eb8
.global __RTTI__15CineShapeObject
__RTTI__15CineShapeObject:
  .4byte 0x802a9edc
  .4byte 0x802a9eec
.global __RTTI__9SceneData
__RTTI__9SceneData:
  .4byte 0x802a9f10
  .4byte 0x802a9f1c
  .4byte 0
.global lbl_803DE770
lbl_803DE770:
	.incbin "baserom.dol", 0x2E8090, 0x4
.global lbl_803DE774
lbl_803DE774:
	.incbin "baserom.dol", 0x2E8094, 0x4
.global lbl_803DE778
lbl_803DE778:
	.incbin "baserom.dol", 0x2E8098, 0x4
.global lbl_803DE77C
lbl_803DE77C:
	.incbin "baserom.dol", 0x2E809C, 0x4
.global lbl_803DE780
lbl_803DE780:
	.incbin "baserom.dol", 0x2E80A0, 0x4
.global lbl_803DE784
lbl_803DE784:
	.incbin "baserom.dol", 0x2E80A4, 0x4
.global lbl_803DE788
lbl_803DE788:
	.incbin "baserom.dol", 0x2E80A8, 0x4
.global lbl_803DE78C
lbl_803DE78C:
	.incbin "baserom.dol", 0x2E80AC, 0x4
.global lbl_803DE790
lbl_803DE790:
	.incbin "baserom.dol", 0x2E80B0, 0x4
.global lbl_803DE794
lbl_803DE794:
	.incbin "baserom.dol", 0x2E80B4, 0x30
.global __RTTI__9LightPool
__RTTI__9LightPool:
  .4byte 0x802a9f70
  .4byte 0x802a9fa8
  .4byte 0
.global icon_pals
icon_pals:
	.incbin "baserom.dol", 0x2E80F0, 0x4
.global lbl_803DE7D4
lbl_803DE7D4:
	.incbin "baserom.dol", 0x2E80F4, 0x8
.global lbl_803DE7DC
lbl_803DE7DC:
	.incbin "baserom.dol", 0x2E80FC, 0x8
.global lbl_803DE7E4
lbl_803DE7E4:
	.incbin "baserom.dol", 0x2E8104, 0x8
.global lbl_803DE7EC
lbl_803DE7EC:
	.incbin "baserom.dol", 0x2E810C, 0x34
.global lbl_803DE820
lbl_803DE820:
	.incbin "baserom.dol", 0x2E8140, 0x4
.global lbl_803DE824
lbl_803DE824:
	.incbin "baserom.dol", 0x2E8144, 0x4
.global lbl_803DE828
lbl_803DE828:
	.incbin "baserom.dol", 0x2E8148, 0x4
.global lbl_803DE82C
lbl_803DE82C:
	.incbin "baserom.dol", 0x2E814C, 0x4
.global lbl_803DE830
lbl_803DE830:
	.incbin "baserom.dol", 0x2E8150, 0x4
.global lbl_803DE834
lbl_803DE834:
	.incbin "baserom.dol", 0x2E8154, 0x4
.global lbl_803DE838
lbl_803DE838:
	.incbin "baserom.dol", 0x2E8158, 0x1C
.global __RTTI__9MovieInfo
__RTTI__9MovieInfo:
  .4byte 0x802ac874
  .4byte 0x802ac898
  .4byte 0
.global lbl_803DE860
lbl_803DE860:
	.incbin "baserom.dol", 0x2E8180, 0x30
.global __RTTI__21MovSampleSetupSection
__RTTI__21MovSampleSetupSection:
  .4byte 0x802aca08
  .4byte 0x802aca34
  .4byte 0x53656374
  .4byte 0x696f6e00
  .4byte 0x803de898
  .4byte 0x802aca94
.global __RTTI__16MovSampleSection
__RTTI__16MovSampleSection:
  .4byte 0x802aca80
  .4byte 0x802acab0
.global lbl_803DE8B0
lbl_803DE8B0:
	.incbin "baserom.dol", 0x2E81D0, 0x4
.global lbl_803DE8B4
lbl_803DE8B4:
	.incbin "baserom.dol", 0x2E81D4, 0x4
.global lbl_803DE8B8
lbl_803DE8B8:
	.incbin "baserom.dol", 0x2E81D8, 0x4
.global lbl_803DE8BC
lbl_803DE8BC:
	.incbin "baserom.dol", 0x2E81DC, 0x4
.global lbl_803DE8C0
lbl_803DE8C0:
	.incbin "baserom.dol", 0x2E81E0, 0x4
.global lbl_803DE8C4
lbl_803DE8C4:
	.incbin "baserom.dol", 0x2E81E4, 0x4
.global lbl_803DE8C8
lbl_803DE8C8:
	.incbin "baserom.dol", 0x2E81E8, 0x4
.global lbl_803DE8CC
lbl_803DE8CC:
	.incbin "baserom.dol", 0x2E81EC, 0x4
.global __RTTI__Q215AttentionCamera5Fader
__RTTI__Q215AttentionCamera5Fader:
  .4byte 0x802acb30
  .4byte 0
.global __RTTI__10ClothFader
__RTTI__10ClothFader:
  .4byte 0x802acb24
  .4byte 0x802acb48
.global __RTTI__11SimpleFader
__RTTI__11SimpleFader:
  .4byte 0x802acb74
  .4byte 0x802acb80
.global __RTTI__12DefaultFader
__RTTI__12DefaultFader:
  .4byte 0x802acbac
  .4byte 0x802acbbc
.global lbl_803DE8F0
lbl_803DE8F0:
	.incbin "baserom.dol", 0x2E8210, 0x8
.global lbl_803DE8F8
lbl_803DE8F8:
	.incbin "baserom.dol", 0x2E8218, 0x8
.global lbl_803DE900
lbl_803DE900:
	.incbin "baserom.dol", 0x2E8220, 0x4
.global lbl_803DE904
lbl_803DE904:
	.incbin "baserom.dol", 0x2E8224, 0x4
.global lbl_803DE908
lbl_803DE908:
	.incbin "baserom.dol", 0x2E8228, 0x1C
.global __RTTI__Q29RadarInfo9PartsInfo
__RTTI__Q29RadarInfo9PartsInfo:
  .4byte 0x802acc30
  .4byte 0x802acc54
  .4byte 0
.global lbl_803DE930
lbl_803DE930:
	.incbin "baserom.dol", 0x2E8250, 0x4
.global lbl_803DE934
lbl_803DE934:
	.incbin "baserom.dol", 0x2E8254, 0x4
.global lbl_803DE938
lbl_803DE938:
	.incbin "baserom.dol", 0x2E8258, 0x4
.global lbl_803DE93C
lbl_803DE93C:
	.incbin "baserom.dol", 0x2E825C, 0x4
.global lbl_803DE940
lbl_803DE940:
	.incbin "baserom.dol", 0x2E8260, 0x4
.global lbl_803DE944
lbl_803DE944:
	.incbin "baserom.dol", 0x2E8264, 0xC
.global __RTTI__13InteractFlute
__RTTI__13InteractFlute:
  .4byte 0x802accbc
  .4byte 0x802accd8
.global __RTTI__13InteractPress
__RTTI__13InteractPress:
  .4byte 0x802acd10
  .4byte 0x802acd20
.global __RTTI__12InteractKill
__RTTI__12InteractKill:
  .4byte 0x802acd58
  .4byte 0x802acd68
.global __RTTI__15InteractSwallow
__RTTI__15InteractSwallow:
  .4byte 0x802acda0
  .4byte 0x802acdb0
.global __RTTI__14InteractAttack
__RTTI__14InteractAttack:
  .4byte 0x802acde8
  .4byte 0x802acdf8
.global __RTTI__19InteractSlimeAttack
__RTTI__19InteractSlimeAttack:
  .4byte 0x802ace30
  .4byte 0x802ace44
.global __RTTI__13InteractFlick
__RTTI__13InteractFlick:
  .4byte 0x802ace7c
  .4byte 0x802ace8c
.global __RTTI__12InteractWind
__RTTI__12InteractWind:
  .4byte 0x802acec4
  .4byte 0x802aced4
.global __RTTI__12InteractFire
__RTTI__12InteractFire:
  .4byte 0x802acf0c
  .4byte 0x802acf1c
.global __RTTI__14InteractBubble
__RTTI__14InteractBubble:
  .4byte 0x802acf54
  .4byte 0x802acf64
.global __RTTI__13InteractSpore
__RTTI__13InteractSpore:
  .4byte 0x802acfc8
  .4byte 0x802acfd8
.global __RTTI__19InteractChangeHappa
__RTTI__19InteractChangeHappa:
  .4byte 0x802ad010
  .4byte 0x802ad024
.global __RTTI__19InteractChangeColor
__RTTI__19InteractChangeColor:
  .4byte 0x802ad05c
  .4byte 0x802ad070
.global __RTTI__17InteractThrowAway
__RTTI__17InteractThrowAway:
  .4byte 0x802ad0a8
  .4byte 0x802ad0bc
.global __RTTI__12InteractBury
__RTTI__12InteractBury:
  .4byte 0x802ad0f4
  .4byte 0x802ad104
.global lbl_803DE9C8
lbl_803DE9C8:
	.incbin "baserom.dol", 0x2E82E8, 0x4
.global lbl_803DE9CC
lbl_803DE9CC:
	.incbin "baserom.dol", 0x2E82EC, 0x4
.global lbl_803DE9D0
lbl_803DE9D0:
	.incbin "baserom.dol", 0x2E82F0, 0x4
.global lbl_803DE9D4
lbl_803DE9D4:
	.incbin "baserom.dol", 0x2E82F4, 0x4
.global lbl_803DE9D8
lbl_803DE9D8:
	.incbin "baserom.dol", 0x2E82F8, 0xC
.global __RTTI__15InteractRelease
__RTTI__15InteractRelease:
  .4byte 0x802ad164
  .4byte 0x802ad180
.global __RTTI__12InteractGrab
__RTTI__12InteractGrab:
  .4byte 0x802ad1b8
  .4byte 0x802ad1c8
  .4byte 0
  .4byte 0x802ad22c
  .4byte 0
.global __RTTI__12InteractWarn
__RTTI__12InteractWarn:
  .4byte 0x802ad21c
  .4byte 0x802ad238
.global __RTTI__12InteractTalk
__RTTI__12InteractTalk:
  .4byte 0x802ad270
  .4byte 0x802ad280
.global lbl_803DEA10
lbl_803DEA10:
	.incbin "baserom.dol", 0x2E8330, 0x4
.global lbl_803DEA14
lbl_803DEA14:
	.incbin "baserom.dol", 0x2E8334, 0x4
.global lbl_803DEA18
lbl_803DEA18:
	.incbin "baserom.dol", 0x2E8338, 0x4
.global lbl_803DEA1C
lbl_803DEA1C:
	.incbin "baserom.dol", 0x2E833C, 0xC
.global __RTTI__15InteractPullout
__RTTI__15InteractPullout:
  .4byte 0x802ad2dc
  .4byte 0x802ad2f8
.global __RTTI__22Receiver$$010AICreature$$1
__RTTI__22Receiver$$010AICreature$$1:
  .4byte 0x802ad35c
  .4byte 0
.global __RTTI__8SAIEvent
__RTTI__8SAIEvent:
  .4byte 0x802ad374
  .4byte 0x802ad380
.global __RTTI__12SAIUserEvent
__RTTI__12SAIUserEvent:
  .4byte 0x802ad34c
  .4byte 0x802ad38c
.global __RTTI__14SAIGroundEvent
__RTTI__14SAIGroundEvent:
  .4byte 0x802ad3d8
  .4byte 0x802ad3e8
.global __RTTI__15SAICollideEvent
__RTTI__15SAICollideEvent:
  .4byte 0x802ad434
  .4byte 0x802ad444
.global __RTTI__14SAIBounceEvent
__RTTI__14SAIBounceEvent:
  .4byte 0x802ad490
  .4byte 0x802ad4a0
.global __RTTI__21SAIMotionLoopEndEvent
__RTTI__21SAIMotionLoopEndEvent:
  .4byte 0x802ad4ec
  .4byte 0x802ad504
.global __RTTI__23SAIMotionLoopStartEvent
__RTTI__23SAIMotionLoopStartEvent:
  .4byte 0x802ad550
  .4byte 0x802ad568
.global __RTTI__21SAIMotionAction0Event
__RTTI__21SAIMotionAction0Event:
  .4byte 0x802ad5b4
  .4byte 0x802ad5cc
.global __RTTI__18SAIMotionDoneEvent
__RTTI__18SAIMotionDoneEvent:
  .4byte 0x802ad618
  .4byte 0x802ad62c
.global lbl_803DEA80
lbl_803DEA80:
	.incbin "baserom.dol", 0x2E83A0, 0x4
.global lbl_803DEA84
lbl_803DEA84:
	.incbin "baserom.dol", 0x2E83A4, 0x4
.global lbl_803DEA88
lbl_803DEA88:
	.incbin "baserom.dol", 0x2E83A8, 0x4
.global lbl_803DEA8C
lbl_803DEA8C:
	.incbin "baserom.dol", 0x2E83AC, 0x4
.global lbl_803DEA90
lbl_803DEA90:
	.incbin "baserom.dol", 0x2E83B0, 0x4
.global lbl_803DEA94
lbl_803DEA94:
	.incbin "baserom.dol", 0x2E83B4, 0x4
.global __RTTI__22Receiver$$010AICreature$$1_1
__RTTI__22Receiver$$010AICreature$$1_1:
  .4byte 0x802ad7b0
  .4byte 0
.global __RTTI__20AState$$010AICreature$$1
__RTTI__20AState$$010AICreature$$1:
  .4byte 0x802ad7c8
  .4byte 0x802ad7dc
.global __RTTI__8SAIState
__RTTI__8SAIState:
  .4byte 0x802ad7a4
  .4byte 0x802ad7e8
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803deab0
  .4byte 0
  .4byte lbl_802AD740
  .4byte 0x802ad8e4
.global __RTTI__12SAICondition
__RTTI__12SAICondition:
  .4byte 0x802ad8d4
  .4byte 0x802ad8f0
.global __RTTI__8SAIArrow
__RTTI__8SAIArrow:
  .4byte lbl_802AD734
  .4byte 0x802ad918
.global __RTTI__26StateMachine$$010AICreature$$1
__RTTI__26StateMachine$$010AICreature$$1:
  .4byte 0x802ad964
  .4byte 0
.global __RTTI__8SimpleAI
__RTTI__8SimpleAI:
  .4byte 0x802ad958
  .4byte 0x802ad980
  .4byte 0x802ad9c8
  .4byte 0
  .4byte 0x802ad9dc
  .4byte 0
  .4byte 0x802ad9e8
  .4byte 0
  .4byte 0x802ad9f8
  .4byte 0x802ada04
  .4byte 0x802ad9bc
  .4byte 0x802ada18
.global lbl_803DEB10
lbl_803DEB10:
	.incbin "baserom.dol", 0x2E8430, 0x8
.global lbl_803DEB18
lbl_803DEB18:
	.incbin "baserom.dol", 0x2E8438, 0x4
.global lbl_803DEB1C
lbl_803DEB1C:
	.incbin "baserom.dol", 0x2E843C, 0x4
.global lbl_803DEB20
lbl_803DEB20:
	.incbin "baserom.dol", 0x2E8440, 0x4
.global lbl_803DEB24
lbl_803DEB24:
	.incbin "baserom.dol", 0x2E8444, 0x4
.global lbl_803DEB28
lbl_803DEB28:
	.incbin "baserom.dol", 0x2E8448, 0x4
.global lbl_803DEB2C
lbl_803DEB2C:
	.incbin "baserom.dol", 0x2E844C, 0x4
.global lbl_803DEB30
lbl_803DEB30:
	.incbin "baserom.dol", 0x2E8450, 0x4
.global lbl_803DEB34
lbl_803DEB34:
	.incbin "baserom.dol", 0x2E8454, 0x4
.global lbl_803DEB38
lbl_803DEB38:
	.incbin "baserom.dol", 0x2E8458, 0x4
.global lbl_803DEB3C
lbl_803DEB3C:
	.incbin "baserom.dol", 0x2E845C, 0x4
.global lbl_803DEB40
lbl_803DEB40:
	.incbin "baserom.dol", 0x2E8460, 0x4
.global lbl_803DEB44
lbl_803DEB44:
	.incbin "baserom.dol", 0x2E8464, 0x4
.global lbl_803DEB48
lbl_803DEB48:
	.incbin "baserom.dol", 0x2E8468, 0x4
.global lbl_803DEB4C
lbl_803DEB4C:
	.incbin "baserom.dol", 0x2E846C, 0x4
.global lbl_803DEB50
lbl_803DEB50:
	.incbin "baserom.dol", 0x2E8470, 0x4
.global lbl_803DEB54
lbl_803DEB54:
	.incbin "baserom.dol", 0x2E8474, 0x4
.global lbl_803DEB58
lbl_803DEB58:
	.incbin "baserom.dol", 0x2E8478, 0x4
.global lbl_803DEB5C
lbl_803DEB5C:
	.incbin "baserom.dol", 0x2E847C, 0x4
.global lbl_803DEB60
lbl_803DEB60:
	.incbin "baserom.dol", 0x2E8480, 0x4
.global lbl_803DEB64
lbl_803DEB64:
	.incbin "baserom.dol", 0x2E8484, 0x4
.global lbl_803DEB68
lbl_803DEB68:
	.incbin "baserom.dol", 0x2E8488, 0x4
.global lbl_803DEB6C
lbl_803DEB6C:
	.incbin "baserom.dol", 0x2E848C, 0x4
.global lbl_803DEB70
lbl_803DEB70:
	.incbin "baserom.dol", 0x2E8490, 0x4
.global lbl_803DEB74
lbl_803DEB74:
	.incbin "baserom.dol", 0x2E8494, 0x4
.global lbl_803DEB78
lbl_803DEB78:
	.incbin "baserom.dol", 0x2E8498, 0x4
.global lbl_803DEB7C
lbl_803DEB7C:
	.incbin "baserom.dol", 0x2E849C, 0x4
.global lbl_803DEB80
lbl_803DEB80:
	.incbin "baserom.dol", 0x2E84A0, 0x4
.global lbl_803DEB84
lbl_803DEB84:
	.incbin "baserom.dol", 0x2E84A4, 0x4
.global lbl_803DEB88
lbl_803DEB88:
	.incbin "baserom.dol", 0x2E84A8, 0x4
.global lbl_803DEB8C
lbl_803DEB8C:
	.incbin "baserom.dol", 0x2E84AC, 0x4
.global lbl_803DEB90
lbl_803DEB90:
	.incbin "baserom.dol", 0x2E84B0, 0x4
.global lbl_803DEB94
lbl_803DEB94:
	.incbin "baserom.dol", 0x2E84B4, 0x4
.global lbl_803DEB98
lbl_803DEB98:
	.incbin "baserom.dol", 0x2E84B8, 0x4
.global __RTTI__12FormArranger
__RTTI__12FormArranger:
  .4byte 0x802adbd0
  .4byte 0
.global __RTTI__12WingArranger
__RTTI__12WingArranger:
  .4byte 0x802adbc0
  .4byte 0x802adbe0
.global __RTTI__12LineArranger
__RTTI__12LineArranger:
  .4byte 0x802adbfc
  .4byte 0x802adc0c
.global __RTTI__15PyramidArranger
__RTTI__15PyramidArranger:
  .4byte 0x802adc28
  .4byte 0x802adc38
.global __RTTI__14CircleArranger
__RTTI__14CircleArranger:
  .4byte 0x802adc54
  .4byte 0x802adc64
  .4byte 0x802adc80
  .4byte 0
.global __RTTI__12FormationMgr
__RTTI__12FormationMgr:
  .4byte 0x802adca4
  .4byte 0x802adcb4
  .4byte 0
.global totalUfoParts__11PlayerState
totalUfoParts__11PlayerState:
	.incbin "baserom.dol", 0x2E84F8, 0x4
.global lbl_803DEBDC
lbl_803DEBDC:
	.incbin "baserom.dol", 0x2E84FC, 0x4
.global lbl_803DEBE0
lbl_803DEBE0:
	.incbin "baserom.dol", 0x2E8500, 0x4
.global lbl_803DEBE4
lbl_803DEBE4:
	.incbin "baserom.dol", 0x2E8504, 0x30
.global lbl_803DEC14
lbl_803DEC14:
	.incbin "baserom.dol", 0x2E8534, 0x4
.global lbl_803DEC18
lbl_803DEC18:
	.incbin "baserom.dol", 0x2E8538, 0x4
.global lbl_803DEC1C
lbl_803DEC1C:
	.incbin "baserom.dol", 0x2E853C, 0x4
.global lbl_803DEC20
lbl_803DEC20:
	.incbin "baserom.dol", 0x2E8540, 0x4
.global lbl_803DEC24
lbl_803DEC24:
	.incbin "baserom.dol", 0x2E8544, 0x4
.global lbl_803DEC28
lbl_803DEC28:
	.incbin "baserom.dol", 0x2E8548, 0x4
.global lbl_803DEC2C
lbl_803DEC2C:
	.incbin "baserom.dol", 0x2E854C, 0x4
.global lbl_803DEC30
lbl_803DEC30:
	.incbin "baserom.dol", 0x2E8550, 0x4
.global lbl_803DEC34
lbl_803DEC34:
	.incbin "baserom.dol", 0x2E8554, 0x4
.global lbl_803DEC38
lbl_803DEC38:
	.incbin "baserom.dol", 0x2E8558, 0x4
.global lbl_803DEC3C
lbl_803DEC3C:
	.incbin "baserom.dol", 0x2E855C, 0x4
.global lbl_803DEC40
lbl_803DEC40:
	.incbin "baserom.dol", 0x2E8560, 0x4
.global lbl_803DEC44
lbl_803DEC44:
	.incbin "baserom.dol", 0x2E8564, 0x4
.global lbl_803DEC48
lbl_803DEC48:
	.incbin "baserom.dol", 0x2E8568, 0x4
.global lbl_803DEC4C
lbl_803DEC4C:
	.incbin "baserom.dol", 0x2E856C, 0xC
.global __RTTI__Q211PlayerState8UfoParts
__RTTI__Q211PlayerState8UfoParts:
  .4byte 0x802addd0
  .4byte 0x802addfc
.global lbl_803DEC60
lbl_803DEC60:
	.incbin "baserom.dol", 0x2E8580, 0x8
.global lbl_803DEC68
lbl_803DEC68:
	.incbin "baserom.dol", 0x2E8588, 0x8
.global lbl_803DEC70
lbl_803DEC70:
	.incbin "baserom.dol", 0x2E8590, 0x4
.global lbl_803DEC74
lbl_803DEC74:
	.incbin "baserom.dol", 0x2E8594, 0x4
.global lbl_803DEC78
lbl_803DEC78:
	.incbin "baserom.dol", 0x2E8598, 0x4
.global lbl_803DEC7C
lbl_803DEC7C:
	.incbin "baserom.dol", 0x2E859C, 0x4
.global lbl_803DEC80
lbl_803DEC80:
	.incbin "baserom.dol", 0x2E85A0, 0x4
.global lbl_803DEC84
lbl_803DEC84:
	.incbin "baserom.dol", 0x2E85A4, 0x8
.global lbl_803DEC8C
lbl_803DEC8C:
	.incbin "baserom.dol", 0x2E85AC, 0x4
.global lbl_803DEC90
lbl_803DEC90:
	.incbin "baserom.dol", 0x2E85B0, 0x4
.global lbl_803DEC94
lbl_803DEC94:
	.incbin "baserom.dol", 0x2E85B4, 0x4
.global lbl_803DEC98
lbl_803DEC98:
	.incbin "baserom.dol", 0x2E85B8, 0x34
.global __RTTI__9DemoParms
__RTTI__9DemoParms:
  .4byte 0x802ae0fc
  .4byte 0x802ae134
  .4byte 0
  .4byte 0x4f464600
  .4byte 0x4f4e0000
  .4byte 0x5345454e
  .4byte 0
.global lbl_803DECE8
lbl_803DECE8:
	.incbin "baserom.dol", 0x2E8608, 0x8
.global lbl_803DECF0
lbl_803DECF0:
	.incbin "baserom.dol", 0x2E8610, 0x4
.global lbl_803DECF4
lbl_803DECF4:
	.incbin "baserom.dol", 0x2E8614, 0x4
.global lbl_803DECF8
lbl_803DECF8:
	.incbin "baserom.dol", 0x2E8618, 0x4
.global lbl_803DECFC
lbl_803DECFC:
	.incbin "baserom.dol", 0x2E861C, 0x4
.global lbl_803DED00
lbl_803DED00:
	.incbin "baserom.dol", 0x2E8620, 0x4
.global lbl_803DED04
lbl_803DED04:
	.incbin "baserom.dol", 0x2E8624, 0x4
.global lbl_803DED08
lbl_803DED08:
	.incbin "baserom.dol", 0x2E8628, 0x4
.global lbl_803DED0C
lbl_803DED0C:
	.incbin "baserom.dol", 0x2E862C, 0x4
.global lbl_803DED10
lbl_803DED10:
	.incbin "baserom.dol", 0x2E8630, 0x4
.global lbl_803DED14
lbl_803DED14:
	.incbin "baserom.dol", 0x2E8634, 0x4
.global lbl_803DED18
lbl_803DED18:
	.incbin "baserom.dol", 0x2E8638, 0x4
.global lbl_803DED1C
lbl_803DED1C:
	.incbin "baserom.dol", 0x2E863C, 0x4
.global lbl_803DED20
lbl_803DED20:
	.incbin "baserom.dol", 0x2E8640, 0x4
.global lbl_803DED24
lbl_803DED24:
	.incbin "baserom.dol", 0x2E8644, 0x4
.global lbl_803DED28
lbl_803DED28:
	.incbin "baserom.dol", 0x2E8648, 0x4
.global lbl_803DED2C
lbl_803DED2C:
	.incbin "baserom.dol", 0x2E864C, 0x4
.global lbl_803DED30
lbl_803DED30:
	.incbin "baserom.dol", 0x2E8650, 0x4
.global lbl_803DED34
lbl_803DED34:
	.incbin "baserom.dol", 0x2E8654, 0x4
.global lbl_803DED38
lbl_803DED38:
	.incbin "baserom.dol", 0x2E8658, 0x4
.global lbl_803DED3C
lbl_803DED3C:
	.incbin "baserom.dol", 0x2E865C, 0x4
.global lbl_803DED40
lbl_803DED40:
	.incbin "baserom.dol", 0x2E8660, 0x4
.global lbl_803DED44
lbl_803DED44:
	.incbin "baserom.dol", 0x2E8664, 0x4
.global lbl_803DED48
lbl_803DED48:
	.incbin "baserom.dol", 0x2E8668, 0x4
.global lbl_803DED4C
lbl_803DED4C:
	.incbin "baserom.dol", 0x2E866C, 0x38
.global __RTTI__10AIConstant
__RTTI__10AIConstant:
  .4byte 0x802ae740
  .4byte 0x802ae778
  .4byte 0
.global lbl_803DED90
lbl_803DED90:
	.incbin "baserom.dol", 0x2E86B0, 0x8
.global kontMode__3KIO
kontMode__3KIO:
	.incbin "baserom.dol", 0x2E86B8, 0x8
.global lbl_803DEDA0
lbl_803DEDA0:
	.incbin "baserom.dol", 0x2E86C0, 0x8
.global lbl_803DEDA8
lbl_803DEDA8:
	.incbin "baserom.dol", 0x2E86C8, 0x8
.global lbl_803DEDB0
lbl_803DEDB0:
	.incbin "baserom.dol", 0x2E86D0, 0x8
.global lbl_803DEDB8
lbl_803DEDB8:
	.incbin "baserom.dol", 0x2E86D8, 0x8
.global lbl_803DEDC0
lbl_803DEDC0:
	.incbin "baserom.dol", 0x2E86E0, 0x8
.global lbl_803DEDC8
lbl_803DEDC8:
	.incbin "baserom.dol", 0x2E86E8, 0x30
.global __RTTI__Q29KeyConfig3Key
__RTTI__Q29KeyConfig3Key:
  .4byte 0x802ae824
  .4byte 0x802ae860
.global __RTTI__9KeyConfig
__RTTI__9KeyConfig:
  .4byte 0x802ae8ac
  .4byte 0x802ae8b8
.global useLOD__6AIPerf
useLOD__6AIPerf:
	.incbin "baserom.dol", 0x2E8728, 0x1
.global showColls__6AIPerf
showColls__6AIPerf:
	.incbin "baserom.dol", 0x2E8729, 0x1
.global useCollSort__6AIPerf
useCollSort__6AIPerf:
	.incbin "baserom.dol", 0x2E872A, 0x1
.global bridgeFast__6AIPerf
bridgeFast__6AIPerf:
	.incbin "baserom.dol", 0x2E872B, 0x1
.global useASync__6AIPerf
useASync__6AIPerf:
	.incbin "baserom.dol", 0x2E872C, 0x4
.global useGrid__6AIPerf
useGrid__6AIPerf:
	.incbin "baserom.dol", 0x2E8730, 0x4
.global gridShift__6AIPerf
gridShift__6AIPerf:
	.incbin "baserom.dol", 0x2E8734, 0x4
.global aiGrid__6AIPerf
aiGrid__6AIPerf:
	.incbin "baserom.dol", 0x2E8738, 0x1
.global insQuick__6AIPerf
insQuick__6AIPerf:
	.incbin "baserom.dol", 0x2E8739, 0x1
.global iteratorCull__6AIPerf
iteratorCull__6AIPerf:
	.incbin "baserom.dol", 0x2E873A, 0x1
.global pikiMabiki__6AIPerf
pikiMabiki__6AIPerf:
	.incbin "baserom.dol", 0x2E873B, 0x1
.global optLevel__6AIPerf
optLevel__6AIPerf:
	.incbin "baserom.dol", 0x2E873C, 0x1C
.global lbl_803DEE38
lbl_803DEE38:
	.incbin "baserom.dol", 0x2E8758, 0x4
.global __RTTI__18IDelegate1$$0R4Menu$$1_4
__RTTI__18IDelegate1$$0R4Menu$$1_4:
  .4byte 0x802aedcc
  .4byte 0
.global __RTTI__25Delegate1$$06AIPerf$$4R4Menu$$1
__RTTI__25Delegate1$$06AIPerf$$4R4Menu$$1:
  .4byte 0x802aedb0
  .4byte 0x802aede0
  .4byte 0
.global lbl_803DEE50
lbl_803DEE50:
	.incbin "baserom.dol", 0x2E8770, 0x4
.global lbl_803DEE54
lbl_803DEE54:
	.incbin "baserom.dol", 0x2E8774, 0x4
.global lbl_803DEE58
lbl_803DEE58:
	.incbin "baserom.dol", 0x2E8778, 0x4
.global lbl_803DEE5C
lbl_803DEE5C:
	.incbin "baserom.dol", 0x2E877C, 0x24
.global __RTTI__14GenObjectDebug
__RTTI__14GenObjectDebug:
  .4byte 0x802aee70
  .4byte 0x802aeeb8
  .4byte 0x802aef18
  .4byte 0
.global lbl_803DEE90
lbl_803DEE90:
	.incbin "baserom.dol", 0x2E87B0, 0x28
.global __RTTI__11MemInfoNode
__RTTI__11MemInfoNode:
  .4byte 0x802aef78
  .4byte 0x802aef84
.global __RTTI__7MemInfo
__RTTI__7MemInfo:
  .4byte 0x803dee98
  .4byte 0x802aef98
  .4byte 0x54554245
  .4byte 0
.global lbl_803DEED0
lbl_803DEED0:
	.incbin "baserom.dol", 0x2E87F0, 0x4
.global lbl_803DEED4
lbl_803DEED4:
	.incbin "baserom.dol", 0x2E87F4, 0x4
.global lbl_803DEED8
lbl_803DEED8:
	.incbin "baserom.dol", 0x2E87F8, 0x4
.global lbl_803DEEDC
lbl_803DEEDC:
	.incbin "baserom.dol", 0x2E87FC, 0x4
.global lbl_803DEEE0
lbl_803DEEE0:
	.incbin "baserom.dol", 0x2E8800, 0x4
.global lbl_803DEEE4
lbl_803DEEE4:
	.incbin "baserom.dol", 0x2E8804, 0x4
.global lbl_803DEEE8
lbl_803DEEE8:
	.incbin "baserom.dol", 0x2E8808, 0x4
.global lbl_803DEEEC
lbl_803DEEEC:
	.incbin "baserom.dol", 0x2E880C, 0x4
.global lbl_803DEEF0
lbl_803DEEF0:
	.incbin "baserom.dol", 0x2E8810, 0x4
.global lbl_803DEEF4
lbl_803DEEF4:
	.incbin "baserom.dol", 0x2E8814, 0x4
.global lbl_803DEEF8
lbl_803DEEF8:
	.incbin "baserom.dol", 0x2E8818, 0x4
.global lbl_803DEEFC
lbl_803DEEFC:
	.incbin "baserom.dol", 0x2E881C, 0x4
.global lbl_803DEF00
lbl_803DEF00:
	.incbin "baserom.dol", 0x2E8820, 0x4
.global lbl_803DEF04
lbl_803DEF04:
	.incbin "baserom.dol", 0x2E8824, 0x4
.global lbl_803DEF08
lbl_803DEF08:
	.incbin "baserom.dol", 0x2E8828, 0x4
.global lbl_803DEF0C
lbl_803DEF0C:
	.incbin "baserom.dol", 0x2E882C, 0x4
.global lbl_803DEF10
lbl_803DEF10:
	.incbin "baserom.dol", 0x2E8830, 0x4
.global lbl_803DEF14
lbl_803DEF14:
	.incbin "baserom.dol", 0x2E8834, 0x4
.global lbl_803DEF18
lbl_803DEF18:
	.incbin "baserom.dol", 0x2E8838, 0x4
.global lbl_803DEF1C
lbl_803DEF1C:
	.incbin "baserom.dol", 0x2E883C, 0x4
.global lbl_803DEF20
lbl_803DEF20:
	.incbin "baserom.dol", 0x2E8840, 0x4
.global lbl_803DEF24
lbl_803DEF24:
	.incbin "baserom.dol", 0x2E8844, 0x4
.global lbl_803DEF28
lbl_803DEF28:
	.incbin "baserom.dol", 0x2E8848, 0x4
.global lbl_803DEF2C
lbl_803DEF2C:
	.incbin "baserom.dol", 0x2E884C, 0x4
.global lbl_803DEF30
lbl_803DEF30:
	.incbin "baserom.dol", 0x2E8850, 0x4
.global lbl_803DEF34
lbl_803DEF34:
	.incbin "baserom.dol", 0x2E8854, 0x4
.global lbl_803DEF38
lbl_803DEF38:
	.incbin "baserom.dol", 0x2E8858, 0x4
.global lbl_803DEF3C
lbl_803DEF3C:
	.incbin "baserom.dol", 0x2E885C, 0x4
.global lbl_803DEF40
lbl_803DEF40:
	.incbin "baserom.dol", 0x2E8860, 0x4
.global lbl_803DEF44
lbl_803DEF44:
	.incbin "baserom.dol", 0x2E8864, 0x4
.global lbl_803DEF48
lbl_803DEF48:
	.incbin "baserom.dol", 0x2E8868, 0x4
.global lbl_803DEF4C
lbl_803DEF4C:
	.incbin "baserom.dol", 0x2E886C, 0x4
.global lbl_803DEF50
lbl_803DEF50:
	.incbin "baserom.dol", 0x2E8870, 0x4
.global lbl_803DEF54
lbl_803DEF54:
	.incbin "baserom.dol", 0x2E8874, 0x4
.global lbl_803DEF58
lbl_803DEF58:
	.incbin "baserom.dol", 0x2E8878, 0x4
.global lbl_803DEF5C
lbl_803DEF5C:
	.incbin "baserom.dol", 0x2E887C, 0x4
.global lbl_803DEF60
lbl_803DEF60:
	.incbin "baserom.dol", 0x2E8880, 0x4
.global lbl_803DEF64
lbl_803DEF64:
	.incbin "baserom.dol", 0x2E8884, 0x4
.global lbl_803DEF68
lbl_803DEF68:
	.incbin "baserom.dol", 0x2E8888, 0x4
.global lbl_803DEF6C
lbl_803DEF6C:
	.incbin "baserom.dol", 0x2E888C, 0x4
.global lbl_803DEF70
lbl_803DEF70:
	.incbin "baserom.dol", 0x2E8890, 0x4
.global lbl_803DEF74
lbl_803DEF74:
	.incbin "baserom.dol", 0x2E8894, 0x4
.global lbl_803DEF78
lbl_803DEF78:
	.incbin "baserom.dol", 0x2E8898, 0x4
.global lbl_803DEF7C
lbl_803DEF7C:
	.incbin "baserom.dol", 0x2E889C, 0x4
.global lbl_803DEF80
lbl_803DEF80:
	.incbin "baserom.dol", 0x2E88A0, 0x4
.global lbl_803DEF84
lbl_803DEF84:
	.incbin "baserom.dol", 0x2E88A4, 0x4
.global lbl_803DEF88
lbl_803DEF88:
	.incbin "baserom.dol", 0x2E88A8, 0x4
.global lbl_803DEF8C
lbl_803DEF8C:
	.incbin "baserom.dol", 0x2E88AC, 0x4
.global lbl_803DEF90
lbl_803DEF90:
	.incbin "baserom.dol", 0x2E88B0, 0x4
.global lbl_803DEF94
lbl_803DEF94:
	.incbin "baserom.dol", 0x2E88B4, 0x4
.global lbl_803DEF98
lbl_803DEF98:
	.incbin "baserom.dol", 0x2E88B8, 0x4
.global lbl_803DEF9C
lbl_803DEF9C:
	.incbin "baserom.dol", 0x2E88BC, 0x4
.global lbl_803DEFA0
lbl_803DEFA0:
	.incbin "baserom.dol", 0x2E88C0, 0x4
.global lbl_803DEFA4
lbl_803DEFA4:
	.incbin "baserom.dol", 0x2E88C4, 0x4
.global lbl_803DEFA8
lbl_803DEFA8:
	.incbin "baserom.dol", 0x2E88C8, 0x4
.global lbl_803DEFAC
lbl_803DEFAC:
	.incbin "baserom.dol", 0x2E88CC, 0x4
.global lbl_803DEFB0
lbl_803DEFB0:
	.incbin "baserom.dol", 0x2E88D0, 0x4
.global lbl_803DEFB4
lbl_803DEFB4:
	.incbin "baserom.dol", 0x2E88D4, 0x4
.global lbl_803DEFB8
lbl_803DEFB8:
	.incbin "baserom.dol", 0x2E88D8, 0x4
.global lbl_803DEFBC
lbl_803DEFBC:
	.incbin "baserom.dol", 0x2E88DC, 0x4
.global lbl_803DEFC0
lbl_803DEFC0:
	.incbin "baserom.dol", 0x2E88E0, 0x4
.global lbl_803DEFC4
lbl_803DEFC4:
	.incbin "baserom.dol", 0x2E88E4, 0x4
.global lbl_803DEFC8
lbl_803DEFC8:
	.incbin "baserom.dol", 0x2E88E8, 0x4
.global lbl_803DEFCC
lbl_803DEFCC:
	.incbin "baserom.dol", 0x2E88EC, 0x4
.global lbl_803DEFD0
lbl_803DEFD0:
	.incbin "baserom.dol", 0x2E88F0, 0x4
.global lbl_803DEFD4
lbl_803DEFD4:
	.incbin "baserom.dol", 0x2E88F4, 0x4
.global lbl_803DEFD8
lbl_803DEFD8:
	.incbin "baserom.dol", 0x2E88F8, 0x4
.global lbl_803DEFDC
lbl_803DEFDC:
	.incbin "baserom.dol", 0x2E88FC, 0x4
.global lbl_803DEFE0
lbl_803DEFE0:
	.incbin "baserom.dol", 0x2E8900, 0x4
.global lbl_803DEFE4
lbl_803DEFE4:
	.incbin "baserom.dol", 0x2E8904, 0x4
.global lbl_803DEFE8
lbl_803DEFE8:
	.incbin "baserom.dol", 0x2E8908, 0x4
.global lbl_803DEFEC
lbl_803DEFEC:
	.incbin "baserom.dol", 0x2E890C, 0x4
.global lbl_803DEFF0
lbl_803DEFF0:
	.incbin "baserom.dol", 0x2E8910, 0x4
.global lbl_803DEFF4
lbl_803DEFF4:
	.incbin "baserom.dol", 0x2E8914, 0x4
.global lbl_803DEFF8
lbl_803DEFF8:
	.incbin "baserom.dol", 0x2E8918, 0x4
.global lbl_803DEFFC
lbl_803DEFFC:
	.incbin "baserom.dol", 0x2E891C, 0x4
.global lbl_803DF000
lbl_803DF000:
	.incbin "baserom.dol", 0x2E8920, 0x4
.global lbl_803DF004
lbl_803DF004:
	.incbin "baserom.dol", 0x2E8924, 0x4
.global lbl_803DF008
lbl_803DF008:
	.incbin "baserom.dol", 0x2E8928, 0x4
.global lbl_803DF00C
lbl_803DF00C:
	.incbin "baserom.dol", 0x2E892C, 0x4
.global lbl_803DF010
lbl_803DF010:
	.incbin "baserom.dol", 0x2E8930, 0x4
.global lbl_803DF014
lbl_803DF014:
	.incbin "baserom.dol", 0x2E8934, 0x4
.global lbl_803DF018
lbl_803DF018:
	.incbin "baserom.dol", 0x2E8938, 0x4
.global lbl_803DF01C
lbl_803DF01C:
	.incbin "baserom.dol", 0x2E893C, 0x4
.global lbl_803DF020
lbl_803DF020:
	.incbin "baserom.dol", 0x2E8940, 0x4
.global lbl_803DF024
lbl_803DF024:
	.incbin "baserom.dol", 0x2E8944, 0x4
.global lbl_803DF028
lbl_803DF028:
	.incbin "baserom.dol", 0x2E8948, 0x4
.global lbl_803DF02C
lbl_803DF02C:
	.incbin "baserom.dol", 0x2E894C, 0x24
.global lbl_803DF050
lbl_803DF050:
	.incbin "baserom.dol", 0x2E8970, 0x4
.global lbl_803DF054
lbl_803DF054:
	.incbin "baserom.dol", 0x2E8974, 0x34
.global __RTTI__12DynCollShape_1
__RTTI__12DynCollShape_1:
  .4byte 0x802af280
  .4byte 0x802af290
.global __RTTI__16CreatureCollPart
__RTTI__16CreatureCollPart:
  .4byte 0x802af214
  .4byte 0x802af2b4
.global lbl_803DF098
lbl_803DF098:
	.incbin "baserom.dol", 0x2E89B8, 0x4
.global lbl_803DF09C
lbl_803DF09C:
	.incbin "baserom.dol", 0x2E89BC, 0x4
.global lbl_803DF0A0
lbl_803DF0A0:
	.incbin "baserom.dol", 0x2E89C0, 0x4
.global lbl_803DF0A4
lbl_803DF0A4:
	.incbin "baserom.dol", 0x2E89C4, 0x4
.global lbl_803DF0A8
lbl_803DF0A8:
	.incbin "baserom.dol", 0x2E89C8, 0x4
.global lbl_803DF0AC
lbl_803DF0AC:
	.incbin "baserom.dol", 0x2E89CC, 0x4
.global lbl_803DF0B0
lbl_803DF0B0:
	.incbin "baserom.dol", 0x2E89D0, 0x4
.global lbl_803DF0B4
lbl_803DF0B4:
	.incbin "baserom.dol", 0x2E89D4, 0x4
.global lbl_803DF0B8
lbl_803DF0B8:
	.incbin "baserom.dol", 0x2E89D8, 0x4
.global lbl_803DF0BC
lbl_803DF0BC:
	.incbin "baserom.dol", 0x2E89DC, 0x4
.global lbl_803DF0C0
lbl_803DF0C0:
	.incbin "baserom.dol", 0x2E89E0, 0x4
.global lbl_803DF0C4
lbl_803DF0C4:
	.incbin "baserom.dol", 0x2E89E4, 0x4
.global lbl_803DF0C8
lbl_803DF0C8:
	.incbin "baserom.dol", 0x2E89E8, 0x4
.global lbl_803DF0CC
lbl_803DF0CC:
	.incbin "baserom.dol", 0x2E89EC, 0x4
.global lbl_803DF0D0
lbl_803DF0D0:
	.incbin "baserom.dol", 0x2E89F0, 0x4
.global lbl_803DF0D4
lbl_803DF0D4:
	.incbin "baserom.dol", 0x2E89F4, 0x4
.global lbl_803DF0D8
lbl_803DF0D8:
	.incbin "baserom.dol", 0x2E89F8, 0x4
.global lbl_803DF0DC
lbl_803DF0DC:
	.incbin "baserom.dol", 0x2E89FC, 0x4
.global lbl_803DF0E0
lbl_803DF0E0:
	.incbin "baserom.dol", 0x2E8A00, 0x4
.global lbl_803DF0E4
lbl_803DF0E4:
	.incbin "baserom.dol", 0x2E8A04, 0x4
.global lbl_803DF0E8
lbl_803DF0E8:
	.incbin "baserom.dol", 0x2E8A08, 0x18
.global lbl_803DF100
lbl_803DF100:
	.incbin "baserom.dol", 0x2E8A20, 0x4
.global lbl_803DF104
lbl_803DF104:
	.incbin "baserom.dol", 0x2E8A24, 0x4
.global lbl_803DF108
lbl_803DF108:
	.incbin "baserom.dol", 0x2E8A28, 0x4
.global lbl_803DF10C
lbl_803DF10C:
	.incbin "baserom.dol", 0x2E8A2C, 0x4
.global lbl_803DF110
lbl_803DF110:
	.incbin "baserom.dol", 0x2E8A30, 0x4
.global lbl_803DF114
lbl_803DF114:
	.incbin "baserom.dol", 0x2E8A34, 0x4
.global lbl_803DF118
lbl_803DF118:
	.incbin "baserom.dol", 0x2E8A38, 0x4
.global lbl_803DF11C
lbl_803DF11C:
	.incbin "baserom.dol", 0x2E8A3C, 0x4
.global lbl_803DF120
lbl_803DF120:
	.incbin "baserom.dol", 0x2E8A40, 0x4
.global lbl_803DF124
lbl_803DF124:
	.incbin "baserom.dol", 0x2E8A44, 0x4
.global lbl_803DF128
lbl_803DF128:
	.incbin "baserom.dol", 0x2E8A48, 0x4
.global lbl_803DF12C
lbl_803DF12C:
	.incbin "baserom.dol", 0x2E8A4C, 0x4
.global lbl_803DF130
lbl_803DF130:
	.incbin "baserom.dol", 0x2E8A50, 0x4
.global lbl_803DF134
lbl_803DF134:
	.incbin "baserom.dol", 0x2E8A54, 0x4
.global lbl_803DF138
lbl_803DF138:
	.incbin "baserom.dol", 0x2E8A58, 0x4
.global lbl_803DF13C
lbl_803DF13C:
	.incbin "baserom.dol", 0x2E8A5C, 0x4
.global lbl_803DF140
lbl_803DF140:
	.incbin "baserom.dol", 0x2E8A60, 0x4
.global lbl_803DF144
lbl_803DF144:
	.incbin "baserom.dol", 0x2E8A64, 0x4
.global lbl_803DF148
lbl_803DF148:
	.incbin "baserom.dol", 0x2E8A68, 0x4
.global lbl_803DF14C
lbl_803DF14C:
	.incbin "baserom.dol", 0x2E8A6C, 0x4
.global lbl_803DF150
lbl_803DF150:
	.incbin "baserom.dol", 0x2E8A70, 0xC
.global __RTTI__8Stickers
__RTTI__8Stickers:
  .4byte 0x802af378
  .4byte 0x802af390
  .4byte 0
.global lbl_803DF168
lbl_803DF168:
	.incbin "baserom.dol", 0x2E8A88, 0x4
.global lbl_803DF16C
lbl_803DF16C:
	.incbin "baserom.dol", 0x2E8A8C, 0x4
.global lbl_803DF170
lbl_803DF170:
	.incbin "baserom.dol", 0x2E8A90, 0x4
.global lbl_803DF174
lbl_803DF174:
	.incbin "baserom.dol", 0x2E8A94, 0x4
.global lbl_803DF178
lbl_803DF178:
	.incbin "baserom.dol", 0x2E8A98, 0x4
.global lbl_803DF17C
lbl_803DF17C:
	.incbin "baserom.dol", 0x2E8A9C, 0x4
.global lbl_803DF180
lbl_803DF180:
	.incbin "baserom.dol", 0x2E8AA0, 0x4
.global lbl_803DF184
lbl_803DF184:
	.incbin "baserom.dol", 0x2E8AA4, 0x4
.global lbl_803DF188
lbl_803DF188:
	.incbin "baserom.dol", 0x2E8AA8, 0x4
.global lbl_803DF18C
lbl_803DF18C:
	.incbin "baserom.dol", 0x2E8AAC, 0x4
.global lbl_803DF190
lbl_803DF190:
	.incbin "baserom.dol", 0x2E8AB0, 0x4
.global lbl_803DF194
lbl_803DF194:
	.incbin "baserom.dol", 0x2E8AB4, 0x4
.global lbl_803DF198
lbl_803DF198:
	.incbin "baserom.dol", 0x2E8AB8, 0x4
.global lbl_803DF19C
lbl_803DF19C:
	.incbin "baserom.dol", 0x2E8ABC, 0x4
.global lbl_803DF1A0
lbl_803DF1A0:
	.incbin "baserom.dol", 0x2E8AC0, 0x4
.global lbl_803DF1A4
lbl_803DF1A4:
	.incbin "baserom.dol", 0x2E8AC4, 0x4
.global lbl_803DF1A8
lbl_803DF1A8:
	.incbin "baserom.dol", 0x2E8AC8, 0x4
.global lbl_803DF1AC
lbl_803DF1AC:
	.incbin "baserom.dol", 0x2E8ACC, 0x4
.global lbl_803DF1B0
lbl_803DF1B0:
	.incbin "baserom.dol", 0x2E8AD0, 0x4
.global lbl_803DF1B4
lbl_803DF1B4:
	.incbin "baserom.dol", 0x2E8AD4, 0x4
.global lbl_803DF1B8
lbl_803DF1B8:
	.incbin "baserom.dol", 0x2E8AD8, 0x24
.global __RTTI__12DualCreature
__RTTI__12DualCreature:
  .4byte 0x802af48c
  .4byte 0x802af49c
.global __RTTI__11PelCreature
__RTTI__11PelCreature:
  .4byte 0x802af41c
  .4byte 0x802af4c0
  .4byte 0
.global lbl_803DF1F0
lbl_803DF1F0:
	.incbin "baserom.dol", 0x2E8B10, 0x4
.global lbl_803DF1F4
lbl_803DF1F4:
	.incbin "baserom.dol", 0x2E8B14, 0x4
.global lbl_803DF1F8
lbl_803DF1F8:
	.incbin "baserom.dol", 0x2E8B18, 0x4
.global lbl_803DF1FC
lbl_803DF1FC:
	.incbin "baserom.dol", 0x2E8B1C, 0x4
.global lbl_803DF200
lbl_803DF200:
	.incbin "baserom.dol", 0x2E8B20, 0x4
.global lbl_803DF204
lbl_803DF204:
	.incbin "baserom.dol", 0x2E8B24, 0x4
.global lbl_803DF208
lbl_803DF208:
	.incbin "baserom.dol", 0x2E8B28, 0x4
.global lbl_803DF20C
lbl_803DF20C:
	.incbin "baserom.dol", 0x2E8B2C, 0x4
.global lbl_803DF210
lbl_803DF210:
	.incbin "baserom.dol", 0x2E8B30, 0x4
.global lbl_803DF214
lbl_803DF214:
	.incbin "baserom.dol", 0x2E8B34, 0x4
.global lbl_803DF218
lbl_803DF218:
	.incbin "baserom.dol", 0x2E8B38, 0x4
.global lbl_803DF21C
lbl_803DF21C:
	.incbin "baserom.dol", 0x2E8B3C, 0x4
.global lbl_803DF220
lbl_803DF220:
	.incbin "baserom.dol", 0x2E8B40, 0x4
.global lbl_803DF224
lbl_803DF224:
	.incbin "baserom.dol", 0x2E8B44, 0x4
.global lbl_803DF228
lbl_803DF228:
	.incbin "baserom.dol", 0x2E8B48, 0x4
.global lbl_803DF22C
lbl_803DF22C:
	.incbin "baserom.dol", 0x2E8B4C, 0x4
.global lbl_803DF230
lbl_803DF230:
	.incbin "baserom.dol", 0x2E8B50, 0x4
.global lbl_803DF234
lbl_803DF234:
	.incbin "baserom.dol", 0x2E8B54, 0x4
.global lbl_803DF238
lbl_803DF238:
	.incbin "baserom.dol", 0x2E8B58, 0x4
.global lbl_803DF23C
lbl_803DF23C:
	.incbin "baserom.dol", 0x2E8B5C, 0x4
.global lbl_803DF240
lbl_803DF240:
	.incbin "baserom.dol", 0x2E8B60, 0x4
.global lbl_803DF244
lbl_803DF244:
	.incbin "baserom.dol", 0x2E8B64, 0x4
.global lbl_803DF248
lbl_803DF248:
	.incbin "baserom.dol", 0x2E8B68, 0x4
.global lbl_803DF24C
lbl_803DF24C:
	.incbin "baserom.dol", 0x2E8B6C, 0x4
.global lbl_803DF250
lbl_803DF250:
	.incbin "baserom.dol", 0x2E8B70, 0x4
.global lbl_803DF254
lbl_803DF254:
	.incbin "baserom.dol", 0x2E8B74, 0x4
.global lbl_803DF258
lbl_803DF258:
	.incbin "baserom.dol", 0x2E8B78, 0x4
.global lbl_803DF25C
lbl_803DF25C:
	.incbin "baserom.dol", 0x2E8B7C, 0x4
.global lbl_803DF260
lbl_803DF260:
	.incbin "baserom.dol", 0x2E8B80, 0x4
.global lbl_803DF264
lbl_803DF264:
	.incbin "baserom.dol", 0x2E8B84, 0x4
.global lbl_803DF268
lbl_803DF268:
	.incbin "baserom.dol", 0x2E8B88, 0x4
.global lbl_803DF26C
lbl_803DF26C:
	.incbin "baserom.dol", 0x2E8B8C, 0x4
.global lbl_803DF270
lbl_803DF270:
	.incbin "baserom.dol", 0x2E8B90, 0x4
.global lbl_803DF274
lbl_803DF274:
	.incbin "baserom.dol", 0x2E8B94, 0x4
.global lbl_803DF278
lbl_803DF278:
	.incbin "baserom.dol", 0x2E8B98, 0x4
.global lbl_803DF27C
lbl_803DF27C:
	.incbin "baserom.dol", 0x2E8B9C, 0x4
.global lbl_803DF280
lbl_803DF280:
	.incbin "baserom.dol", 0x2E8BA0, 0x4
.global lbl_803DF284
lbl_803DF284:
	.incbin "baserom.dol", 0x2E8BA4, 0x4
.global lbl_803DF288
lbl_803DF288:
	.incbin "baserom.dol", 0x2E8BA8, 0x4
.global lbl_803DF28C
lbl_803DF28C:
	.incbin "baserom.dol", 0x2E8BAC, 0x4
.global lbl_803DF290
lbl_803DF290:
	.incbin "baserom.dol", 0x2E8BB0, 0x4
.global lbl_803DF294
lbl_803DF294:
	.incbin "baserom.dol", 0x2E8BB4, 0x4
.global lbl_803DF298
lbl_803DF298:
	.incbin "baserom.dol", 0x2E8BB8, 0x4
.global lbl_803DF29C
lbl_803DF29C:
	.incbin "baserom.dol", 0x2E8BBC, 0x4
.global lbl_803DF2A0
lbl_803DF2A0:
	.incbin "baserom.dol", 0x2E8BC0, 0x4C
.global __RTTI__11DynParticle
__RTTI__11DynParticle:
  .4byte 0x802af944
  .4byte 0x802af95c
  .4byte 0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803df2f8
  .4byte 0
  .4byte lbl_802AF9D4
  .4byte 0x802afa00
.global __RTTI__13EventListener
__RTTI__13EventListener:
  .4byte 0x802af9f0
  .4byte 0x802afa0c
.global aiGridShift__8FastGrid
aiGridShift__8FastGrid:
	.incbin "baserom.dol", 0x2E8C38, 0x4
.global lbl_803DF31C
lbl_803DF31C:
	.incbin "baserom.dol", 0x2E8C3C, 0x104
.global lbl_803DF420
lbl_803DF420:
	.incbin "baserom.dol", 0x2E8D40, 0x4
.global lbl_803DF424
lbl_803DF424:
	.incbin "baserom.dol", 0x2E8D44, 0x4
.global lbl_803DF428
lbl_803DF428:
	.incbin "baserom.dol", 0x2E8D48, 0x4
.global lbl_803DF42C
lbl_803DF42C:
	.incbin "baserom.dol", 0x2E8D4C, 0x4
.global lbl_803DF430
lbl_803DF430:
	.incbin "baserom.dol", 0x2E8D50, 0x4
.global lbl_803DF434
lbl_803DF434:
	.incbin "baserom.dol", 0x2E8D54, 0x4
.global lbl_803DF438
lbl_803DF438:
	.incbin "baserom.dol", 0x2E8D58, 0x4
.global lbl_803DF43C
lbl_803DF43C:
	.incbin "baserom.dol", 0x2E8D5C, 0x4
.global lbl_803DF440
lbl_803DF440:
	.incbin "baserom.dol", 0x2E8D60, 0x4
.global lbl_803DF444
lbl_803DF444:
	.incbin "baserom.dol", 0x2E8D64, 0x4
.global lbl_803DF448
lbl_803DF448:
	.incbin "baserom.dol", 0x2E8D68, 0x4
.global lbl_803DF44C
lbl_803DF44C:
	.incbin "baserom.dol", 0x2E8D6C, 0x4
.global lbl_803DF450
lbl_803DF450:
	.incbin "baserom.dol", 0x2E8D70, 0x4
.global lbl_803DF454
lbl_803DF454:
	.incbin "baserom.dol", 0x2E8D74, 0x4
.global lbl_803DF458
lbl_803DF458:
	.incbin "baserom.dol", 0x2E8D78, 0x4
.global lbl_803DF45C
lbl_803DF45C:
	.incbin "baserom.dol", 0x2E8D7C, 0x4
.global lbl_803DF460
lbl_803DF460:
	.incbin "baserom.dol", 0x2E8D80, 0x4
.global lbl_803DF464
lbl_803DF464:
	.incbin "baserom.dol", 0x2E8D84, 0x4
.global lbl_803DF468
lbl_803DF468:
	.incbin "baserom.dol", 0x2E8D88, 0x4
.global lbl_803DF46C
lbl_803DF46C:
	.incbin "baserom.dol", 0x2E8D8C, 0x4
.global lbl_803DF470
lbl_803DF470:
	.incbin "baserom.dol", 0x2E8D90, 0x4
.global lbl_803DF474
lbl_803DF474:
	.incbin "baserom.dol", 0x2E8D94, 0x4
.global lbl_803DF478
lbl_803DF478:
	.incbin "baserom.dol", 0x2E8D98, 0x4
.global lbl_803DF47C
lbl_803DF47C:
	.incbin "baserom.dol", 0x2E8D9C, 0x4
.global lbl_803DF480
lbl_803DF480:
	.incbin "baserom.dol", 0x2E8DA0, 0x4
.global lbl_803DF484
lbl_803DF484:
	.incbin "baserom.dol", 0x2E8DA4, 0x4
.global lbl_803DF488
lbl_803DF488:
	.incbin "baserom.dol", 0x2E8DA8, 0x4
.global lbl_803DF48C
lbl_803DF48C:
	.incbin "baserom.dol", 0x2E8DAC, 0x4
.global lbl_803DF490
lbl_803DF490:
	.incbin "baserom.dol", 0x2E8DB0, 0x4
.global lbl_803DF494
lbl_803DF494:
	.incbin "baserom.dol", 0x2E8DB4, 0x4
.global lbl_803DF498
lbl_803DF498:
	.incbin "baserom.dol", 0x2E8DB8, 0x4
.global lbl_803DF49C
lbl_803DF49C:
	.incbin "baserom.dol", 0x2E8DBC, 0x4
.global lbl_803DF4A0
lbl_803DF4A0:
	.incbin "baserom.dol", 0x2E8DC0, 0x4
.global lbl_803DF4A4
lbl_803DF4A4:
	.incbin "baserom.dol", 0x2E8DC4, 0x4
.global lbl_803DF4A8
lbl_803DF4A8:
	.incbin "baserom.dol", 0x2E8DC8, 0x4
.global lbl_803DF4AC
lbl_803DF4AC:
	.incbin "baserom.dol", 0x2E8DCC, 0x4
.global lbl_803DF4B0
lbl_803DF4B0:
	.incbin "baserom.dol", 0x2E8DD0, 0x4
.global lbl_803DF4B4
lbl_803DF4B4:
	.incbin "baserom.dol", 0x2E8DD4, 0x4
.global lbl_803DF4B8
lbl_803DF4B8:
	.incbin "baserom.dol", 0x2E8DD8, 0x4
.global lbl_803DF4BC
lbl_803DF4BC:
	.incbin "baserom.dol", 0x2E8DDC, 0x4
.global lbl_803DF4C0
lbl_803DF4C0:
	.incbin "baserom.dol", 0x2E8DE0, 0x4
.global lbl_803DF4C4
lbl_803DF4C4:
	.incbin "baserom.dol", 0x2E8DE4, 0x4
.global lbl_803DF4C8
lbl_803DF4C8:
	.incbin "baserom.dol", 0x2E8DE8, 0x4
.global lbl_803DF4CC
lbl_803DF4CC:
	.incbin "baserom.dol", 0x2E8DEC, 0x4
.global lbl_803DF4D0
lbl_803DF4D0:
	.incbin "baserom.dol", 0x2E8DF0, 0x4
.global lbl_803DF4D4
lbl_803DF4D4:
	.incbin "baserom.dol", 0x2E8DF4, 0x4
.global lbl_803DF4D8
lbl_803DF4D8:
	.incbin "baserom.dol", 0x2E8DF8, 0x4
.global lbl_803DF4DC
lbl_803DF4DC:
	.incbin "baserom.dol", 0x2E8DFC, 0x4
.global lbl_803DF4E0
lbl_803DF4E0:
	.incbin "baserom.dol", 0x2E8E00, 0x4
.global lbl_803DF4E4
lbl_803DF4E4:
	.incbin "baserom.dol", 0x2E8E04, 0x4
.global lbl_803DF4E8
lbl_803DF4E8:
	.incbin "baserom.dol", 0x2E8E08, 0x4
.global lbl_803DF4EC
lbl_803DF4EC:
	.incbin "baserom.dol", 0x2E8E0C, 0x4
.global lbl_803DF4F0
lbl_803DF4F0:
	.incbin "baserom.dol", 0x2E8E10, 0x4
.global lbl_803DF4F4
lbl_803DF4F4:
	.incbin "baserom.dol", 0x2E8E14, 0x4
.global lbl_803DF4F8
lbl_803DF4F8:
	.incbin "baserom.dol", 0x2E8E18, 0x4
.global lbl_803DF4FC
lbl_803DF4FC:
	.incbin "baserom.dol", 0x2E8E1C, 0x4
.global lbl_803DF500
lbl_803DF500:
	.incbin "baserom.dol", 0x2E8E20, 0x4
.global lbl_803DF504
lbl_803DF504:
	.incbin "baserom.dol", 0x2E8E24, 0x4
.global lbl_803DF508
lbl_803DF508:
	.incbin "baserom.dol", 0x2E8E28, 0x4
.global lbl_803DF50C
lbl_803DF50C:
	.incbin "baserom.dol", 0x2E8E2C, 0x4
.global lbl_803DF510
lbl_803DF510:
	.incbin "baserom.dol", 0x2E8E30, 0x4
.global lbl_803DF514
lbl_803DF514:
	.incbin "baserom.dol", 0x2E8E34, 0x4
.global lbl_803DF518
lbl_803DF518:
	.incbin "baserom.dol", 0x2E8E38, 0x4
.global lbl_803DF51C
lbl_803DF51C:
	.incbin "baserom.dol", 0x2E8E3C, 0x4
.global lbl_803DF520
lbl_803DF520:
	.incbin "baserom.dol", 0x2E8E40, 0x4
.global lbl_803DF524
lbl_803DF524:
	.incbin "baserom.dol", 0x2E8E44, 0x4
.global lbl_803DF528
lbl_803DF528:
	.incbin "baserom.dol", 0x2E8E48, 0x4
.global lbl_803DF52C
lbl_803DF52C:
	.incbin "baserom.dol", 0x2E8E4C, 0x4
.global lbl_803DF530
lbl_803DF530:
	.incbin "baserom.dol", 0x2E8E50, 0x4
.global lbl_803DF534
lbl_803DF534:
	.incbin "baserom.dol", 0x2E8E54, 0x4
.global lbl_803DF538
lbl_803DF538:
	.incbin "baserom.dol", 0x2E8E58, 0x4
.global lbl_803DF53C
lbl_803DF53C:
	.incbin "baserom.dol", 0x2E8E5C, 0x4
.global lbl_803DF540
lbl_803DF540:
	.incbin "baserom.dol", 0x2E8E60, 0x4
.global lbl_803DF544
lbl_803DF544:
	.incbin "baserom.dol", 0x2E8E64, 0x4
.global lbl_803DF548
lbl_803DF548:
	.incbin "baserom.dol", 0x2E8E68, 0x4
.global lbl_803DF54C
lbl_803DF54C:
	.incbin "baserom.dol", 0x2E8E6C, 0x4
.global lbl_803DF550
lbl_803DF550:
	.incbin "baserom.dol", 0x2E8E70, 0x8
.global lbl_803DF558
lbl_803DF558:
	.incbin "baserom.dol", 0x2E8E78, 0x4
.global lbl_803DF55C
lbl_803DF55C:
	.incbin "baserom.dol", 0x2E8E7C, 0x4
.global lbl_803DF560
lbl_803DF560:
	.incbin "baserom.dol", 0x2E8E80, 0x4
.global lbl_803DF564
lbl_803DF564:
	.incbin "baserom.dol", 0x2E8E84, 0x4
.global lbl_803DF568
lbl_803DF568:
	.incbin "baserom.dol", 0x2E8E88, 0x4
.global lbl_803DF56C
lbl_803DF56C:
	.incbin "baserom.dol", 0x2E8E8C, 0x4
.global lbl_803DF570
lbl_803DF570:
	.incbin "baserom.dol", 0x2E8E90, 0x8
.global lbl_803DF578
lbl_803DF578:
	.incbin "baserom.dol", 0x2E8E98, 0x8
.global lbl_803DF580
lbl_803DF580:
	.incbin "baserom.dol", 0x2E8EA0, 0x48
.global __RTTI__9PelletMgr
__RTTI__9PelletMgr:
  .4byte 0x802b00b0
  .4byte 0x802b0154
  .4byte 0x802b021c
  .4byte 0
.global __RTTI__10PelletProp
__RTTI__10PelletProp:
  .4byte 0x802b0210
  .4byte 0x802b022c
.global __RTTI__Q29PelletMgr7UseNode
__RTTI__Q29PelletMgr7UseNode:
  .4byte 0x802b0250
  .4byte 0x802b0264
  .4byte 0x50656c6c
  .4byte 0x65740000
  .4byte 0x802b02c0
  .4byte 0
  .4byte 0x802b02d4
  .4byte 0
  .4byte 0x802b02e0
  .4byte 0
  .4byte 0x802b02f0
  .4byte 0x802b02fc
  .4byte 0x802b0310
  .4byte 0x802b031c
.global __RTTI__12DualCreature_1
__RTTI__12DualCreature_1:
  .4byte 0x802b0338
  .4byte 0x802b0348
.global __RTTI__6Pellet
__RTTI__6Pellet:
  .4byte 0x803df5e8
  .4byte 0x802b036c
.global __RTTI__21StateMachine$$06Pellet$$1
__RTTI__21StateMachine$$06Pellet$$1:
  .4byte 0x802b04d0
  .4byte 0
  .4byte 0x4b456666
  .4byte 0x65637400
  .4byte 0x802b0500
  .4byte 0
  .4byte 0x802b0524
  .4byte 0
  .4byte 0x802b0564
  .4byte 0
.global __RTTI__7KEffect
__RTTI__7KEffect:
  .4byte 0x803df630
  .4byte 0x802b0590
  .4byte 0x802b0628
  .4byte 0
.global __RTTI__12PelletConfig
__RTTI__12PelletConfig:
  .4byte 0x802b0618
  .4byte 0x802b0634
  .4byte 0x802b0678
  .4byte 0
.global lbl_803DF670
lbl_803DF670:
	.incbin "baserom.dol", 0x2E8F90, 0x4
.global lbl_803DF674
lbl_803DF674:
	.incbin "baserom.dol", 0x2E8F94, 0x8
.global lbl_803DF67C
lbl_803DF67C:
	.incbin "baserom.dol", 0x2E8F9C, 0x4
.global lbl_803DF680
lbl_803DF680:
	.incbin "baserom.dol", 0x2E8FA0, 0x8
.global lbl_803DF688
lbl_803DF688:
	.incbin "baserom.dol", 0x2E8FA8, 0x3C
.global __RTTI__18PaniPelletAnimator
__RTTI__18PaniPelletAnimator:
  .4byte 0x802b07c0
  .4byte 0x802b07fc
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803df6cc
  .4byte 0
  .4byte lbl_802B0764
  .4byte 0x802b083c
  .4byte 0x802b0848
  .4byte 0
.global __RTTI__14PelletAnimInfo
__RTTI__14PelletAnimInfo:
  .4byte 0x802b082c
  .4byte 0x802b0854
  .4byte 0x802b089c
  .4byte 0
  .4byte 0
  .4byte 0x802b0930
  .4byte 0
  .4byte 0x47656e42
  .4byte 0x61736500
  .4byte 0x803df708
  .4byte 0x802b093c
  .4byte 0x802b0948
  .4byte 0x802b0954
.global __RTTI__15GenObjectPellet
__RTTI__15GenObjectPellet:
  .4byte 0x802b0920
  .4byte 0x802b0968
.global lbl_803DF728
lbl_803DF728:
	.incbin "baserom.dol", 0x2E9048, 0x8
.global lbl_803DF730
lbl_803DF730:
	.incbin "baserom.dol", 0x2E9050, 0x8
.global lbl_803DF738
lbl_803DF738:
	.incbin "baserom.dol", 0x2E9058, 0x8
.global lbl_803DF740
lbl_803DF740:
	.incbin "baserom.dol", 0x2E9060, 0x8
.global lbl_803DF748
lbl_803DF748:
	.incbin "baserom.dol", 0x2E9068, 0x8
.global lbl_803DF750
lbl_803DF750:
	.incbin "baserom.dol", 0x2E9070, 0x4
.global lbl_803DF754
lbl_803DF754:
	.incbin "baserom.dol", 0x2E9074, 0x4
.global lbl_803DF758
lbl_803DF758:
	.incbin "baserom.dol", 0x2E9078, 0x4
.global __RTTI__17Receiver$$06Pellet$$1
__RTTI__17Receiver$$06Pellet$$1:
  .4byte 0x802b09f8
  .4byte 0
.global __RTTI__15AState$$06Pellet$$1
__RTTI__15AState$$06Pellet$$1:
  .4byte 0x802b0a0c
  .4byte 0x802b0a1c
.global __RTTI__11PelletState
__RTTI__11PelletState:
  .4byte 0x802b0a28
  .4byte 0x802b0a34
.global __RTTI__15PelletGoalState
__RTTI__15PelletGoalState:
  .4byte 0x802b09e8
  .4byte 0x802b0a48
.global __RTTI__17PelletAppearState
__RTTI__17PelletAppearState:
  .4byte 0x802b0ab4
  .4byte 0x802b0ac8
.global __RTTI__20PelletSwallowedState
__RTTI__20PelletSwallowedState:
  .4byte 0x802b0b34
  .4byte 0x802b0b4c
.global __RTTI__17PelletNormalState
__RTTI__17PelletNormalState:
  .4byte 0x802b0bb8
  .4byte 0x802b0bcc
.global __RTTI__15PelletDeadState
__RTTI__15PelletDeadState:
  .4byte 0x802b0c38
  .4byte 0x802b0c48
.global __RTTI__18PelletUfoLoadState
__RTTI__18PelletUfoLoadState:
  .4byte 0x802b0cb4
  .4byte 0x802b0cc8
.global __RTTI__21StateMachine$$06Pellet$$1_1
__RTTI__21StateMachine$$06Pellet$$1_1:
  .4byte 0x802b0e20
  .4byte 0
.global __RTTI__18PelletStateMachine
__RTTI__18PelletStateMachine:
  .4byte 0x802b0e0c
  .4byte 0x802b0e38
  .4byte 0
  .4byte 0x2e2e2e00
  .4byte 0x6d65636b
  .4byte 0
.global lbl_803DF7C4
lbl_803DF7C4:
	.incbin "baserom.dol", 0x2E90E4, 0x8
.global lbl_803DF7CC
lbl_803DF7CC:
	.incbin "baserom.dol", 0x2E90EC, 0x4
.global lbl_803DF7D0
lbl_803DF7D0:
	.incbin "baserom.dol", 0x2E90F0, 0x4
.global lbl_803DF7D4
lbl_803DF7D4:
	.incbin "baserom.dol", 0x2E90F4, 0x4
.global lbl_803DF7D8
lbl_803DF7D8:
	.incbin "baserom.dol", 0x2E90F8, 0x4
.global lbl_803DF7DC
lbl_803DF7DC:
	.incbin "baserom.dol", 0x2E90FC, 0x4
.global lbl_803DF7E0
lbl_803DF7E0:
	.incbin "baserom.dol", 0x2E9100, 0x4
.global lbl_803DF7E4
lbl_803DF7E4:
	.incbin "baserom.dol", 0x2E9104, 0x4
.global lbl_803DF7E8
lbl_803DF7E8:
	.incbin "baserom.dol", 0x2E9108, 0x4
.global lbl_803DF7EC
lbl_803DF7EC:
	.incbin "baserom.dol", 0x2E910C, 0x4
.global lbl_803DF7F0
lbl_803DF7F0:
	.incbin "baserom.dol", 0x2E9110, 0x4
.global lbl_803DF7F4
lbl_803DF7F4:
	.incbin "baserom.dol", 0x2E9114, 0x4
.global lbl_803DF7F8
lbl_803DF7F8:
	.incbin "baserom.dol", 0x2E9118, 0x4
.global lbl_803DF7FC
lbl_803DF7FC:
	.incbin "baserom.dol", 0x2E911C, 0x4
.global lbl_803DF800
lbl_803DF800:
	.incbin "baserom.dol", 0x2E9120, 0x4
.global lbl_803DF804
lbl_803DF804:
	.incbin "baserom.dol", 0x2E9124, 0x4
.global lbl_803DF808
lbl_803DF808:
	.incbin "baserom.dol", 0x2E9128, 0x4
.global lbl_803DF80C
lbl_803DF80C:
	.incbin "baserom.dol", 0x2E912C, 0x4
.global lbl_803DF810
lbl_803DF810:
	.incbin "baserom.dol", 0x2E9130, 0x4
.global lbl_803DF814
lbl_803DF814:
	.incbin "baserom.dol", 0x2E9134, 0x4
.global lbl_803DF818
lbl_803DF818:
	.incbin "baserom.dol", 0x2E9138, 0x4
.global lbl_803DF81C
lbl_803DF81C:
	.incbin "baserom.dol", 0x2E913C, 0x4
.global lbl_803DF820
lbl_803DF820:
	.incbin "baserom.dol", 0x2E9140, 0x4
.global lbl_803DF824
lbl_803DF824:
	.incbin "baserom.dol", 0x2E9144, 0x4
.global lbl_803DF828
lbl_803DF828:
	.incbin "baserom.dol", 0x2E9148, 0x4
.global lbl_803DF82C
lbl_803DF82C:
	.incbin "baserom.dol", 0x2E914C, 0x4
.global lbl_803DF830
lbl_803DF830:
	.incbin "baserom.dol", 0x2E9150, 0x4
.global lbl_803DF834
lbl_803DF834:
	.incbin "baserom.dol", 0x2E9154, 0x4
.global lbl_803DF838
lbl_803DF838:
	.incbin "baserom.dol", 0x2E9158, 0x4
.global lbl_803DF83C
lbl_803DF83C:
	.incbin "baserom.dol", 0x2E915C, 0x4
.global lbl_803DF840
lbl_803DF840:
	.incbin "baserom.dol", 0x2E9160, 0x4
.global lbl_803DF844
lbl_803DF844:
	.incbin "baserom.dol", 0x2E9164, 0x4
.global lbl_803DF848
lbl_803DF848:
	.incbin "baserom.dol", 0x2E9168, 0x4
.global lbl_803DF84C
lbl_803DF84C:
	.incbin "baserom.dol", 0x2E916C, 0x4
.global lbl_803DF850
lbl_803DF850:
	.incbin "baserom.dol", 0x2E9170, 0xC
.global __RTTI__13InteractBreak
__RTTI__13InteractBreak:
  .4byte 0x802b1068
  .4byte 0x802b1084
.global __RTTI__13InteractBuild
__RTTI__13InteractBuild:
  .4byte 0x802b10bc
  .4byte 0x802b10cc
  .4byte 0x42726964
  .4byte 0x67650000
  .4byte 0x802b1104
  .4byte 0
  .4byte 0x802b1118
  .4byte 0
  .4byte 0x802b1124
  .4byte 0
  .4byte 0x802b1134
  .4byte 0x802b1140
  .4byte 0x802b1154
  .4byte 0x802b1160
  .4byte 0x802b1184
  .4byte 0x802b1194
.global __RTTI__10WorkObject
__RTTI__10WorkObject:
  .4byte 0x802b11c0
  .4byte 0x802b11cc
.global __RTTI__6Bridge
__RTTI__6Bridge:
  .4byte 0x803df86c
  .4byte 0x802b1200
.global __RTTI__12InteractPush
__RTTI__12InteractPush:
  .4byte 0x802b13a8
  .4byte 0x802b13b8
.global __RTTI__10HinderRock
__RTTI__10HinderRock:
  .4byte 0x802b13f0
  .4byte 0x802b13fc
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803df8c4
  .4byte 0
  .4byte lbl_802B1024
  .4byte 0x802b15b4
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803df8dc
  .4byte 0x802b15c0
  .4byte 0x802b15a4
  .4byte 0x802b15d4
.global __RTTI__12DynCollShape_2
__RTTI__12DynCollShape_2:
  .4byte 0x802b1640
  .4byte 0x802b1650
.global __RTTI__13DynBuildShape
__RTTI__13DynBuildShape:
  .4byte 0x802b1630
  .4byte 0x802b1674
  .4byte 0x802b16fc
  .4byte 0
  .4byte 0x47656e42
  .4byte 0x61736500
  .4byte 0x803df90c
  .4byte 0x802b1708
  .4byte 0x802b1714
  .4byte 0x802b1720
.global __RTTI__19GenObjectWorkObject
__RTTI__19GenObjectWorkObject:
  .4byte 0x802b16e8
  .4byte 0x802b1734
  .4byte 0x802b1794
  .4byte 0
  .4byte 0x802b17fc
  .4byte 0
  .4byte 0x802b1808
  .4byte 0x802b1814
.global __RTTI__13WorkObjectMgr
__RTTI__13WorkObjectMgr:
  .4byte 0x802b17ec
  .4byte 0x802b1838
.global __RTTI__14WorkObjectNode
__RTTI__14WorkObjectNode:
  .4byte 0x802b18dc
  .4byte 0x802b18ec
  .4byte 0
.global avoidWayPointIndex__10PathFinder
avoidWayPointIndex__10PathFinder:
	.incbin "baserom.dol", 0x2E9278, 0x4
.global lbl_803DF95C
lbl_803DF95C:
	.incbin "baserom.dol", 0x2E927C, 0x8
.global lbl_803DF964
lbl_803DF964:
	.incbin "baserom.dol", 0x2E9284, 0x4
.global lbl_803DF968
lbl_803DF968:
	.incbin "baserom.dol", 0x2E9288, 0x30
.global __RTTI__8RouteMgr
__RTTI__8RouteMgr:
  .4byte 0x802b1b00
  .4byte 0x802b1b20
.global lbl_803DF9A0
lbl_803DF9A0:
	.incbin "baserom.dol", 0x2E92C0, 0x8
.global lbl_803DF9A8
lbl_803DF9A8:
	.incbin "baserom.dol", 0x2E92C8, 0x8
.global lbl_803DF9B0
lbl_803DF9B0:
	.incbin "baserom.dol", 0x2E92D0, 0x8
.global lbl_803DF9B8
lbl_803DF9B8:
	.incbin "baserom.dol", 0x2E92D8, 0x8
.global lbl_803DF9C0
lbl_803DF9C0:
	.incbin "baserom.dol", 0x2E92E0, 0x8
.global lbl_803DF9C8
lbl_803DF9C8:
	.incbin "baserom.dol", 0x2E92E8, 0x2C
.global __RTTI__5GmWin
__RTTI__5GmWin:
  .4byte 0x803df9ec
  .4byte 0x802b1c1c
.global __RTTI__5SeWin
__RTTI__5SeWin:
  .4byte 0x803df9cc
  .4byte 0x802b1c30
  .4byte 0x53654d67
  .4byte 0x72000000
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803dfa0c
  .4byte 0x802b1c94
.global __RTTI__5SeMgr
__RTTI__5SeMgr:
  .4byte 0x803dfa04
  .4byte 0x802b1ca8
  .4byte 0
.global lbl_803DFA28
lbl_803DFA28:
	.incbin "baserom.dol", 0x2E9348, 0x8
.global lbl_803DFA30
lbl_803DFA30:
	.incbin "baserom.dol", 0x2E9350, 0x4
.global lbl_803DFA34
lbl_803DFA34:
	.incbin "baserom.dol", 0x2E9354, 0x4
.global lbl_803DFA38
lbl_803DFA38:
	.incbin "baserom.dol", 0x2E9358, 0x4
.global lbl_803DFA3C
lbl_803DFA3C:
	.incbin "baserom.dol", 0x2E935C, 0x38
.global __RTTI__10SeConstant
__RTTI__10SeConstant:
  .4byte 0x802b1d70
  .4byte 0x802b1da8
  .4byte 0
  .4byte 0x53455f42
  .4byte 0x4f4d4200
  .4byte 0x64756d6d
  .4byte 0x79203100
  .4byte 0x64756d6d
  .4byte 0x79203200
  .4byte 0x64756d6d
  .4byte 0x79203300
  .4byte 0x64756d6d
  .4byte 0x79203400
  .4byte 0x64756d6d
  .4byte 0x79203500
.global lbl_803DFAB0
lbl_803DFAB0:
	.incbin "baserom.dol", 0x2E93D0, 0x4
.global lbl_803DFAB4
lbl_803DFAB4:
	.incbin "baserom.dol", 0x2E93D4, 0x4
.global lbl_803DFAB8
lbl_803DFAB8:
	.incbin "baserom.dol", 0x2E93D8, 0x4
.global lbl_803DFABC
lbl_803DFABC:
	.incbin "baserom.dol", 0x2E93DC, 0x4
.global lbl_803DFAC0
lbl_803DFAC0:
	.incbin "baserom.dol", 0x2E93E0, 0x4
.global lbl_803DFAC4
lbl_803DFAC4:
	.incbin "baserom.dol", 0x2E93E4, 0x4
.global lbl_803DFAC8
lbl_803DFAC8:
	.incbin "baserom.dol", 0x2E93E8, 0x4
.global lbl_803DFACC
lbl_803DFACC:
	.incbin "baserom.dol", 0x2E93EC, 0x4
.global lbl_803DFAD0
lbl_803DFAD0:
	.incbin "baserom.dol", 0x2E93F0, 0x4
.global lbl_803DFAD4
lbl_803DFAD4:
	.incbin "baserom.dol", 0x2E93F4, 0x4
.global lbl_803DFAD8
lbl_803DFAD8:
	.incbin "baserom.dol", 0x2E93F8, 0x4
.global lbl_803DFADC
lbl_803DFADC:
	.incbin "baserom.dol", 0x2E93FC, 0x4
.global lbl_803DFAE0
lbl_803DFAE0:
	.incbin "baserom.dol", 0x2E9400, 0x4
.global lbl_803DFAE4
lbl_803DFAE4:
	.incbin "baserom.dol", 0x2E9404, 0x4
.global lbl_803DFAE8
lbl_803DFAE8:
	.incbin "baserom.dol", 0x2E9408, 0x4
.global lbl_803DFAEC
lbl_803DFAEC:
	.incbin "baserom.dol", 0x2E940C, 0x4
.global lbl_803DFAF0
lbl_803DFAF0:
	.incbin "baserom.dol", 0x2E9410, 0x4
.global lbl_803DFAF4
lbl_803DFAF4:
	.incbin "baserom.dol", 0x2E9414, 0x4
.global lbl_803DFAF8
lbl_803DFAF8:
	.incbin "baserom.dol", 0x2E9418, 0x50
.global lbl_803DFB48
lbl_803DFB48:
	.incbin "baserom.dol", 0x2E9468, 0x8
.global lbl_803DFB50
lbl_803DFB50:
	.incbin "baserom.dol", 0x2E9470, 0x4
.global lbl_803DFB54
lbl_803DFB54:
	.incbin "baserom.dol", 0x2E9474, 0x4
.global lbl_803DFB58
lbl_803DFB58:
	.incbin "baserom.dol", 0x2E9478, 0x4
.global lbl_803DFB5C
lbl_803DFB5C:
	.incbin "baserom.dol", 0x2E947C, 0x4
.global lbl_803DFB60
lbl_803DFB60:
	.incbin "baserom.dol", 0x2E9480, 0x4
.global lbl_803DFB64
lbl_803DFB64:
	.incbin "baserom.dol", 0x2E9484, 0x4
.global lbl_803DFB68
lbl_803DFB68:
	.incbin "baserom.dol", 0x2E9488, 0x8
.global lbl_803DFB70
lbl_803DFB70:
	.incbin "baserom.dol", 0x2E9490, 0x4
.global lbl_803DFB74
lbl_803DFB74:
	.incbin "baserom.dol", 0x2E9494, 0x4
.global lbl_803DFB78
lbl_803DFB78:
	.incbin "baserom.dol", 0x2E9498, 0x4
.global lbl_803DFB7C
lbl_803DFB7C:
	.incbin "baserom.dol", 0x2E949C, 0x8
.global lbl_803DFB84
lbl_803DFB84:
	.incbin "baserom.dol", 0x2E94A4, 0x4
.global lbl_803DFB88
lbl_803DFB88:
	.incbin "baserom.dol", 0x2E94A8, 0x4
.global lbl_803DFB8C
lbl_803DFB8C:
	.incbin "baserom.dol", 0x2E94AC, 0x4
.global lbl_803DFB90
lbl_803DFB90:
	.incbin "baserom.dol", 0x2E94B0, 0x4
.global lbl_803DFB94
lbl_803DFB94:
	.incbin "baserom.dol", 0x2E94B4, 0x4
.global lbl_803DFB98
lbl_803DFB98:
	.incbin "baserom.dol", 0x2E94B8, 0x4
.global lbl_803DFB9C
lbl_803DFB9C:
	.incbin "baserom.dol", 0x2E94BC, 0x4
.global lbl_803DFBA0
lbl_803DFBA0:
	.incbin "baserom.dol", 0x2E94C0, 0x4
.global lbl_803DFBA4
lbl_803DFBA4:
	.incbin "baserom.dol", 0x2E94C4, 0x4
.global lbl_803DFBA8
lbl_803DFBA8:
	.incbin "baserom.dol", 0x2E94C8, 0x4
.global lbl_803DFBAC
lbl_803DFBAC:
	.incbin "baserom.dol", 0x2E94CC, 0x4
.global lbl_803DFBB0
lbl_803DFBB0:
	.incbin "baserom.dol", 0x2E94D0, 0x4
.global lbl_803DFBB4
lbl_803DFBB4:
	.incbin "baserom.dol", 0x2E94D4, 0x4
.global lbl_803DFBB8
lbl_803DFBB8:
	.incbin "baserom.dol", 0x2E94D8, 0x4
.global lbl_803DFBBC
lbl_803DFBBC:
	.incbin "baserom.dol", 0x2E94DC, 0x4
.global lbl_803DFBC0
lbl_803DFBC0:
	.incbin "baserom.dol", 0x2E94E0, 0x4
.global lbl_803DFBC4
lbl_803DFBC4:
	.incbin "baserom.dol", 0x2E94E4, 0x4
.global lbl_803DFBC8
lbl_803DFBC8:
	.incbin "baserom.dol", 0x2E94E8, 0x4
.global lbl_803DFBCC
lbl_803DFBCC:
	.incbin "baserom.dol", 0x2E94EC, 0x4
.global lbl_803DFBD0
lbl_803DFBD0:
	.incbin "baserom.dol", 0x2E94F0, 0x4
.global lbl_803DFBD4
lbl_803DFBD4:
	.incbin "baserom.dol", 0x2E94F4, 0x4
.global lbl_803DFBD8
lbl_803DFBD8:
	.incbin "baserom.dol", 0x2E94F8, 0x4
.global lbl_803DFBDC
lbl_803DFBDC:
	.incbin "baserom.dol", 0x2E94FC, 0x4
.global lbl_803DFBE0
lbl_803DFBE0:
	.incbin "baserom.dol", 0x2E9500, 0x4
.global lbl_803DFBE4
lbl_803DFBE4:
	.incbin "baserom.dol", 0x2E9504, 0x3C
.global __RTTI__6CPlate
__RTTI__6CPlate:
  .4byte 0x803dfbe8
  .4byte 0x802b4e80
  .4byte 0x802b4f04
  .4byte 0
.global lbl_803DFC30
lbl_803DFC30:
	.incbin "baserom.dol", 0x2E9550, 0x4
.global lbl_803DFC34
lbl_803DFC34:
	.incbin "baserom.dol", 0x2E9554, 0x4
.global lbl_803DFC38
lbl_803DFC38:
	.incbin "baserom.dol", 0x2E9558, 0x4
.global lbl_803DFC3C
lbl_803DFC3C:
	.incbin "baserom.dol", 0x2E955C, 0x4
.global lbl_803DFC40
lbl_803DFC40:
	.incbin "baserom.dol", 0x2E9560, 0x4
.global lbl_803DFC44
lbl_803DFC44:
	.incbin "baserom.dol", 0x2E9564, 0x4
.global lbl_803DFC48
lbl_803DFC48:
	.incbin "baserom.dol", 0x2E9568, 0x4
.global lbl_803DFC4C
lbl_803DFC4C:
	.incbin "baserom.dol", 0x2E956C, 0x4
.global lbl_803DFC50
lbl_803DFC50:
	.incbin "baserom.dol", 0x2E9570, 0x4
.global lbl_803DFC54
lbl_803DFC54:
	.incbin "baserom.dol", 0x2E9574, 0x4
.global lbl_803DFC58
lbl_803DFC58:
	.incbin "baserom.dol", 0x2E9578, 0x4
.global lbl_803DFC5C
lbl_803DFC5C:
	.incbin "baserom.dol", 0x2E957C, 0x4
.global lbl_803DFC60
lbl_803DFC60:
	.incbin "baserom.dol", 0x2E9580, 0x4
.global lbl_803DFC64
lbl_803DFC64:
	.incbin "baserom.dol", 0x2E9584, 0x1C
.global __RTTI__8ActStone
__RTTI__8ActStone:
  .4byte 0x802b4f74
  .4byte 0x802b4f9c
.global lbl_803DFC88
lbl_803DFC88:
	.incbin "baserom.dol", 0x2E95A8, 0x8
.global lbl_803DFC90
lbl_803DFC90:
	.incbin "baserom.dol", 0x2E95B0, 0x4
.global lbl_803DFC94
lbl_803DFC94:
	.incbin "baserom.dol", 0x2E95B4, 0x4
.global lbl_803DFC98
lbl_803DFC98:
	.incbin "baserom.dol", 0x2E95B8, 0x4
.global lbl_803DFC9C
lbl_803DFC9C:
	.incbin "baserom.dol", 0x2E95BC, 0x4
.global lbl_803DFCA0
lbl_803DFCA0:
	.incbin "baserom.dol", 0x2E95C0, 0x4
.global lbl_803DFCA4
lbl_803DFCA4:
	.incbin "baserom.dol", 0x2E95C4, 0x4
.global lbl_803DFCA8
lbl_803DFCA8:
	.incbin "baserom.dol", 0x2E95C8, 0x4
.global lbl_803DFCAC
lbl_803DFCAC:
	.incbin "baserom.dol", 0x2E95CC, 0x1C
.global __RTTI__9ActAdjust
__RTTI__9ActAdjust:
  .4byte 0x802b508c
  .4byte 0x802b50b4
  .4byte 0x802b5144
  .4byte 0
.global __RTTI__Q29ActAdjust11Initialiser
__RTTI__Q29ActAdjust11Initialiser:
  .4byte 0x802b512c
  .4byte 0x802b5158
  .4byte 0x41637450
  .4byte 0x75740000
.global __RTTI__6ActPut
__RTTI__6ActPut:
  .4byte 0x803dfce0
  .4byte 0x802b5170
.global __RTTI__Q26ActPut11Initialiser
__RTTI__Q26ActPut11Initialiser:
  .4byte 0x802b51e8
  .4byte 0x802b51fc
  .4byte 0x41637450
  .4byte 0x69636b00
  .4byte 0x802b524c
  .4byte 0
.global __RTTI__7ActPick
__RTTI__7ActPick:
  .4byte 0x803dfcf8
  .4byte 0x802b5260
.global __RTTI__Q27ActPick11Initialiser
__RTTI__Q27ActPick11Initialiser:
  .4byte 0x802b52f0
  .4byte 0x802b5308
.global lbl_803DFD18
lbl_803DFD18:
	.incbin "baserom.dol", 0x2E9638, 0x8
.global lbl_803DFD20
lbl_803DFD20:
	.incbin "baserom.dol", 0x2E9640, 0x4
.global lbl_803DFD24
lbl_803DFD24:
	.incbin "baserom.dol", 0x2E9644, 0x4
.global lbl_803DFD28
lbl_803DFD28:
	.incbin "baserom.dol", 0x2E9648, 0x4
.global lbl_803DFD2C
lbl_803DFD2C:
	.incbin "baserom.dol", 0x2E964C, 0x4
.global lbl_803DFD30
lbl_803DFD30:
	.incbin "baserom.dol", 0x2E9650, 0x4
.global lbl_803DFD34
lbl_803DFD34:
	.incbin "baserom.dol", 0x2E9654, 0x4
.global lbl_803DFD38
lbl_803DFD38:
	.incbin "baserom.dol", 0x2E9658, 0x4
.global lbl_803DFD3C
lbl_803DFD3C:
	.incbin "baserom.dol", 0x2E965C, 0x4
.global lbl_803DFD40
lbl_803DFD40:
	.incbin "baserom.dol", 0x2E9660, 0x4
.global lbl_803DFD44
lbl_803DFD44:
	.incbin "baserom.dol", 0x2E9664, 0x4
.global lbl_803DFD48
lbl_803DFD48:
	.incbin "baserom.dol", 0x2E9668, 0x4
.global lbl_803DFD4C
lbl_803DFD4C:
	.incbin "baserom.dol", 0x2E966C, 0x4
.global lbl_803DFD50
lbl_803DFD50:
	.incbin "baserom.dol", 0x2E9670, 0x4
.global lbl_803DFD54
lbl_803DFD54:
	.incbin "baserom.dol", 0x2E9674, 0x4
.global lbl_803DFD58
lbl_803DFD58:
	.incbin "baserom.dol", 0x2E9678, 0x4
.global lbl_803DFD5C
lbl_803DFD5C:
	.incbin "baserom.dol", 0x2E967C, 0x4
.global lbl_803DFD60
lbl_803DFD60:
	.incbin "baserom.dol", 0x2E9680, 0x4
.global lbl_803DFD64
lbl_803DFD64:
	.incbin "baserom.dol", 0x2E9684, 0x4
.global lbl_803DFD68
lbl_803DFD68:
	.incbin "baserom.dol", 0x2E9688, 0x4
.global lbl_803DFD6C
lbl_803DFD6C:
	.incbin "baserom.dol", 0x2E968C, 0x4
.global lbl_803DFD70
lbl_803DFD70:
	.incbin "baserom.dol", 0x2E9690, 0x4
.global lbl_803DFD74
lbl_803DFD74:
	.incbin "baserom.dol", 0x2E9694, 0x4
.global lbl_803DFD78
lbl_803DFD78:
	.incbin "baserom.dol", 0x2E9698, 0x4
.global lbl_803DFD7C
lbl_803DFD7C:
	.incbin "baserom.dol", 0x2E969C, 0x4
.global lbl_803DFD80
lbl_803DFD80:
	.incbin "baserom.dol", 0x2E96A0, 0x4
.global lbl_803DFD84
lbl_803DFD84:
	.incbin "baserom.dol", 0x2E96A4, 0x4
.global lbl_803DFD88
lbl_803DFD88:
	.incbin "baserom.dol", 0x2E96A8, 0x4
.global lbl_803DFD8C
lbl_803DFD8C:
	.incbin "baserom.dol", 0x2E96AC, 0x4
.global lbl_803DFD90
lbl_803DFD90:
	.incbin "baserom.dol", 0x2E96B0, 0x24
.global __RTTI__13ActJumpAttack
__RTTI__13ActJumpAttack:
  .4byte 0x802b53c8
  .4byte 0x802b5408
  .4byte 0x802b54a4
  .4byte 0x802b54b0
.global __RTTI__9ActAttack
__RTTI__9ActAttack:
  .4byte 0x802b5498
  .4byte 0x802b54c4
  .4byte 0
.global lbl_803DFDD0
lbl_803DFDD0:
	.incbin "baserom.dol", 0x2E96F0, 0x4
.global lbl_803DFDD4
lbl_803DFDD4:
	.incbin "baserom.dol", 0x2E96F4, 0x4
.global lbl_803DFDD8
lbl_803DFDD8:
	.incbin "baserom.dol", 0x2E96F8, 0x4
.global lbl_803DFDDC
lbl_803DFDDC:
	.incbin "baserom.dol", 0x2E96FC, 0x8
.global lbl_803DFDE4
lbl_803DFDE4:
	.incbin "baserom.dol", 0x2E9704, 0x4
.global lbl_803DFDE8
lbl_803DFDE8:
	.incbin "baserom.dol", 0x2E9708, 0x4
.global lbl_803DFDEC
lbl_803DFDEC:
	.incbin "baserom.dol", 0x2E970C, 0x24
.global __RTTI__11ActBoreRest
__RTTI__11ActBoreRest:
  .4byte 0x802b55b0
  .4byte 0x802b55ec
.global __RTTI__14ActBoreOneshot
__RTTI__14ActBoreOneshot:
  .4byte 0x802b567c
  .4byte 0x802b568c
.global __RTTI__13ActBoreListen
__RTTI__13ActBoreListen:
  .4byte 0x802b571c
  .4byte 0x802b572c
.global __RTTI__11ActBoreTalk
__RTTI__11ActBoreTalk:
  .4byte 0x802b57dc
  .4byte 0x802b57e8
.global __RTTI__13ActBoreSelect
__RTTI__13ActBoreSelect:
  .4byte 0x802b5884
  .4byte 0x802b5894
.global __RTTI__13ActFreeSelect
__RTTI__13ActFreeSelect:
  .4byte 0x802b590c
  .4byte 0x802b591c
  .4byte 0x802b5a20
  .4byte 0
  .4byte 0x41637469
  .4byte 0x6f6e0000
  .4byte 0x803dfe48
  .4byte 0x802b5a30
.global __RTTI__9ActBoMake
__RTTI__9ActBoMake:
  .4byte 0x802b5a14
  .4byte 0x802b5a3c
.global lbl_803DFE60
lbl_803DFE60:
	.incbin "baserom.dol", 0x2E9780, 0x4
.global lbl_803DFE64
lbl_803DFE64:
	.incbin "baserom.dol", 0x2E9784, 0x4
.global lbl_803DFE68
lbl_803DFE68:
	.incbin "baserom.dol", 0x2E9788, 0x4
.global lbl_803DFE6C
lbl_803DFE6C:
	.incbin "baserom.dol", 0x2E978C, 0x4
.global lbl_803DFE70
lbl_803DFE70:
	.incbin "baserom.dol", 0x2E9790, 0x4
.global lbl_803DFE74
lbl_803DFE74:
	.incbin "baserom.dol", 0x2E9794, 0x4
.global lbl_803DFE78
lbl_803DFE78:
	.incbin "baserom.dol", 0x2E9798, 0x4
.global lbl_803DFE7C
lbl_803DFE7C:
	.incbin "baserom.dol", 0x2E979C, 0x24
.global __RTTI__6ActBou
__RTTI__6ActBou:
  .4byte 0x803dfe80
  .4byte 0x802b5b38
.global lbl_803DFEA8
lbl_803DFEA8:
	.incbin "baserom.dol", 0x2E97C8, 0x1C
.global lbl_803DFEC4
lbl_803DFEC4:
	.incbin "baserom.dol", 0x2E97E4, 0x4
.global lbl_803DFEC8
lbl_803DFEC8:
	.incbin "baserom.dol", 0x2E97E8, 0x4
.global lbl_803DFECC
lbl_803DFECC:
	.incbin "baserom.dol", 0x2E97EC, 0x24
.global __RTTI__9ActBridge
__RTTI__9ActBridge:
  .4byte 0x802b5c40
  .4byte 0x802b5c7c
.global lbl_803DFEF8
lbl_803DFEF8:
	.incbin "baserom.dol", 0x2E9818, 0x4
.global lbl_803DFEFC
lbl_803DFEFC:
	.incbin "baserom.dol", 0x2E981C, 0x4
.global lbl_803DFF00
lbl_803DFF00:
	.incbin "baserom.dol", 0x2E9820, 0x4
.global lbl_803DFF04
lbl_803DFF04:
	.incbin "baserom.dol", 0x2E9824, 0x4
.global lbl_803DFF08
lbl_803DFF08:
	.incbin "baserom.dol", 0x2E9828, 0x4
.global lbl_803DFF0C
lbl_803DFF0C:
	.incbin "baserom.dol", 0x2E982C, 0x24
.global __RTTI__12ActBreakWall
__RTTI__12ActBreakWall:
  .4byte 0x802b5da8
  .4byte 0x802b5de8
.global lbl_803DFF38
lbl_803DFF38:
	.incbin "baserom.dol", 0x2E9858, 0x4
.global lbl_803DFF3C
lbl_803DFF3C:
	.incbin "baserom.dol", 0x2E985C, 0x4
.global lbl_803DFF40
lbl_803DFF40:
	.incbin "baserom.dol", 0x2E9860, 0x4
.global lbl_803DFF44
lbl_803DFF44:
	.incbin "baserom.dol", 0x2E9864, 0x4
.global lbl_803DFF48
lbl_803DFF48:
	.incbin "baserom.dol", 0x2E9868, 0x4
.global lbl_803DFF4C
lbl_803DFF4C:
	.incbin "baserom.dol", 0x2E986C, 0x4
.global lbl_803DFF50
lbl_803DFF50:
	.incbin "baserom.dol", 0x2E9870, 0x4
.global lbl_803DFF54
lbl_803DFF54:
	.incbin "baserom.dol", 0x2E9874, 0x4
.global lbl_803DFF58
lbl_803DFF58:
	.incbin "baserom.dol", 0x2E9878, 0x4
.global lbl_803DFF5C
lbl_803DFF5C:
	.incbin "baserom.dol", 0x2E987C, 0x4
.global lbl_803DFF60
lbl_803DFF60:
	.incbin "baserom.dol", 0x2E9880, 0x4
.global lbl_803DFF64
lbl_803DFF64:
	.incbin "baserom.dol", 0x2E9884, 0x4
.global lbl_803DFF68
lbl_803DFF68:
	.incbin "baserom.dol", 0x2E9888, 0x4
.global lbl_803DFF6C
lbl_803DFF6C:
	.incbin "baserom.dol", 0x2E988C, 0x4
.global lbl_803DFF70
lbl_803DFF70:
	.incbin "baserom.dol", 0x2E9890, 0x4
.global lbl_803DFF74
lbl_803DFF74:
	.incbin "baserom.dol", 0x2E9894, 0x4
.global lbl_803DFF78
lbl_803DFF78:
	.incbin "baserom.dol", 0x2E9898, 0x4
.global lbl_803DFF7C
lbl_803DFF7C:
	.incbin "baserom.dol", 0x2E989C, 0x4
.global lbl_803DFF80
lbl_803DFF80:
	.incbin "baserom.dol", 0x2E98A0, 0x4
.global lbl_803DFF84
lbl_803DFF84:
	.incbin "baserom.dol", 0x2E98A4, 0x4
.global lbl_803DFF88
lbl_803DFF88:
	.incbin "baserom.dol", 0x2E98A8, 0x4
.global lbl_803DFF8C
lbl_803DFF8C:
	.incbin "baserom.dol", 0x2E98AC, 0x4
.global lbl_803DFF90
lbl_803DFF90:
	.incbin "baserom.dol", 0x2E98B0, 0x4
.global lbl_803DFF94
lbl_803DFF94:
	.incbin "baserom.dol", 0x2E98B4, 0x4
.global lbl_803DFF98
lbl_803DFF98:
	.incbin "baserom.dol", 0x2E98B8, 0x4
.global lbl_803DFF9C
lbl_803DFF9C:
	.incbin "baserom.dol", 0x2E98BC, 0x4
.global lbl_803DFFA0
lbl_803DFFA0:
	.incbin "baserom.dol", 0x2E98C0, 0x4
.global lbl_803DFFA4
lbl_803DFFA4:
	.incbin "baserom.dol", 0x2E98C4, 0x4
.global lbl_803DFFA8
lbl_803DFFA8:
	.incbin "baserom.dol", 0x2E98C8, 0x4
.global lbl_803DFFAC
lbl_803DFFAC:
	.incbin "baserom.dol", 0x2E98CC, 0x4
.global lbl_803DFFB0
lbl_803DFFB0:
	.incbin "baserom.dol", 0x2E98D0, 0x4
.global lbl_803DFFB4
lbl_803DFFB4:
	.incbin "baserom.dol", 0x2E98D4, 0x4
.global lbl_803DFFB8
lbl_803DFFB8:
	.incbin "baserom.dol", 0x2E98D8, 0x4
.global lbl_803DFFBC
lbl_803DFFBC:
	.incbin "baserom.dol", 0x2E98DC, 0x4
.global lbl_803DFFC0
lbl_803DFFC0:
	.incbin "baserom.dol", 0x2E98E0, 0x4
.global lbl_803DFFC4
lbl_803DFFC4:
	.incbin "baserom.dol", 0x2E98E4, 0x4
.global lbl_803DFFC8
lbl_803DFFC8:
	.incbin "baserom.dol", 0x2E98E8, 0x4
.global lbl_803DFFCC
lbl_803DFFCC:
	.incbin "baserom.dol", 0x2E98EC, 0x4
.global lbl_803DFFD0
lbl_803DFFD0:
	.incbin "baserom.dol", 0x2E98F0, 0x4
.global lbl_803DFFD4
lbl_803DFFD4:
	.incbin "baserom.dol", 0x2E98F4, 0x4
.global lbl_803DFFD8
lbl_803DFFD8:
	.incbin "baserom.dol", 0x2E98F8, 0x4
.global lbl_803DFFDC
lbl_803DFFDC:
	.incbin "baserom.dol", 0x2E98FC, 0x4
.global lbl_803DFFE0
lbl_803DFFE0:
	.incbin "baserom.dol", 0x2E9900, 0x4
.global lbl_803DFFE4
lbl_803DFFE4:
	.incbin "baserom.dol", 0x2E9904, 0x4
.global lbl_803DFFE8
lbl_803DFFE8:
	.incbin "baserom.dol", 0x2E9908, 0x4
.global lbl_803DFFEC
lbl_803DFFEC:
	.incbin "baserom.dol", 0x2E990C, 0x4
.global lbl_803DFFF0
lbl_803DFFF0:
	.incbin "baserom.dol", 0x2E9910, 0x4
.global lbl_803DFFF4
lbl_803DFFF4:
	.incbin "baserom.dol", 0x2E9914, 0x4
.global lbl_803DFFF8
lbl_803DFFF8:
	.incbin "baserom.dol", 0x2E9918, 0x4
.global lbl_803DFFFC
lbl_803DFFFC:
	.incbin "baserom.dol", 0x2E991C, 0x4
.global lbl_803E0000
lbl_803E0000:
	.incbin "baserom.dol", 0x2E9920, 0x4
.global lbl_803E0004
lbl_803E0004:
	.incbin "baserom.dol", 0x2E9924, 0x4
.global lbl_803E0008
lbl_803E0008:
	.incbin "baserom.dol", 0x2E9928, 0x4
.global lbl_803E000C
lbl_803E000C:
	.incbin "baserom.dol", 0x2E992C, 0x4
.global lbl_803E0010
lbl_803E0010:
	.incbin "baserom.dol", 0x2E9930, 0x4
.global lbl_803E0014
lbl_803E0014:
	.incbin "baserom.dol", 0x2E9934, 0x4
.global lbl_803E0018
lbl_803E0018:
	.incbin "baserom.dol", 0x2E9938, 0x4
.global lbl_803E001C
lbl_803E001C:
	.incbin "baserom.dol", 0x2E993C, 0x4
.global lbl_803E0020
lbl_803E0020:
	.incbin "baserom.dol", 0x2E9940, 0x4
.global lbl_803E0024
lbl_803E0024:
	.incbin "baserom.dol", 0x2E9944, 0x4
.global lbl_803E0028
lbl_803E0028:
	.incbin "baserom.dol", 0x2E9948, 0x4
.global lbl_803E002C
lbl_803E002C:
	.incbin "baserom.dol", 0x2E994C, 0x4
.global lbl_803E0030
lbl_803E0030:
	.incbin "baserom.dol", 0x2E9950, 0x4
.global lbl_803E0034
lbl_803E0034:
	.incbin "baserom.dol", 0x2E9954, 0x4
.global lbl_803E0038
lbl_803E0038:
	.incbin "baserom.dol", 0x2E9958, 0x28
.global lbl_803E0060
lbl_803E0060:
	.incbin "baserom.dol", 0x2E9980, 0x24
.global lbl_803E0084
lbl_803E0084:
	.incbin "baserom.dol", 0x2E99A4, 0x4
.global lbl_803E0088
lbl_803E0088:
	.incbin "baserom.dol", 0x2E99A8, 0x4
.global lbl_803E008C
lbl_803E008C:
	.incbin "baserom.dol", 0x2E99AC, 0x4
.global lbl_803E0090
lbl_803E0090:
	.incbin "baserom.dol", 0x2E99B0, 0x4
.global lbl_803E0094
lbl_803E0094:
	.incbin "baserom.dol", 0x2E99B4, 0x4
.global lbl_803E0098
lbl_803E0098:
	.incbin "baserom.dol", 0x2E99B8, 0x4
.global lbl_803E009C
lbl_803E009C:
	.incbin "baserom.dol", 0x2E99BC, 0x4
.global lbl_803E00A0
lbl_803E00A0:
	.incbin "baserom.dol", 0x2E99C0, 0x4
.global lbl_803E00A4
lbl_803E00A4:
	.incbin "baserom.dol", 0x2E99C4, 0x4
.global lbl_803E00A8
lbl_803E00A8:
	.incbin "baserom.dol", 0x2E99C8, 0x4
.global lbl_803E00AC
lbl_803E00AC:
	.incbin "baserom.dol", 0x2E99CC, 0x4
.global lbl_803E00B0
lbl_803E00B0:
	.incbin "baserom.dol", 0x2E99D0, 0x4
.global lbl_803E00B4
lbl_803E00B4:
	.incbin "baserom.dol", 0x2E99D4, 0x4
.global lbl_803E00B8
lbl_803E00B8:
	.incbin "baserom.dol", 0x2E99D8, 0x4
.global lbl_803E00BC
lbl_803E00BC:
	.incbin "baserom.dol", 0x2E99DC, 0x4
.global lbl_803E00C0
lbl_803E00C0:
	.incbin "baserom.dol", 0x2E99E0, 0x4
.global lbl_803E00C4
lbl_803E00C4:
	.incbin "baserom.dol", 0x2E99E4, 0x4
.global lbl_803E00C8
lbl_803E00C8:
	.incbin "baserom.dol", 0x2E99E8, 0x4
.global lbl_803E00CC
lbl_803E00CC:
	.incbin "baserom.dol", 0x2E99EC, 0x4
.global lbl_803E00D0
lbl_803E00D0:
	.incbin "baserom.dol", 0x2E99F0, 0x4
.global lbl_803E00D4
lbl_803E00D4:
	.incbin "baserom.dol", 0x2E99F4, 0x4
.global lbl_803E00D8
lbl_803E00D8:
	.incbin "baserom.dol", 0x2E99F8, 0x4
.global lbl_803E00DC
lbl_803E00DC:
	.incbin "baserom.dol", 0x2E99FC, 0x4
.global lbl_803E00E0
lbl_803E00E0:
	.incbin "baserom.dol", 0x2E9A00, 0x4
.global lbl_803E00E4
lbl_803E00E4:
	.incbin "baserom.dol", 0x2E9A04, 0x4
.global lbl_803E00E8
lbl_803E00E8:
	.incbin "baserom.dol", 0x2E9A08, 0x24
.global __RTTI__12ActTransport
__RTTI__12ActTransport:
  .4byte 0x802b5f28
  .4byte 0x802b5f68
  .4byte 0
.global lbl_803E0118
lbl_803E0118:
	.incbin "baserom.dol", 0x2E9A38, 0x8
.global lbl_803E0120
lbl_803E0120:
	.incbin "baserom.dol", 0x2E9A40, 0x4
.global lbl_803E0124
lbl_803E0124:
	.incbin "baserom.dol", 0x2E9A44, 0x4
.global lbl_803E0128
lbl_803E0128:
	.incbin "baserom.dol", 0x2E9A48, 0x4
.global lbl_803E012C
lbl_803E012C:
	.incbin "baserom.dol", 0x2E9A4C, 0x4
.global lbl_803E0130
lbl_803E0130:
	.incbin "baserom.dol", 0x2E9A50, 0x4
.global lbl_803E0134
lbl_803E0134:
	.incbin "baserom.dol", 0x2E9A54, 0x4
.global lbl_803E0138
lbl_803E0138:
	.incbin "baserom.dol", 0x2E9A58, 0x4
.global lbl_803E013C
lbl_803E013C:
	.incbin "baserom.dol", 0x2E9A5C, 0x4
.global lbl_803E0140
lbl_803E0140:
	.incbin "baserom.dol", 0x2E9A60, 0x4
.global lbl_803E0144
lbl_803E0144:
	.incbin "baserom.dol", 0x2E9A64, 0x4
.global lbl_803E0148
lbl_803E0148:
	.incbin "baserom.dol", 0x2E9A68, 0x4
.global lbl_803E014C
lbl_803E014C:
	.incbin "baserom.dol", 0x2E9A6C, 0x4
.global lbl_803E0150
lbl_803E0150:
	.incbin "baserom.dol", 0x2E9A70, 0x4
.global lbl_803E0154
lbl_803E0154:
	.incbin "baserom.dol", 0x2E9A74, 0x4
.global lbl_803E0158
lbl_803E0158:
	.incbin "baserom.dol", 0x2E9A78, 0x4
.global lbl_803E015C
lbl_803E015C:
	.incbin "baserom.dol", 0x2E9A7C, 0x24
.global __RTTI__9ActKinoko
__RTTI__9ActKinoko:
  .4byte 0x802b6084
  .4byte 0x802b60c0
.global lbl_803E0188
lbl_803E0188:
	.incbin "baserom.dol", 0x2E9AA8, 0x4
.global lbl_803E018C
lbl_803E018C:
	.incbin "baserom.dol", 0x2E9AAC, 0x4
.global lbl_803E0190
lbl_803E0190:
	.incbin "baserom.dol", 0x2E9AB0, 0x4
.global lbl_803E0194
lbl_803E0194:
	.incbin "baserom.dol", 0x2E9AB4, 0x1C
.global __RTTI__8ActChase
__RTTI__8ActChase:
  .4byte 0x802b61a4
  .4byte 0x802b61cc
  .4byte 0x802b625c
  .4byte 0
.global __RTTI__Q28ActChase11Initialiser
__RTTI__Q28ActChase11Initialiser:
  .4byte 0x802b6244
  .4byte 0x802b6270
.global newVer
newVer:
	.incbin "baserom.dol", 0x2E9AE8, 0x4
.global lbl_803E01CC
lbl_803E01CC:
	.incbin "baserom.dol", 0x2E9AEC, 0x8
.global lbl_803E01D4
lbl_803E01D4:
	.incbin "baserom.dol", 0x2E9AF4, 0x4
.global lbl_803E01D8
lbl_803E01D8:
	.incbin "baserom.dol", 0x2E9AF8, 0x4
.global lbl_803E01DC
lbl_803E01DC:
	.incbin "baserom.dol", 0x2E9AFC, 0x4
.global lbl_803E01E0
lbl_803E01E0:
	.incbin "baserom.dol", 0x2E9B00, 0x4
.global lbl_803E01E4
lbl_803E01E4:
	.incbin "baserom.dol", 0x2E9B04, 0x4
.global lbl_803E01E8
lbl_803E01E8:
	.incbin "baserom.dol", 0x2E9B08, 0x4
.global lbl_803E01EC
lbl_803E01EC:
	.incbin "baserom.dol", 0x2E9B0C, 0x4
.global lbl_803E01F0
lbl_803E01F0:
	.incbin "baserom.dol", 0x2E9B10, 0x4
.global lbl_803E01F4
lbl_803E01F4:
	.incbin "baserom.dol", 0x2E9B14, 0x4
.global lbl_803E01F8
lbl_803E01F8:
	.incbin "baserom.dol", 0x2E9B18, 0x4
.global lbl_803E01FC
lbl_803E01FC:
	.incbin "baserom.dol", 0x2E9B1C, 0x4
.global lbl_803E0200
lbl_803E0200:
	.incbin "baserom.dol", 0x2E9B20, 0x4
.global lbl_803E0204
lbl_803E0204:
	.incbin "baserom.dol", 0x2E9B24, 0x4
.global lbl_803E0208
lbl_803E0208:
	.incbin "baserom.dol", 0x2E9B28, 0x4
.global lbl_803E020C
lbl_803E020C:
	.incbin "baserom.dol", 0x2E9B2C, 0x4
.global lbl_803E0210
lbl_803E0210:
	.incbin "baserom.dol", 0x2E9B30, 0x4
.global lbl_803E0214
lbl_803E0214:
	.incbin "baserom.dol", 0x2E9B34, 0x4
.global lbl_803E0218
lbl_803E0218:
	.incbin "baserom.dol", 0x2E9B38, 0x4
.global lbl_803E021C
lbl_803E021C:
	.incbin "baserom.dol", 0x2E9B3C, 0x4
.global lbl_803E0220
lbl_803E0220:
	.incbin "baserom.dol", 0x2E9B40, 0x4
.global lbl_803E0224
lbl_803E0224:
	.incbin "baserom.dol", 0x2E9B44, 0x4
.global lbl_803E0228
lbl_803E0228:
	.incbin "baserom.dol", 0x2E9B48, 0x4
.global lbl_803E022C
lbl_803E022C:
	.incbin "baserom.dol", 0x2E9B4C, 0x4
.global lbl_803E0230
lbl_803E0230:
	.incbin "baserom.dol", 0x2E9B50, 0x4
.global __RTTI__17SlotChangeListner
__RTTI__17SlotChangeListner:
  .4byte 0x802b62d0
  .4byte 0
  .4byte 0x802b62e4
  .4byte 0
  .4byte 0x41637469
  .4byte 0x6f6e0000
  .4byte 0x803e0244
  .4byte 0x802b62f4
.global __RTTI__8ActCrowd
__RTTI__8ActCrowd:
  .4byte 0x802b62c4
  .4byte 0x802b6300
  .4byte 0
.global lbl_803E0260
lbl_803E0260:
	.incbin "baserom.dol", 0x2E9B80, 0x4
.global lbl_803E0264
lbl_803E0264:
	.incbin "baserom.dol", 0x2E9B84, 0x4
.global lbl_803E0268
lbl_803E0268:
	.incbin "baserom.dol", 0x2E9B88, 0x4
.global lbl_803E026C
lbl_803E026C:
	.incbin "baserom.dol", 0x2E9B8C, 0x4
.global lbl_803E0270
lbl_803E0270:
	.incbin "baserom.dol", 0x2E9B90, 0x4
.global lbl_803E0274
lbl_803E0274:
	.incbin "baserom.dol", 0x2E9B94, 0x4
.global lbl_803E0278
lbl_803E0278:
	.incbin "baserom.dol", 0x2E9B98, 0x24
.global __RTTI__8ActDecoy
__RTTI__8ActDecoy:
  .4byte 0x802b63d4
  .4byte 0x802b6410
  .4byte 0
.global lbl_803E02A8
lbl_803E02A8:
	.incbin "baserom.dol", 0x2E9BC8, 0x8
.global lbl_803E02B0
lbl_803E02B0:
	.incbin "baserom.dol", 0x2E9BD0, 0x4
.global lbl_803E02B4
lbl_803E02B4:
	.incbin "baserom.dol", 0x2E9BD4, 0x4
.global lbl_803E02B8
lbl_803E02B8:
	.incbin "baserom.dol", 0x2E9BD8, 0x4
.global lbl_803E02BC
lbl_803E02BC:
	.incbin "baserom.dol", 0x2E9BDC, 0x4
.global lbl_803E02C0
lbl_803E02C0:
	.incbin "baserom.dol", 0x2E9BE0, 0x4
.global lbl_803E02C4
lbl_803E02C4:
	.incbin "baserom.dol", 0x2E9BE4, 0x4
.global lbl_803E02C8
lbl_803E02C8:
	.incbin "baserom.dol", 0x2E9BE8, 0x1C
.global __RTTI__8ActEnter
__RTTI__8ActEnter:
  .4byte 0x802b651c
  .4byte 0x802b6544
  .4byte 0
.global lbl_803E02F0
lbl_803E02F0:
	.incbin "baserom.dol", 0x2E9C10, 0x4
.global lbl_803E02F4
lbl_803E02F4:
	.incbin "baserom.dol", 0x2E9C14, 0x4
.global lbl_803E02F8
lbl_803E02F8:
	.incbin "baserom.dol", 0x2E9C18, 0x4
.global lbl_803E02FC
lbl_803E02FC:
	.incbin "baserom.dol", 0x2E9C1C, 0x4
.global lbl_803E0300
lbl_803E0300:
	.incbin "baserom.dol", 0x2E9C20, 0x4
.global lbl_803E0304
lbl_803E0304:
	.incbin "baserom.dol", 0x2E9C24, 0x4
.global lbl_803E0308
lbl_803E0308:
	.incbin "baserom.dol", 0x2E9C28, 0x8
.global lbl_803E0310
lbl_803E0310:
	.incbin "baserom.dol", 0x2E9C30, 0x20
.global __RTTI__9ActEscape
__RTTI__9ActEscape:
  .4byte 0x802b6618
  .4byte 0x802b6640
  .4byte 0x802b66d0
  .4byte 0
.global __RTTI__Q29ActEscape11Initialiser
__RTTI__Q29ActEscape11Initialiser:
  .4byte 0x802b66b8
  .4byte 0x802b66e4
.global lbl_803E0348
lbl_803E0348:
	.incbin "baserom.dol", 0x2E9C68, 0x8
.global lbl_803E0350
lbl_803E0350:
	.incbin "baserom.dol", 0x2E9C70, 0x4
.global lbl_803E0354
lbl_803E0354:
	.incbin "baserom.dol", 0x2E9C74, 0x4
.global lbl_803E0358
lbl_803E0358:
	.incbin "baserom.dol", 0x2E9C78, 0x4
.global lbl_803E035C
lbl_803E035C:
	.incbin "baserom.dol", 0x2E9C7C, 0x4
.global lbl_803E0360
lbl_803E0360:
	.incbin "baserom.dol", 0x2E9C80, 0x4
.global lbl_803E0364
lbl_803E0364:
	.incbin "baserom.dol", 0x2E9C84, 0x4
.global lbl_803E0368
lbl_803E0368:
	.incbin "baserom.dol", 0x2E9C88, 0x4
.global lbl_803E036C
lbl_803E036C:
	.incbin "baserom.dol", 0x2E9C8C, 0x4
.global lbl_803E0370
lbl_803E0370:
	.incbin "baserom.dol", 0x2E9C90, 0x4
.global lbl_803E0374
lbl_803E0374:
	.incbin "baserom.dol", 0x2E9C94, 0x4
.global lbl_803E0378
lbl_803E0378:
	.incbin "baserom.dol", 0x2E9C98, 0x4
.global lbl_803E037C
lbl_803E037C:
	.incbin "baserom.dol", 0x2E9C9C, 0x4
.global lbl_803E0380
lbl_803E0380:
	.incbin "baserom.dol", 0x2E9CA0, 0x4
.global lbl_803E0384
lbl_803E0384:
	.incbin "baserom.dol", 0x2E9CA4, 0x4
.global lbl_803E0388
lbl_803E0388:
	.incbin "baserom.dol", 0x2E9CA8, 0x4
.global lbl_803E038C
lbl_803E038C:
	.incbin "baserom.dol", 0x2E9CAC, 0x4
.global lbl_803E0390
lbl_803E0390:
	.incbin "baserom.dol", 0x2E9CB0, 0x24
.global __RTTI__7ActExit
__RTTI__7ActExit:
  .4byte 0x803e0394
  .4byte 0x802b6750
  .4byte 0
.global lbl_803E03C0
lbl_803E03C0:
	.incbin "baserom.dol", 0x2E9CE0, 0x4
.global lbl_803E03C4
lbl_803E03C4:
	.incbin "baserom.dol", 0x2E9CE4, 0x4
.global lbl_803E03C8
lbl_803E03C8:
	.incbin "baserom.dol", 0x2E9CE8, 0x4
.global lbl_803E03CC
lbl_803E03CC:
	.incbin "baserom.dol", 0x2E9CEC, 0x4
.global lbl_803E03D0
lbl_803E03D0:
	.incbin "baserom.dol", 0x2E9CF0, 0x4
.global lbl_803E03D4
lbl_803E03D4:
	.incbin "baserom.dol", 0x2E9CF4, 0x2C
.global __RTTI__7ActMine
__RTTI__7ActMine:
  .4byte 0x803e03d8
  .4byte 0x802b6834
.global lbl_803E0408
lbl_803E0408:
	.incbin "baserom.dol", 0x2E9D28, 0x4
.global lbl_803E040C
lbl_803E040C:
	.incbin "baserom.dol", 0x2E9D2C, 0x4
.global lbl_803E0410
lbl_803E0410:
	.incbin "baserom.dol", 0x2E9D30, 0x4
.global lbl_803E0414
lbl_803E0414:
	.incbin "baserom.dol", 0x2E9D34, 0x4
.global lbl_803E0418
lbl_803E0418:
	.incbin "baserom.dol", 0x2E9D38, 0x4
.global lbl_803E041C
lbl_803E041C:
	.incbin "baserom.dol", 0x2E9D3C, 0x4
.global lbl_803E0420
lbl_803E0420:
	.incbin "baserom.dol", 0x2E9D40, 0x4
.global lbl_803E0424
lbl_803E0424:
	.incbin "baserom.dol", 0x2E9D44, 0x4
.global lbl_803E0428
lbl_803E0428:
	.incbin "baserom.dol", 0x2E9D48, 0x4
.global lbl_803E042C
lbl_803E042C:
	.incbin "baserom.dol", 0x2E9D4C, 0x4
.global lbl_803E0430
lbl_803E0430:
	.incbin "baserom.dol", 0x2E9D50, 0x24
.global __RTTI__12ActFormation
__RTTI__12ActFormation:
  .4byte 0x802b6954
  .4byte 0x802b6994
  .4byte 0
.global lbl_803E0460
lbl_803E0460:
	.incbin "baserom.dol", 0x2E9D80, 0x8
.global numMotions
numMotions:
	.incbin "baserom.dol", 0x2E9D88, 0x4
.global lbl_803E046C
lbl_803E046C:
	.incbin "baserom.dol", 0x2E9D8C, 0x4
.global lbl_803E0470
lbl_803E0470:
	.incbin "baserom.dol", 0x2E9D90, 0x4
.global lbl_803E0474
lbl_803E0474:
	.incbin "baserom.dol", 0x2E9D94, 0x4
.global lbl_803E0478
lbl_803E0478:
	.incbin "baserom.dol", 0x2E9D98, 0x4
.global lbl_803E047C
lbl_803E047C:
	.incbin "baserom.dol", 0x2E9D9C, 0x4
.global lbl_803E0480
lbl_803E0480:
	.incbin "baserom.dol", 0x2E9DA0, 0x2C
.global __RTTI__7ActFree
__RTTI__7ActFree:
  .4byte 0x803e0484
  .4byte 0x802b6aac
  .4byte 0
.global lbl_803E04B8
lbl_803E04B8:
	.incbin "baserom.dol", 0x2E9DD8, 0x4
.global lbl_803E04BC
lbl_803E04BC:
	.incbin "baserom.dol", 0x2E9DDC, 0x4
.global lbl_803E04C0
lbl_803E04C0:
	.incbin "baserom.dol", 0x2E9DE0, 0x4
.global lbl_803E04C4
lbl_803E04C4:
	.incbin "baserom.dol", 0x2E9DE4, 0x24
.global __RTTI__7ActGoto
__RTTI__7ActGoto:
  .4byte 0x803e04c8
  .4byte 0x802b6ba0
  .4byte 0x802b6c30
  .4byte 0
.global __RTTI__Q27ActGoto11Initialiser
__RTTI__Q27ActGoto11Initialiser:
  .4byte 0x802b6c18
  .4byte 0x802b6c44
.global lbl_803E0500
lbl_803E0500:
	.incbin "baserom.dol", 0x2E9E20, 0x4
.global lbl_803E0504
lbl_803E0504:
	.incbin "baserom.dol", 0x2E9E24, 0x4
.global lbl_803E0508
lbl_803E0508:
	.incbin "baserom.dol", 0x2E9E28, 0x4
.global lbl_803E050C
lbl_803E050C:
	.incbin "baserom.dol", 0x2E9E2C, 0x4
.global lbl_803E0510
lbl_803E0510:
	.incbin "baserom.dol", 0x2E9E30, 0x4
.global lbl_803E0514
lbl_803E0514:
	.incbin "baserom.dol", 0x2E9E34, 0x4
.global lbl_803E0518
lbl_803E0518:
	.incbin "baserom.dol", 0x2E9E38, 0x4
.global lbl_803E051C
lbl_803E051C:
	.incbin "baserom.dol", 0x2E9E3C, 0x4
.global lbl_803E0520
lbl_803E0520:
	.incbin "baserom.dol", 0x2E9E40, 0x4
.global lbl_803E0524
lbl_803E0524:
	.incbin "baserom.dol", 0x2E9E44, 0x4
.global lbl_803E0528
lbl_803E0528:
	.incbin "baserom.dol", 0x2E9E48, 0x1C
.global __RTTI__8ActGuard
__RTTI__8ActGuard:
  .4byte 0x802b6c94
  .4byte 0x802b6cbc
  .4byte 0
.global lbl_803E0550
lbl_803E0550:
	.incbin "baserom.dol", 0x2E9E70, 0x4
.global lbl_803E0554
lbl_803E0554:
	.incbin "baserom.dol", 0x2E9E74, 0x4
.global lbl_803E0558
lbl_803E0558:
	.incbin "baserom.dol", 0x2E9E78, 0x4
.global lbl_803E055C
lbl_803E055C:
	.incbin "baserom.dol", 0x2E9E7C, 0x4
.global lbl_803E0560
lbl_803E0560:
	.incbin "baserom.dol", 0x2E9E80, 0x4
.global lbl_803E0564
lbl_803E0564:
	.incbin "baserom.dol", 0x2E9E84, 0x24
.global __RTTI__9ActFlower
__RTTI__9ActFlower:
  .4byte 0x802b6dbc
  .4byte 0x802b6df8
  .4byte 0x802b6ea0
  .4byte 0x802b6eac
.global __RTTI__11ActPickItem
__RTTI__11ActPickItem:
  .4byte 0x802b6e94
  .4byte 0x802b6ec0
  .4byte 0x802b6fa0
  .4byte 0
  .4byte 0x41637469
  .4byte 0x6f6e0000
  .4byte 0x803e05a8
  .4byte 0x802b6fb0
  .4byte 0x802b6fbc
  .4byte 0x802b6fc8
.global __RTTI__10ActDeliver
__RTTI__10ActDeliver:
  .4byte 0x802b6f94
  .4byte 0x802b6fdc
  .4byte 0x802b7074
  .4byte 0
.global __RTTI__Q210ActDeliver11Initialiser
__RTTI__Q210ActDeliver11Initialiser:
  .4byte 0x802b705c
  .4byte 0x802b7088
.global __RTTI__15ActPickCreature
__RTTI__15ActPickCreature:
  .4byte 0x802b70ac
  .4byte 0x802b70bc
.global lbl_803E05E0
lbl_803E05E0:
	.incbin "baserom.dol", 0x2E9F00, 0x4
.global lbl_803E05E4
lbl_803E05E4:
	.incbin "baserom.dol", 0x2E9F04, 0x4
.global lbl_803E05E8
lbl_803E05E8:
	.incbin "baserom.dol", 0x2E9F08, 0x4
.global lbl_803E05EC
lbl_803E05EC:
	.incbin "baserom.dol", 0x2E9F0C, 0x4
.global lbl_803E05F0
lbl_803E05F0:
	.incbin "baserom.dol", 0x2E9F10, 0x4
.global lbl_803E05F4
lbl_803E05F4:
	.incbin "baserom.dol", 0x2E9F14, 0x4
.global lbl_803E05F8
lbl_803E05F8:
	.incbin "baserom.dol", 0x2E9F18, 0x4
.global lbl_803E05FC
lbl_803E05FC:
	.incbin "baserom.dol", 0x2E9F1C, 0x4
.global lbl_803E0600
lbl_803E0600:
	.incbin "baserom.dol", 0x2E9F20, 0x4
.global lbl_803E0604
lbl_803E0604:
	.incbin "baserom.dol", 0x2E9F24, 0x4
.global lbl_803E0608
lbl_803E0608:
	.incbin "baserom.dol", 0x2E9F28, 0x4
.global lbl_803E060C
lbl_803E060C:
	.incbin "baserom.dol", 0x2E9F2C, 0x1C
.global __RTTI__18ActPulloutCreature
__RTTI__18ActPulloutCreature:
  .4byte 0x802b71bc
  .4byte 0x802b71ec
  .4byte 0x802b72a0
  .4byte 0x802b72ac
.global __RTTI__10ActPullout
__RTTI__10ActPullout:
  .4byte 0x802b7294
  .4byte 0x802b72c0
.global lbl_803E0640
lbl_803E0640:
	.incbin "baserom.dol", 0x2E9F60, 0x30
.global __RTTI__7ActPush
__RTTI__7ActPush:
  .4byte 0x803e0648
  .4byte 0x802b7418
.global lbl_803E0678
lbl_803E0678:
	.incbin "baserom.dol", 0x2E9F98, 0x8
.global lbl_803E0680
lbl_803E0680:
	.incbin "baserom.dol", 0x2E9FA0, 0x4
.global lbl_803E0684
lbl_803E0684:
	.incbin "baserom.dol", 0x2E9FA4, 0x4
.global lbl_803E0688
lbl_803E0688:
	.incbin "baserom.dol", 0x2E9FA8, 0x4
.global lbl_803E068C
lbl_803E068C:
	.incbin "baserom.dol", 0x2E9FAC, 0x4
.global lbl_803E0690
lbl_803E0690:
	.incbin "baserom.dol", 0x2E9FB0, 0x4
.global lbl_803E0694
lbl_803E0694:
	.incbin "baserom.dol", 0x2E9FB4, 0x4
.global lbl_803E0698
lbl_803E0698:
	.incbin "baserom.dol", 0x2E9FB8, 0x4
.global lbl_803E069C
lbl_803E069C:
	.incbin "baserom.dol", 0x2E9FBC, 0x4
.global lbl_803E06A0
lbl_803E06A0:
	.incbin "baserom.dol", 0x2E9FC0, 0x4
.global lbl_803E06A4
lbl_803E06A4:
	.incbin "baserom.dol", 0x2E9FC4, 0x4
.global lbl_803E06A8
lbl_803E06A8:
	.incbin "baserom.dol", 0x2E9FC8, 0x4
.global lbl_803E06AC
lbl_803E06AC:
	.incbin "baserom.dol", 0x2E9FCC, 0x4
.global lbl_803E06B0
lbl_803E06B0:
	.incbin "baserom.dol", 0x2E9FD0, 0x4
.global lbl_803E06B4
lbl_803E06B4:
	.incbin "baserom.dol", 0x2E9FD4, 0x4
.global lbl_803E06B8
lbl_803E06B8:
	.incbin "baserom.dol", 0x2E9FD8, 0x4
.global lbl_803E06BC
lbl_803E06BC:
	.incbin "baserom.dol", 0x2E9FDC, 0x4
.global lbl_803E06C0
lbl_803E06C0:
	.incbin "baserom.dol", 0x2E9FE0, 0x4
.global lbl_803E06C4
lbl_803E06C4:
	.incbin "baserom.dol", 0x2E9FE4, 0x4
.global lbl_803E06C8
lbl_803E06C8:
	.incbin "baserom.dol", 0x2E9FE8, 0x4
.global lbl_803E06CC
lbl_803E06CC:
	.incbin "baserom.dol", 0x2E9FEC, 0x4
.global lbl_803E06D0
lbl_803E06D0:
	.incbin "baserom.dol", 0x2E9FF0, 0x4
.global lbl_803E06D4
lbl_803E06D4:
	.incbin "baserom.dol", 0x2E9FF4, 0x1C
.global __RTTI__10ActPutItem
__RTTI__10ActPutItem:
  .4byte 0x802b74f8
  .4byte 0x802b7520
  .4byte 0x802b75a4
  .4byte 0
.global __RTTI__10ActPutBomb
__RTTI__10ActPutBomb:
  .4byte 0x802b7598
  .4byte 0x802b75b8
.global lbl_803E0708
lbl_803E0708:
	.incbin "baserom.dol", 0x2EA028, 0x4
.global lbl_803E070C
lbl_803E070C:
	.incbin "baserom.dol", 0x2EA02C, 0x4
.global lbl_803E0710
lbl_803E0710:
	.incbin "baserom.dol", 0x2EA030, 0x4
.global lbl_803E0714
lbl_803E0714:
	.incbin "baserom.dol", 0x2EA034, 0x4
.global lbl_803E0718
lbl_803E0718:
	.incbin "baserom.dol", 0x2EA038, 0x4
.global lbl_803E071C
lbl_803E071C:
	.incbin "baserom.dol", 0x2EA03C, 0x4
.global lbl_803E0720
lbl_803E0720:
	.incbin "baserom.dol", 0x2EA040, 0x4
.global lbl_803E0724
lbl_803E0724:
	.incbin "baserom.dol", 0x2EA044, 0x4
.global lbl_803E0728
lbl_803E0728:
	.incbin "baserom.dol", 0x2EA048, 0x4
.global lbl_803E072C
lbl_803E072C:
	.incbin "baserom.dol", 0x2EA04C, 0x4
.global lbl_803E0730
lbl_803E0730:
	.incbin "baserom.dol", 0x2EA050, 0x4
.global lbl_803E0734
lbl_803E0734:
	.incbin "baserom.dol", 0x2EA054, 0x4
.global lbl_803E0738
lbl_803E0738:
	.incbin "baserom.dol", 0x2EA058, 0x4
.global lbl_803E073C
lbl_803E073C:
	.incbin "baserom.dol", 0x2EA05C, 0x4
.global lbl_803E0740
lbl_803E0740:
	.incbin "baserom.dol", 0x2EA060, 0x4
.global lbl_803E0744
lbl_803E0744:
	.incbin "baserom.dol", 0x2EA064, 0x4
.global lbl_803E0748
lbl_803E0748:
	.incbin "baserom.dol", 0x2EA068, 0x4
.global lbl_803E074C
lbl_803E074C:
	.incbin "baserom.dol", 0x2EA06C, 0x4
.global lbl_803E0750
lbl_803E0750:
	.incbin "baserom.dol", 0x2EA070, 0x4
.global lbl_803E0754
lbl_803E0754:
	.incbin "baserom.dol", 0x2EA074, 0x14
.global lbl_803E0768
lbl_803E0768:
	.incbin "baserom.dol", 0x2EA088, 0x1C
.global __RTTI__13ActRandomBoid
__RTTI__13ActRandomBoid:
  .4byte 0x802b76f4
  .4byte 0x802b7720
  .4byte 0x802b77b4
  .4byte 0
.global __RTTI__Q213ActRandomBoid11Initialiser
__RTTI__Q213ActRandomBoid11Initialiser:
  .4byte 0x802b7798
  .4byte 0x802b77c8
  .4byte 0x802b77e0
  .4byte 0
.global __RTTI__Q213ActRandomBoid12AnimListener
__RTTI__Q213ActRandomBoid12AnimListener:
  .4byte 0x802b7800
  .4byte 0x802b781c
  .4byte 0
.global lbl_803E07B0
lbl_803E07B0:
	.incbin "baserom.dol", 0x2EA0D0, 0x8
.global lbl_803E07B8
lbl_803E07B8:
	.incbin "baserom.dol", 0x2EA0D8, 0x4
.global lbl_803E07BC
lbl_803E07BC:
	.incbin "baserom.dol", 0x2EA0DC, 0x4
.global lbl_803E07C0
lbl_803E07C0:
	.incbin "baserom.dol", 0x2EA0E0, 0x4
.global lbl_803E07C4
lbl_803E07C4:
	.incbin "baserom.dol", 0x2EA0E4, 0x4
.global lbl_803E07C8
lbl_803E07C8:
	.incbin "baserom.dol", 0x2EA0E8, 0x4
.global lbl_803E07CC
lbl_803E07CC:
	.incbin "baserom.dol", 0x2EA0EC, 0x4
.global lbl_803E07D0
lbl_803E07D0:
	.incbin "baserom.dol", 0x2EA0F0, 0x4
.global lbl_803E07D4
lbl_803E07D4:
	.incbin "baserom.dol", 0x2EA0F4, 0x4
.global lbl_803E07D8
lbl_803E07D8:
	.incbin "baserom.dol", 0x2EA0F8, 0x4
.global lbl_803E07DC
lbl_803E07DC:
	.incbin "baserom.dol", 0x2EA0FC, 0x4
.global lbl_803E07E0
lbl_803E07E0:
	.incbin "baserom.dol", 0x2EA100, 0x24
.global __RTTI__9ActRescue
__RTTI__9ActRescue:
  .4byte 0x802b787c
  .4byte 0x802b78b8
  .4byte 0
.global lbl_803E0810
lbl_803E0810:
	.incbin "baserom.dol", 0x2EA130, 0x8
.global lbl_803E0818
lbl_803E0818:
	.incbin "baserom.dol", 0x2EA138, 0x4
.global lbl_803E081C
lbl_803E081C:
	.incbin "baserom.dol", 0x2EA13C, 0x4
.global lbl_803E0820
lbl_803E0820:
	.incbin "baserom.dol", 0x2EA140, 0x4
.global lbl_803E0824
lbl_803E0824:
	.incbin "baserom.dol", 0x2EA144, 0x24
.global __RTTI__7ActRope
__RTTI__7ActRope:
  .4byte 0x803e0828
  .4byte 0x802b79a8
.global lbl_803E0850
lbl_803E0850:
	.incbin "baserom.dol", 0x2EA170, 0x4
.global lbl_803E0854
lbl_803E0854:
	.incbin "baserom.dol", 0x2EA174, 0x4
.global lbl_803E0858
lbl_803E0858:
	.incbin "baserom.dol", 0x2EA178, 0x4
.global lbl_803E085C
lbl_803E085C:
	.incbin "baserom.dol", 0x2EA17C, 0x4
.global lbl_803E0860
lbl_803E0860:
	.incbin "baserom.dol", 0x2EA180, 0x4
.global lbl_803E0864
lbl_803E0864:
	.incbin "baserom.dol", 0x2EA184, 0x4
.global lbl_803E0868
lbl_803E0868:
	.incbin "baserom.dol", 0x2EA188, 0x24
.global __RTTI__16ActShootCreature
__RTTI__16ActShootCreature:
  .4byte 0x802b7a5c
  .4byte 0x802b7aa0
  .4byte 0x802b7b48
  .4byte 0x802b7b54
.global __RTTI__8ActShoot
__RTTI__8ActShoot:
  .4byte 0x802b7b3c
  .4byte 0x802b7b68
  .4byte 0
.global lbl_803E08A8
lbl_803E08A8:
	.incbin "baserom.dol", 0x2EA1C8, 0x4
.global lbl_803E08AC
lbl_803E08AC:
	.incbin "baserom.dol", 0x2EA1CC, 0x4
.global lbl_803E08B0
lbl_803E08B0:
	.incbin "baserom.dol", 0x2EA1D0, 0x4
.global lbl_803E08B4
lbl_803E08B4:
	.incbin "baserom.dol", 0x2EA1D4, 0x4
.global lbl_803E08B8
lbl_803E08B8:
	.incbin "baserom.dol", 0x2EA1D8, 0x1C
.global __RTTI__8ActWatch
__RTTI__8ActWatch:
  .4byte 0x802b7c50
  .4byte 0x802b7c78
  .4byte 0x802b7d08
  .4byte 0
.global __RTTI__Q28ActWatch11Initialiser
__RTTI__Q28ActWatch11Initialiser:
  .4byte 0x802b7cf0
  .4byte 0x802b7d1c
  .4byte 0x802b7d34
  .4byte 0
.global __RTTI__Q28ActWatch12AnimListener
__RTTI__Q28ActWatch12AnimListener:
  .4byte 0x802b7d54
  .4byte 0x802b7d6c
  .4byte 0
.global lbl_803E0900
lbl_803E0900:
	.incbin "baserom.dol", 0x2EA220, 0x4
.global lbl_803E0904
lbl_803E0904:
	.incbin "baserom.dol", 0x2EA224, 0x4
.global lbl_803E0908
lbl_803E0908:
	.incbin "baserom.dol", 0x2EA228, 0x4
.global lbl_803E090C
lbl_803E090C:
	.incbin "baserom.dol", 0x2EA22C, 0x4
.global lbl_803E0910
lbl_803E0910:
	.incbin "baserom.dol", 0x2EA230, 0x4
.global lbl_803E0914
lbl_803E0914:
	.incbin "baserom.dol", 0x2EA234, 0x4
.global lbl_803E0918
lbl_803E0918:
	.incbin "baserom.dol", 0x2EA238, 0x4
.global lbl_803E091C
lbl_803E091C:
	.incbin "baserom.dol", 0x2EA23C, 0x4
.global lbl_803E0920
lbl_803E0920:
	.incbin "baserom.dol", 0x2EA240, 0x4
.global lbl_803E0924
lbl_803E0924:
	.incbin "baserom.dol", 0x2EA244, 0x4
.global lbl_803E0928
lbl_803E0928:
	.incbin "baserom.dol", 0x2EA248, 0x4
.global lbl_803E092C
lbl_803E092C:
	.incbin "baserom.dol", 0x2EA24C, 0x4
.global lbl_803E0930
lbl_803E0930:
	.incbin "baserom.dol", 0x2EA250, 0x4
.global lbl_803E0934
lbl_803E0934:
	.incbin "baserom.dol", 0x2EA254, 0x4
.global lbl_803E0938
lbl_803E0938:
	.incbin "baserom.dol", 0x2EA258, 0x24
.global __RTTI__7ActWeed
__RTTI__7ActWeed:
  .4byte 0x803e093c
  .4byte 0x802b7dd8
  .4byte 0
  .4byte 0x2d000000
  .4byte 0x57415443
  .4byte 0x48000000
  .4byte 0x45534341
  .4byte 0x50450000
  .4byte 0x43484153
  .4byte 0x45000000
  .4byte 0x474f544f
  .4byte 0
  .4byte 0x5049434b
  .4byte 0
  .4byte 0x50555400
  .4byte 0x4b49434b
  .4byte 0
.global lbl_803E09A0
lbl_803E09A0:
	.incbin "baserom.dol", 0x2EA2C0, 0x20
.global __RTTI__9TopAction
__RTTI__9TopAction:
  .4byte 0x802b7f98
  .4byte 0x802b7fc0
  .4byte 0x802b8038
  .4byte 0
.global __RTTI__Q29TopAction14MotionListener
__RTTI__Q29TopAction14MotionListener:
  .4byte 0x802b8058
  .4byte 0x802b8074
.global __RTTI__8OrAction
__RTTI__8OrAction:
  .4byte 0x802b808c
  .4byte 0x802b8098
  .4byte 0x802b8110
  .4byte 0x802b811c
.global lbl_803E09E8
lbl_803E09E8:
	.incbin "baserom.dol", 0x2EA308, 0x4
.global lbl_803E09EC
lbl_803E09EC:
	.incbin "baserom.dol", 0x2EA30C, 0x4
.global lbl_803E09F0
lbl_803E09F0:
	.incbin "baserom.dol", 0x2EA310, 0x4
.global lbl_803E09F4
lbl_803E09F4:
	.incbin "baserom.dol", 0x2EA314, 0x4
.global lbl_803E09F8
lbl_803E09F8:
	.incbin "baserom.dol", 0x2EA318, 0x4
.global lbl_803E09FC
lbl_803E09FC:
	.incbin "baserom.dol", 0x2EA31C, 0x4
.global lbl_803E0A00
lbl_803E0A00:
	.incbin "baserom.dol", 0x2EA320, 0x8
.global lbl_803E0A08
lbl_803E0A08:
	.incbin "baserom.dol", 0x2EA328, 0x4
.global lbl_803E0A0C
lbl_803E0A0C:
	.incbin "baserom.dol", 0x2EA32C, 0x4
.global lbl_803E0A10
lbl_803E0A10:
	.incbin "baserom.dol", 0x2EA330, 0x24
.global __RTTI__7BaseInf
__RTTI__7BaseInf:
  .4byte 0x803e0a2c
  .4byte 0x802b8278
.global __RTTI__11CreatureInf
__RTTI__11CreatureInf:
  .4byte 0x802b8260
  .4byte 0x802b828c
  .4byte 0x496e664d
  .4byte 0x67720000
.global __RTTI__6InfMgr
__RTTI__6InfMgr:
  .4byte 0x803e0a44
  .4byte 0
.global __RTTI__10MonoInfMgr
__RTTI__10MonoInfMgr:
  .4byte 0x802b82d8
  .4byte 0x802b82e4
.global __RTTI__14CreatureInfMgr
__RTTI__14CreatureInfMgr:
  .4byte 0x802b82c8
  .4byte 0x802b82f0
.global __RTTI__11BPikiInfMgr
__RTTI__11BPikiInfMgr:
  .4byte 0x802b8324
  .4byte 0x802b8330
.global __RTTI__8BPikiInf
__RTTI__8BPikiInf:
  .4byte 0x802b83a0
  .4byte 0x802b83ac
  .4byte 0
.global lbl_803E0A78
lbl_803E0A78:
	.incbin "baserom.dol", 0x2EA398, 0x4
.global lbl_803E0A7C
lbl_803E0A7C:
	.incbin "baserom.dol", 0x2EA39C, 0x4
.global lbl_803E0A80
lbl_803E0A80:
	.incbin "baserom.dol", 0x2EA3A0, 0x4
.global lbl_803E0A84
lbl_803E0A84:
	.incbin "baserom.dol", 0x2EA3A4, 0x4
.global lbl_803E0A88
lbl_803E0A88:
	.incbin "baserom.dol", 0x2EA3A8, 0x4
.global lbl_803E0A8C
lbl_803E0A8C:
	.incbin "baserom.dol", 0x2EA3AC, 0x4
.global lbl_803E0A90
lbl_803E0A90:
	.incbin "baserom.dol", 0x2EA3B0, 0x4
.global lbl_803E0A94
lbl_803E0A94:
	.incbin "baserom.dol", 0x2EA3B4, 0x4
.global lbl_803E0A98
lbl_803E0A98:
	.incbin "baserom.dol", 0x2EA3B8, 0x4
.global lbl_803E0A9C
lbl_803E0A9C:
	.incbin "baserom.dol", 0x2EA3BC, 0x4
.global lbl_803E0AA0
lbl_803E0AA0:
	.incbin "baserom.dol", 0x2EA3C0, 0x4
.global lbl_803E0AA4
lbl_803E0AA4:
	.incbin "baserom.dol", 0x2EA3C4, 0x4
.global lbl_803E0AA8
lbl_803E0AA8:
	.incbin "baserom.dol", 0x2EA3C8, 0x4
.global lbl_803E0AAC
lbl_803E0AAC:
	.incbin "baserom.dol", 0x2EA3CC, 0x4
.global lbl_803E0AB0
lbl_803E0AB0:
	.incbin "baserom.dol", 0x2EA3D0, 0x4
.global lbl_803E0AB4
lbl_803E0AB4:
	.incbin "baserom.dol", 0x2EA3D4, 0x7C
.global __RTTI__19StateMachine$$04Piki$$1
__RTTI__19StateMachine$$04Piki$$1:
  .4byte 0x802b8760
  .4byte 0
  .4byte 0x802b878c
  .4byte 0
  .4byte 0x802b87b0
  .4byte 0
  .4byte 0x802b87f0
  .4byte 0
  .4byte 0x802b8898
  .4byte 0
  .4byte 0x50696b69
  .4byte 0
  .4byte 0x802b88b8
  .4byte 0
  .4byte 0x802b88c4
  .4byte 0
  .4byte 0x802b88d4
  .4byte 0x802b88e0
.global __RTTI__4Piki
__RTTI__4Piki:
  .4byte 0x803e0b58
  .4byte 0x802b88f4
.global lbl_803E0B80
lbl_803E0B80:
	.incbin "baserom.dol", 0x2EA4A0, 0x4
.global lbl_803E0B84
lbl_803E0B84:
	.incbin "baserom.dol", 0x2EA4A4, 0x4
.global lbl_803E0B88
lbl_803E0B88:
	.incbin "baserom.dol", 0x2EA4A8, 0x4
.global lbl_803E0B8C
lbl_803E0B8C:
	.incbin "baserom.dol", 0x2EA4AC, 0x4
.global lbl_803E0B90
lbl_803E0B90:
	.incbin "baserom.dol", 0x2EA4B0, 0x4
.global lbl_803E0B94
lbl_803E0B94:
	.incbin "baserom.dol", 0x2EA4B4, 0x8
.global lbl_803E0B9C
lbl_803E0B9C:
	.incbin "baserom.dol", 0x2EA4BC, 0x4
.global lbl_803E0BA0
lbl_803E0BA0:
	.incbin "baserom.dol", 0x2EA4C0, 0x4
.global lbl_803E0BA4
lbl_803E0BA4:
	.incbin "baserom.dol", 0x2EA4C4, 0x4
.global lbl_803E0BA8
lbl_803E0BA8:
	.incbin "baserom.dol", 0x2EA4C8, 0x4
.global lbl_803E0BAC
lbl_803E0BAC:
	.incbin "baserom.dol", 0x2EA4CC, 0x4
.global lbl_803E0BB0
lbl_803E0BB0:
	.incbin "baserom.dol", 0x2EA4D0, 0x4
.global lbl_803E0BB4
lbl_803E0BB4:
	.incbin "baserom.dol", 0x2EA4D4, 0x4
.global lbl_803E0BB8
lbl_803E0BB8:
	.incbin "baserom.dol", 0x2EA4D8, 0x4
.global lbl_803E0BBC
lbl_803E0BBC:
	.incbin "baserom.dol", 0x2EA4DC, 0x4
.global lbl_803E0BC0
lbl_803E0BC0:
	.incbin "baserom.dol", 0x2EA4E0, 0x4
.global lbl_803E0BC4
lbl_803E0BC4:
	.incbin "baserom.dol", 0x2EA4E4, 0x4
.global lbl_803E0BC8
lbl_803E0BC8:
	.incbin "baserom.dol", 0x2EA4E8, 0x4
.global lbl_803E0BCC
lbl_803E0BCC:
	.incbin "baserom.dol", 0x2EA4EC, 0x4
.global lbl_803E0BD0
lbl_803E0BD0:
	.incbin "baserom.dol", 0x2EA4F0, 0x4
.global lbl_803E0BD4
lbl_803E0BD4:
	.incbin "baserom.dol", 0x2EA4F4, 0x4
.global lbl_803E0BD8
lbl_803E0BD8:
	.incbin "baserom.dol", 0x2EA4F8, 0x4
.global lbl_803E0BDC
lbl_803E0BDC:
	.incbin "baserom.dol", 0x2EA4FC, 0x4
.global lbl_803E0BE0
lbl_803E0BE0:
	.incbin "baserom.dol", 0x2EA500, 0x4
.global lbl_803E0BE4
lbl_803E0BE4:
	.incbin "baserom.dol", 0x2EA504, 0x4
.global lbl_803E0BE8
lbl_803E0BE8:
	.incbin "baserom.dol", 0x2EA508, 0x4
.global lbl_803E0BEC
lbl_803E0BEC:
	.incbin "baserom.dol", 0x2EA50C, 0x4
.global lbl_803E0BF0
lbl_803E0BF0:
	.incbin "baserom.dol", 0x2EA510, 0x4
.global lbl_803E0BF4
lbl_803E0BF4:
	.incbin "baserom.dol", 0x2EA514, 0x4
.global lbl_803E0BF8
lbl_803E0BF8:
	.incbin "baserom.dol", 0x2EA518, 0x4
.global lbl_803E0BFC
lbl_803E0BFC:
	.incbin "baserom.dol", 0x2EA51C, 0x4
.global lbl_803E0C00
lbl_803E0C00:
	.incbin "baserom.dol", 0x2EA520, 0x4
.global lbl_803E0C04
lbl_803E0C04:
	.incbin "baserom.dol", 0x2EA524, 0x4
.global lbl_803E0C08
lbl_803E0C08:
	.incbin "baserom.dol", 0x2EA528, 0x4
.global lbl_803E0C0C
lbl_803E0C0C:
	.incbin "baserom.dol", 0x2EA52C, 0x4
.global lbl_803E0C10
lbl_803E0C10:
	.incbin "baserom.dol", 0x2EA530, 0x4
.global lbl_803E0C14
lbl_803E0C14:
	.incbin "baserom.dol", 0x2EA534, 0x4
.global lbl_803E0C18
lbl_803E0C18:
	.incbin "baserom.dol", 0x2EA538, 0x4
.global lbl_803E0C1C
lbl_803E0C1C:
	.incbin "baserom.dol", 0x2EA53C, 0x4
.global lbl_803E0C20
lbl_803E0C20:
	.incbin "baserom.dol", 0x2EA540, 0x4
.global lbl_803E0C24
lbl_803E0C24:
	.incbin "baserom.dol", 0x2EA544, 0x4
.global lbl_803E0C28
lbl_803E0C28:
	.incbin "baserom.dol", 0x2EA548, 0x4
.global lbl_803E0C2C
lbl_803E0C2C:
	.incbin "baserom.dol", 0x2EA54C, 0x4
.global lbl_803E0C30
lbl_803E0C30:
	.incbin "baserom.dol", 0x2EA550, 0x4
.global lbl_803E0C34
lbl_803E0C34:
	.incbin "baserom.dol", 0x2EA554, 0x4
.global lbl_803E0C38
lbl_803E0C38:
	.incbin "baserom.dol", 0x2EA558, 0x4
.global lbl_803E0C3C
lbl_803E0C3C:
	.incbin "baserom.dol", 0x2EA55C, 0x4
.global lbl_803E0C40
lbl_803E0C40:
	.incbin "baserom.dol", 0x2EA560, 0x4
.global lbl_803E0C44
lbl_803E0C44:
	.incbin "baserom.dol", 0x2EA564, 0x4
.global lbl_803E0C48
lbl_803E0C48:
	.incbin "baserom.dol", 0x2EA568, 0x4
.global lbl_803E0C4C
lbl_803E0C4C:
	.incbin "baserom.dol", 0x2EA56C, 0x4
.global lbl_803E0C50
lbl_803E0C50:
	.incbin "baserom.dol", 0x2EA570, 0x4
.global lbl_803E0C54
lbl_803E0C54:
	.incbin "baserom.dol", 0x2EA574, 0x4
.global lbl_803E0C58
lbl_803E0C58:
	.incbin "baserom.dol", 0x2EA578, 0x4
.global lbl_803E0C5C
lbl_803E0C5C:
	.incbin "baserom.dol", 0x2EA57C, 0x4
.global lbl_803E0C60
lbl_803E0C60:
	.incbin "baserom.dol", 0x2EA580, 0x4
.global lbl_803E0C64
lbl_803E0C64:
	.incbin "baserom.dol", 0x2EA584, 0x4
.global lbl_803E0C68
lbl_803E0C68:
	.incbin "baserom.dol", 0x2EA588, 0x4
.global lbl_803E0C6C
lbl_803E0C6C:
	.incbin "baserom.dol", 0x2EA58C, 0x4
.global lbl_803E0C70
lbl_803E0C70:
	.incbin "baserom.dol", 0x2EA590, 0x4
.global lbl_803E0C74
lbl_803E0C74:
	.incbin "baserom.dol", 0x2EA594, 0x4
.global lbl_803E0C78
lbl_803E0C78:
	.incbin "baserom.dol", 0x2EA598, 0x4
.global lbl_803E0C7C
lbl_803E0C7C:
	.incbin "baserom.dol", 0x2EA59C, 0x4
.global lbl_803E0C80
lbl_803E0C80:
	.incbin "baserom.dol", 0x2EA5A0, 0x4
.global lbl_803E0C84
lbl_803E0C84:
	.incbin "baserom.dol", 0x2EA5A4, 0x4
.global lbl_803E0C88
lbl_803E0C88:
	.incbin "baserom.dol", 0x2EA5A8, 0x4
.global lbl_803E0C8C
lbl_803E0C8C:
	.incbin "baserom.dol", 0x2EA5AC, 0x4
.global lbl_803E0C90
lbl_803E0C90:
	.incbin "baserom.dol", 0x2EA5B0, 0x4
.global lbl_803E0C94
lbl_803E0C94:
	.incbin "baserom.dol", 0x2EA5B4, 0x4
.global lbl_803E0C98
lbl_803E0C98:
	.incbin "baserom.dol", 0x2EA5B8, 0x4
.global lbl_803E0C9C
lbl_803E0C9C:
	.incbin "baserom.dol", 0x2EA5BC, 0x4
.global lbl_803E0CA0
lbl_803E0CA0:
	.incbin "baserom.dol", 0x2EA5C0, 0x4
.global lbl_803E0CA4
lbl_803E0CA4:
	.incbin "baserom.dol", 0x2EA5C4, 0x4
.global lbl_803E0CA8
lbl_803E0CA8:
	.incbin "baserom.dol", 0x2EA5C8, 0x4
.global lbl_803E0CAC
lbl_803E0CAC:
	.incbin "baserom.dol", 0x2EA5CC, 0x4
.global lbl_803E0CB0
lbl_803E0CB0:
	.incbin "baserom.dol", 0x2EA5D0, 0x4
.global lbl_803E0CB4
lbl_803E0CB4:
	.incbin "baserom.dol", 0x2EA5D4, 0x4
.global lbl_803E0CB8
lbl_803E0CB8:
	.incbin "baserom.dol", 0x2EA5D8, 0x4
.global lbl_803E0CBC
lbl_803E0CBC:
	.incbin "baserom.dol", 0x2EA5DC, 0x4
.global lbl_803E0CC0
lbl_803E0CC0:
	.incbin "baserom.dol", 0x2EA5E0, 0x4
.global lbl_803E0CC4
lbl_803E0CC4:
	.incbin "baserom.dol", 0x2EA5E4, 0x4
.global lbl_803E0CC8
lbl_803E0CC8:
	.incbin "baserom.dol", 0x2EA5E8, 0x4
.global lbl_803E0CCC
lbl_803E0CCC:
	.incbin "baserom.dol", 0x2EA5EC, 0x4
.global lbl_803E0CD0
lbl_803E0CD0:
	.incbin "baserom.dol", 0x2EA5F0, 0x50
.global __RTTI__7PikiMgr
__RTTI__7PikiMgr:
  .4byte 0x803e0cd8
  .4byte 0x802b8b60
  .4byte 0x802b8c28
  .4byte 0
  .4byte 0x802b8c8c
  .4byte 0
.global __RTTI__8PikiProp
__RTTI__8PikiProp:
  .4byte 0x802b8c80
  .4byte 0x802b8c9c
.global lbl_803E0D40
lbl_803E0D40:
	.incbin "baserom.dol", 0x2EA660, 0x8
.global lbl_803E0D48
lbl_803E0D48:
	.incbin "baserom.dol", 0x2EA668, 0x4
.global lbl_803E0D4C
lbl_803E0D4C:
	.incbin "baserom.dol", 0x2EA66C, 0x4
.global lbl_803E0D50
lbl_803E0D50:
	.incbin "baserom.dol", 0x2EA670, 0x4
.global lbl_803E0D54
lbl_803E0D54:
	.incbin "baserom.dol", 0x2EA674, 0x4
.global lbl_803E0D58
lbl_803E0D58:
	.incbin "baserom.dol", 0x2EA678, 0x4
.global lbl_803E0D5C
lbl_803E0D5C:
	.incbin "baserom.dol", 0x2EA67C, 0x8
.global lbl_803E0D64
lbl_803E0D64:
	.incbin "baserom.dol", 0x2EA684, 0x8
.global lbl_803E0D6C
lbl_803E0D6C:
	.incbin "baserom.dol", 0x2EA68C, 0x4
.global lbl_803E0D70
lbl_803E0D70:
	.incbin "baserom.dol", 0x2EA690, 0x4
.global lbl_803E0D74
lbl_803E0D74:
	.incbin "baserom.dol", 0x2EA694, 0x4
.global lbl_803E0D78
lbl_803E0D78:
	.incbin "baserom.dol", 0x2EA698, 0x8
.global lbl_803E0D80
lbl_803E0D80:
	.incbin "baserom.dol", 0x2EA6A0, 0x4
.global lbl_803E0D84
lbl_803E0D84:
	.incbin "baserom.dol", 0x2EA6A4, 0x4
.global lbl_803E0D88
lbl_803E0D88:
	.incbin "baserom.dol", 0x2EA6A8, 0x4
.global lbl_803E0D8C
lbl_803E0D8C:
	.incbin "baserom.dol", 0x2EA6AC, 0x4
.global lbl_803E0D90
lbl_803E0D90:
	.incbin "baserom.dol", 0x2EA6B0, 0x4
.global lbl_803E0D94
lbl_803E0D94:
	.incbin "baserom.dol", 0x2EA6B4, 0x4
.global lbl_803E0D98
lbl_803E0D98:
	.incbin "baserom.dol", 0x2EA6B8, 0x4
.global lbl_803E0D9C
lbl_803E0D9C:
	.incbin "baserom.dol", 0x2EA6BC, 0x4
.global lbl_803E0DA0
lbl_803E0DA0:
	.incbin "baserom.dol", 0x2EA6C0, 0x4
.global lbl_803E0DA4
lbl_803E0DA4:
	.incbin "baserom.dol", 0x2EA6C4, 0x4
.global lbl_803E0DA8
lbl_803E0DA8:
	.incbin "baserom.dol", 0x2EA6C8, 0x4
.global lbl_803E0DAC
lbl_803E0DAC:
	.incbin "baserom.dol", 0x2EA6CC, 0x4
.global lbl_803E0DB0
lbl_803E0DB0:
	.incbin "baserom.dol", 0x2EA6D0, 0x4
.global lbl_803E0DB4
lbl_803E0DB4:
	.incbin "baserom.dol", 0x2EA6D4, 0x8
.global lbl_803E0DBC
lbl_803E0DBC:
	.incbin "baserom.dol", 0x2EA6DC, 0x4
.global lbl_803E0DC0
lbl_803E0DC0:
	.incbin "baserom.dol", 0x2EA6E0, 0x4
.global lbl_803E0DC4
lbl_803E0DC4:
	.incbin "baserom.dol", 0x2EA6E4, 0x4
.global lbl_803E0DC8
lbl_803E0DC8:
	.incbin "baserom.dol", 0x2EA6E8, 0x4
.global lbl_803E0DCC
lbl_803E0DCC:
	.incbin "baserom.dol", 0x2EA6EC, 0x4
.global lbl_803E0DD0
lbl_803E0DD0:
	.incbin "baserom.dol", 0x2EA6F0, 0x4
.global lbl_803E0DD4
lbl_803E0DD4:
	.incbin "baserom.dol", 0x2EA6F4, 0x4
.global lbl_803E0DD8
lbl_803E0DD8:
	.incbin "baserom.dol", 0x2EA6F8, 0x4
.global lbl_803E0DDC
lbl_803E0DDC:
	.incbin "baserom.dol", 0x2EA6FC, 0x4
.global lbl_803E0DE0
lbl_803E0DE0:
	.incbin "baserom.dol", 0x2EA700, 0x4
.global lbl_803E0DE4
lbl_803E0DE4:
	.incbin "baserom.dol", 0x2EA704, 0x4
.global lbl_803E0DE8
lbl_803E0DE8:
	.incbin "baserom.dol", 0x2EA708, 0x4
.global lbl_803E0DEC
lbl_803E0DEC:
	.incbin "baserom.dol", 0x2EA70C, 0x4
.global lbl_803E0DF0
lbl_803E0DF0:
	.incbin "baserom.dol", 0x2EA710, 0x4
.global lbl_803E0DF4
lbl_803E0DF4:
	.incbin "baserom.dol", 0x2EA714, 0x4
.global lbl_803E0DF8
lbl_803E0DF8:
	.incbin "baserom.dol", 0x2EA718, 0x4
.global lbl_803E0DFC
lbl_803E0DFC:
	.incbin "baserom.dol", 0x2EA71C, 0x8
.global lbl_803E0E04
lbl_803E0E04:
	.incbin "baserom.dol", 0x2EA724, 0x8
.global lbl_803E0E0C
lbl_803E0E0C:
	.incbin "baserom.dol", 0x2EA72C, 0x8
.global lbl_803E0E14
lbl_803E0E14:
	.incbin "baserom.dol", 0x2EA734, 0x8
.global lbl_803E0E1C
lbl_803E0E1C:
	.incbin "baserom.dol", 0x2EA73C, 0x4
.global lbl_803E0E20
lbl_803E0E20:
	.incbin "baserom.dol", 0x2EA740, 0x4
.global lbl_803E0E24
lbl_803E0E24:
	.incbin "baserom.dol", 0x2EA744, 0x4
.global lbl_803E0E28
lbl_803E0E28:
	.incbin "baserom.dol", 0x2EA748, 0x4
.global lbl_803E0E2C
lbl_803E0E2C:
	.incbin "baserom.dol", 0x2EA74C, 0x4
.global lbl_803E0E30
lbl_803E0E30:
	.incbin "baserom.dol", 0x2EA750, 0x4
.global lbl_803E0E34
lbl_803E0E34:
	.incbin "baserom.dol", 0x2EA754, 0x4
.global lbl_803E0E38
lbl_803E0E38:
	.incbin "baserom.dol", 0x2EA758, 0x4
.global lbl_803E0E3C
lbl_803E0E3C:
	.incbin "baserom.dol", 0x2EA75C, 0x4
.global lbl_803E0E40
lbl_803E0E40:
	.incbin "baserom.dol", 0x2EA760, 0x8
.global lbl_803E0E48
lbl_803E0E48:
	.incbin "baserom.dol", 0x2EA768, 0x4
.global lbl_803E0E4C
lbl_803E0E4C:
	.incbin "baserom.dol", 0x2EA76C, 0x4
.global lbl_803E0E50
lbl_803E0E50:
	.incbin "baserom.dol", 0x2EA770, 0x4
.global lbl_803E0E54
lbl_803E0E54:
	.incbin "baserom.dol", 0x2EA774, 0x4
.global lbl_803E0E58
lbl_803E0E58:
	.incbin "baserom.dol", 0x2EA778, 0x4
.global lbl_803E0E5C
lbl_803E0E5C:
	.incbin "baserom.dol", 0x2EA77C, 0x4
.global lbl_803E0E60
lbl_803E0E60:
	.incbin "baserom.dol", 0x2EA780, 0x4
.global lbl_803E0E64
lbl_803E0E64:
	.incbin "baserom.dol", 0x2EA784, 0x4
.global lbl_803E0E68
lbl_803E0E68:
	.incbin "baserom.dol", 0x2EA788, 0x4
.global lbl_803E0E6C
lbl_803E0E6C:
	.incbin "baserom.dol", 0x2EA78C, 0x4
.global lbl_803E0E70
lbl_803E0E70:
	.incbin "baserom.dol", 0x2EA790, 0x8
.global lbl_803E0E78
lbl_803E0E78:
	.incbin "baserom.dol", 0x2EA798, 0x8
.global lbl_803E0E80
lbl_803E0E80:
	.incbin "baserom.dol", 0x2EA7A0, 0x4
.global lbl_803E0E84
lbl_803E0E84:
	.incbin "baserom.dol", 0x2EA7A4, 0x4
.global lbl_803E0E88
lbl_803E0E88:
	.incbin "baserom.dol", 0x2EA7A8, 0x4
.global lbl_803E0E8C
lbl_803E0E8C:
	.incbin "baserom.dol", 0x2EA7AC, 0x4
.global lbl_803E0E90
lbl_803E0E90:
	.incbin "baserom.dol", 0x2EA7B0, 0x8
.global lbl_803E0E98
lbl_803E0E98:
	.incbin "baserom.dol", 0x2EA7B8, 0x8
.global lbl_803E0EA0
lbl_803E0EA0:
	.incbin "baserom.dol", 0x2EA7C0, 0x4
.global lbl_803E0EA4
lbl_803E0EA4:
	.incbin "baserom.dol", 0x2EA7C4, 0x4
.global lbl_803E0EA8
lbl_803E0EA8:
	.incbin "baserom.dol", 0x2EA7C8, 0x4
.global lbl_803E0EAC
lbl_803E0EAC:
	.incbin "baserom.dol", 0x2EA7CC, 0x4
.global lbl_803E0EB0
lbl_803E0EB0:
	.incbin "baserom.dol", 0x2EA7D0, 0x4
.global lbl_803E0EB4
lbl_803E0EB4:
	.incbin "baserom.dol", 0x2EA7D4, 0x4
.global lbl_803E0EB8
lbl_803E0EB8:
	.incbin "baserom.dol", 0x2EA7D8, 0x4
.global lbl_803E0EBC
lbl_803E0EBC:
	.incbin "baserom.dol", 0x2EA7DC, 0x4
.global lbl_803E0EC0
lbl_803E0EC0:
	.incbin "baserom.dol", 0x2EA7E0, 0x4
.global lbl_803E0EC4
lbl_803E0EC4:
	.incbin "baserom.dol", 0x2EA7E4, 0x4
.global lbl_803E0EC8
lbl_803E0EC8:
	.incbin "baserom.dol", 0x2EA7E8, 0x4
.global lbl_803E0ECC
lbl_803E0ECC:
	.incbin "baserom.dol", 0x2EA7EC, 0x4
.global lbl_803E0ED0
lbl_803E0ED0:
	.incbin "baserom.dol", 0x2EA7F0, 0x8
.global lbl_803E0ED8
lbl_803E0ED8:
	.incbin "baserom.dol", 0x2EA7F8, 0x4
.global lbl_803E0EDC
lbl_803E0EDC:
	.incbin "baserom.dol", 0x2EA7FC, 0x4
.global lbl_803E0EE0
lbl_803E0EE0:
	.incbin "baserom.dol", 0x2EA800, 0x4
.global lbl_803E0EE4
lbl_803E0EE4:
	.incbin "baserom.dol", 0x2EA804, 0x4
.global lbl_803E0EE8
lbl_803E0EE8:
	.incbin "baserom.dol", 0x2EA808, 0x4
.global lbl_803E0EEC
lbl_803E0EEC:
	.incbin "baserom.dol", 0x2EA80C, 0x4
.global lbl_803E0EF0
lbl_803E0EF0:
	.incbin "baserom.dol", 0x2EA810, 0x8
.global lbl_803E0EF8
lbl_803E0EF8:
	.incbin "baserom.dol", 0x2EA818, 0x8
.global lbl_803E0F00
lbl_803E0F00:
	.incbin "baserom.dol", 0x2EA820, 0x4
.global lbl_803E0F04
lbl_803E0F04:
	.incbin "baserom.dol", 0x2EA824, 0x4
.global lbl_803E0F08
lbl_803E0F08:
	.incbin "baserom.dol", 0x2EA828, 0x4
.global lbl_803E0F0C
lbl_803E0F0C:
	.incbin "baserom.dol", 0x2EA82C, 0x4
.global lbl_803E0F10
lbl_803E0F10:
	.incbin "baserom.dol", 0x2EA830, 0x4
.global lbl_803E0F14
lbl_803E0F14:
	.incbin "baserom.dol", 0x2EA834, 0x4
.global lbl_803E0F18
lbl_803E0F18:
	.incbin "baserom.dol", 0x2EA838, 0x8
.global lbl_803E0F20
lbl_803E0F20:
	.incbin "baserom.dol", 0x2EA840, 0x4
.global lbl_803E0F24
lbl_803E0F24:
	.incbin "baserom.dol", 0x2EA844, 0x4
.global lbl_803E0F28
lbl_803E0F28:
	.incbin "baserom.dol", 0x2EA848, 0x4
.global lbl_803E0F2C
lbl_803E0F2C:
	.incbin "baserom.dol", 0x2EA84C, 0x4
.global lbl_803E0F30
lbl_803E0F30:
	.incbin "baserom.dol", 0x2EA850, 0x4
.global lbl_803E0F34
lbl_803E0F34:
	.incbin "baserom.dol", 0x2EA854, 0x4
.global lbl_803E0F38
lbl_803E0F38:
	.incbin "baserom.dol", 0x2EA858, 0x8
.global lbl_803E0F40
lbl_803E0F40:
	.incbin "baserom.dol", 0x2EA860, 0x8
.global lbl_803E0F48
lbl_803E0F48:
	.incbin "baserom.dol", 0x2EA868, 0x4
.global lbl_803E0F4C
lbl_803E0F4C:
	.incbin "baserom.dol", 0x2EA86C, 0x8
.global lbl_803E0F54
lbl_803E0F54:
	.incbin "baserom.dol", 0x2EA874, 0x4
.global lbl_803E0F58
lbl_803E0F58:
	.incbin "baserom.dol", 0x2EA878, 0x4
.global lbl_803E0F5C
lbl_803E0F5C:
	.incbin "baserom.dol", 0x2EA87C, 0x4
.global lbl_803E0F60
lbl_803E0F60:
	.incbin "baserom.dol", 0x2EA880, 0x4
.global lbl_803E0F64
lbl_803E0F64:
	.incbin "baserom.dol", 0x2EA884, 0x4
.global lbl_803E0F68
lbl_803E0F68:
	.incbin "baserom.dol", 0x2EA888, 0x4
.global lbl_803E0F6C
lbl_803E0F6C:
	.incbin "baserom.dol", 0x2EA88C, 0x4
.global lbl_803E0F70
lbl_803E0F70:
	.incbin "baserom.dol", 0x2EA890, 0x4
.global lbl_803E0F74
lbl_803E0F74:
	.incbin "baserom.dol", 0x2EA894, 0x4
.global lbl_803E0F78
lbl_803E0F78:
	.incbin "baserom.dol", 0x2EA898, 0x4
.global lbl_803E0F7C
lbl_803E0F7C:
	.incbin "baserom.dol", 0x2EA89C, 0x4
.global lbl_803E0F80
lbl_803E0F80:
	.incbin "baserom.dol", 0x2EA8A0, 0x4
.global lbl_803E0F84
lbl_803E0F84:
	.incbin "baserom.dol", 0x2EA8A4, 0x4
.global lbl_803E0F88
lbl_803E0F88:
	.incbin "baserom.dol", 0x2EA8A8, 0x8
.global lbl_803E0F90
lbl_803E0F90:
	.incbin "baserom.dol", 0x2EA8B0, 0x4
.global lbl_803E0F94
lbl_803E0F94:
	.incbin "baserom.dol", 0x2EA8B4, 0x4
.global lbl_803E0F98
lbl_803E0F98:
	.incbin "baserom.dol", 0x2EA8B8, 0x4
.global lbl_803E0F9C
lbl_803E0F9C:
	.incbin "baserom.dol", 0x2EA8BC, 0x4
.global lbl_803E0FA0
lbl_803E0FA0:
	.incbin "baserom.dol", 0x2EA8C0, 0x4
.global lbl_803E0FA4
lbl_803E0FA4:
	.incbin "baserom.dol", 0x2EA8C4, 0x4
.global lbl_803E0FA8
lbl_803E0FA8:
	.incbin "baserom.dol", 0x2EA8C8, 0x4
.global lbl_803E0FAC
lbl_803E0FAC:
	.incbin "baserom.dol", 0x2EA8CC, 0x4
.global lbl_803E0FB0
lbl_803E0FB0:
	.incbin "baserom.dol", 0x2EA8D0, 0x4
.global lbl_803E0FB4
lbl_803E0FB4:
	.incbin "baserom.dol", 0x2EA8D4, 0x4
.global lbl_803E0FB8
lbl_803E0FB8:
	.incbin "baserom.dol", 0x2EA8D8, 0x4
.global lbl_803E0FBC
lbl_803E0FBC:
	.incbin "baserom.dol", 0x2EA8DC, 0x4
.global lbl_803E0FC0
lbl_803E0FC0:
	.incbin "baserom.dol", 0x2EA8E0, 0x4
.global lbl_803E0FC4
lbl_803E0FC4:
	.incbin "baserom.dol", 0x2EA8E4, 0x4
.global lbl_803E0FC8
lbl_803E0FC8:
	.incbin "baserom.dol", 0x2EA8E8, 0x4
.global lbl_803E0FCC
lbl_803E0FCC:
	.incbin "baserom.dol", 0x2EA8EC, 0x4
.global lbl_803E0FD0
lbl_803E0FD0:
	.incbin "baserom.dol", 0x2EA8F0, 0x4
.global lbl_803E0FD4
lbl_803E0FD4:
	.incbin "baserom.dol", 0x2EA8F4, 0x4
.global lbl_803E0FD8
lbl_803E0FD8:
	.incbin "baserom.dol", 0x2EA8F8, 0x8
.global lbl_803E0FE0
lbl_803E0FE0:
	.incbin "baserom.dol", 0x2EA900, 0x4
.global lbl_803E0FE4
lbl_803E0FE4:
	.incbin "baserom.dol", 0x2EA904, 0x4
.global lbl_803E0FE8
lbl_803E0FE8:
	.incbin "baserom.dol", 0x2EA908, 0x4
.global lbl_803E0FEC
lbl_803E0FEC:
	.incbin "baserom.dol", 0x2EA90C, 0x4
.global lbl_803E0FF0
lbl_803E0FF0:
	.incbin "baserom.dol", 0x2EA910, 0x4
.global lbl_803E0FF4
lbl_803E0FF4:
	.incbin "baserom.dol", 0x2EA914, 0x4
.global lbl_803E0FF8
lbl_803E0FF8:
	.incbin "baserom.dol", 0x2EA918, 0x4
.global lbl_803E0FFC
lbl_803E0FFC:
	.incbin "baserom.dol", 0x2EA91C, 0x8
.global lbl_803E1004
lbl_803E1004:
	.incbin "baserom.dol", 0x2EA924, 0x4
.global lbl_803E1008
lbl_803E1008:
	.incbin "baserom.dol", 0x2EA928, 0x4
.global lbl_803E100C
lbl_803E100C:
	.incbin "baserom.dol", 0x2EA92C, 0x4
.global lbl_803E1010
lbl_803E1010:
	.incbin "baserom.dol", 0x2EA930, 0x4
.global lbl_803E1014
lbl_803E1014:
	.incbin "baserom.dol", 0x2EA934, 0x4
.global lbl_803E1018
lbl_803E1018:
	.incbin "baserom.dol", 0x2EA938, 0x4
.global lbl_803E101C
lbl_803E101C:
	.incbin "baserom.dol", 0x2EA93C, 0x8
.global lbl_803E1024
lbl_803E1024:
	.incbin "baserom.dol", 0x2EA944, 0x4
.global lbl_803E1028
lbl_803E1028:
	.incbin "baserom.dol", 0x2EA948, 0x4
.global lbl_803E102C
lbl_803E102C:
	.incbin "baserom.dol", 0x2EA94C, 0x4
.global lbl_803E1030
lbl_803E1030:
	.incbin "baserom.dol", 0x2EA950, 0x4
.global lbl_803E1034
lbl_803E1034:
	.incbin "baserom.dol", 0x2EA954, 0x4
.global lbl_803E1038
lbl_803E1038:
	.incbin "baserom.dol", 0x2EA958, 0x4
.global lbl_803E103C
lbl_803E103C:
	.incbin "baserom.dol", 0x2EA95C, 0x4
.global lbl_803E1040
lbl_803E1040:
	.incbin "baserom.dol", 0x2EA960, 0x4
.global lbl_803E1044
lbl_803E1044:
	.incbin "baserom.dol", 0x2EA964, 0x4
.global lbl_803E1048
lbl_803E1048:
	.incbin "baserom.dol", 0x2EA968, 0x8
.global lbl_803E1050
lbl_803E1050:
	.incbin "baserom.dol", 0x2EA970, 0x4
.global lbl_803E1054
lbl_803E1054:
	.incbin "baserom.dol", 0x2EA974, 0x4
.global lbl_803E1058
lbl_803E1058:
	.incbin "baserom.dol", 0x2EA978, 0xC
.global __RTTI__13AState$$04Piki$$1
__RTTI__13AState$$04Piki$$1:
  .4byte 0x802b8d90
  .4byte 0x802b8da0
.global __RTTI__9PikiState
__RTTI__9PikiState:
  .4byte 0x802b8dac
  .4byte 0x802b8db8
.global __RTTI__16PikiEmotionState
__RTTI__16PikiEmotionState:
  .4byte 0x802b8d6c
  .4byte 0x802b8dcc
.global __RTTI__13PikiDeadState
__RTTI__13PikiDeadState:
  .4byte 0x802b8e54
  .4byte 0x802b8e64
.global __RTTI__14PikiDyingState
__RTTI__14PikiDyingState:
  .4byte 0x802b8eec
  .4byte 0x802b8efc
.global __RTTI__16PikiPressedState
__RTTI__16PikiPressedState:
  .4byte 0x802b8f84
  .4byte 0x802b8f98
.global __RTTI__17PikiAutoNukiState
__RTTI__17PikiAutoNukiState:
  .4byte 0x802b9020
  .4byte 0x802b9034
.global __RTTI__15PikiNukareState
__RTTI__15PikiNukareState:
  .4byte 0x802b90bc
  .4byte 0x802b90cc
.global __RTTI__19PikiNukareWaitState
__RTTI__19PikiNukareWaitState:
  .4byte 0x802b9154
  .4byte 0x802b9168
.global __RTTI__13PikiBuryState
__RTTI__13PikiBuryState:
  .4byte 0x802b91f0
  .4byte 0x802b9200
.global __RTTI__17PikiPushPikiState
__RTTI__17PikiPushPikiState:
  .4byte 0x802b9288
  .4byte 0x802b929c
.global __RTTI__13PikiPushState
__RTTI__13PikiPushState:
  .4byte 0x802b9324
  .4byte 0x802b9334
.global __RTTI__13PikiWaveState
__RTTI__13PikiWaveState:
  .4byte 0x802b93bc
  .4byte 0x802b93cc
.global __RTTI__15PikiGrowupState
__RTTI__15PikiGrowupState:
  .4byte 0x802b9454
  .4byte 0x802b9464
.global __RTTI__21PikiKinokoChangeState
__RTTI__21PikiKinokoChangeState:
  .4byte 0x802b94ec
  .4byte 0x802b9504
.global __RTTI__13PikiGrowState
__RTTI__13PikiGrowState:
  .4byte 0x802b958c
  .4byte 0x802b959c
.global __RTTI__15PikiFlyingState
__RTTI__15PikiFlyingState:
  .4byte 0x802b9624
  .4byte 0x802b9634
.global __RTTI__13PikiEmitState
__RTTI__13PikiEmitState:
  .4byte 0x802b96bc
  .4byte 0x802b96cc
.global __RTTI__20PikiWaterHangedState
__RTTI__20PikiWaterHangedState:
  .4byte 0x802b9754
  .4byte 0x802b976c
.global __RTTI__15PikiHangedState
__RTTI__15PikiHangedState:
  .4byte 0x802b97f4
  .4byte 0x802b9804
.global __RTTI__15PikiGoHangState
__RTTI__15PikiGoHangState:
  .4byte 0x802b988c
  .4byte 0x802b989c
.global __RTTI__14PikiCliffState
__RTTI__14PikiCliffState:
  .4byte 0x802b9924
  .4byte 0x802b9934
.global __RTTI__13PikiFallState
__RTTI__13PikiFallState:
  .4byte 0x802b99bc
  .4byte 0x802b99cc
.global __RTTI__17PikiFallMeckState
__RTTI__17PikiFallMeckState:
  .4byte 0x802b9a54
  .4byte 0x802b9a68
.global __RTTI__14PikiFlownState
__RTTI__14PikiFlownState:
  .4byte 0x802b9af0
  .4byte 0x802b9b00
.global __RTTI__14PikiFlickState
__RTTI__14PikiFlickState:
  .4byte 0x802b9b88
  .4byte 0x802b9b98
.global __RTTI__15PikiBulletState
__RTTI__15PikiBulletState:
  .4byte 0x802b9c20
  .4byte 0x802b9c30
.global __RTTI__18PikiSwallowedState
__RTTI__18PikiSwallowedState:
  .4byte 0x802b9cb8
  .4byte 0x802b9ccc
.global __RTTI__14PikiFiredState
__RTTI__14PikiFiredState:
  .4byte 0x802b9d54
  .4byte 0x802b9d64
.global __RTTI__15PikiBubbleState
__RTTI__15PikiBubbleState:
  .4byte 0x802b9dec
  .4byte 0x802b9dfc
.global __RTTI__15PikiKinokoState
__RTTI__15PikiKinokoState:
  .4byte 0x802b9e84
  .4byte 0x802b9e94
.global __RTTI__14PikiDrownState
__RTTI__14PikiDrownState:
  .4byte 0x802b9f54
  .4byte 0x802b9f64
.global __RTTI__15PikiAbsorbState
__RTTI__15PikiAbsorbState:
  .4byte 0x802b9fec
  .4byte 0x802b9ffc
.global __RTTI__15PikiNormalState
__RTTI__15PikiNormalState:
  .4byte 0x802ba084
  .4byte 0x802ba094
.global __RTTI__15PikiLookAtState
__RTTI__15PikiLookAtState:
  .4byte 0x802ba11c
  .4byte 0x802ba12c
.global __RTTI__19StateMachine$$04Piki$$1_1
__RTTI__19StateMachine$$04Piki$$1_1:
  .4byte 0x802ba2bc
  .4byte 0
.global __RTTI__16PikiStateMachine
__RTTI__16PikiStateMachine:
  .4byte 0x802ba2a8
  .4byte 0x802ba2d0
  .4byte 0
.global firstTime__15PikiShapeObject
firstTime__15PikiShapeObject:
	.incbin "baserom.dol", 0x2EAAB0, 0x4
.global lbl_803E1194
lbl_803E1194:
	.incbin "baserom.dol", 0x2EAAB4, 0x4
.global lbl_803E1198
lbl_803E1198:
	.incbin "baserom.dol", 0x2EAAB8, 0x4
.global lbl_803E119C
lbl_803E119C:
	.incbin "baserom.dol", 0x2EAABC, 0x4
.global lbl_803E11A0
lbl_803E11A0:
	.incbin "baserom.dol", 0x2EAAC0, 0x4
.global lbl_803E11A4
lbl_803E11A4:
	.incbin "baserom.dol", 0x2EAAC4, 0x4
.global lbl_803E11A8
lbl_803E11A8:
	.incbin "baserom.dol", 0x2EAAC8, 0x4
.global lbl_803E11AC
lbl_803E11AC:
	.incbin "baserom.dol", 0x2EAACC, 0x4
.global lbl_803E11B0
lbl_803E11B0:
	.incbin "baserom.dol", 0x2EAAD0, 0x4
.global lbl_803E11B4
lbl_803E11B4:
	.incbin "baserom.dol", 0x2EAAD4, 0x4
.global lbl_803E11B8
lbl_803E11B8:
	.incbin "baserom.dol", 0x2EAAD8, 0x4
.global lbl_803E11BC
lbl_803E11BC:
	.incbin "baserom.dol", 0x2EAADC, 0x4
.global lbl_803E11C0
lbl_803E11C0:
	.incbin "baserom.dol", 0x2EAAE0, 0x4
.global lbl_803E11C4
lbl_803E11C4:
	.incbin "baserom.dol", 0x2EAAE4, 0x4
.global lbl_803E11C8
lbl_803E11C8:
	.incbin "baserom.dol", 0x2EAAE8, 0x4
.global lbl_803E11CC
lbl_803E11CC:
	.incbin "baserom.dol", 0x2EAAEC, 0x4
.global lbl_803E11D0
lbl_803E11D0:
	.incbin "baserom.dol", 0x2EAAF0, 0x4
.global lbl_803E11D4
lbl_803E11D4:
	.incbin "baserom.dol", 0x2EAAF4, 0x4
.global lbl_803E11D8
lbl_803E11D8:
	.incbin "baserom.dol", 0x2EAAF8, 0x4
.global lbl_803E11DC
lbl_803E11DC:
	.incbin "baserom.dol", 0x2EAAFC, 0x4
.global lbl_803E11E0
lbl_803E11E0:
	.incbin "baserom.dol", 0x2EAB00, 0x4
.global lbl_803E11E4
lbl_803E11E4:
	.incbin "baserom.dol", 0x2EAB04, 0x4
.global lbl_803E11E8
lbl_803E11E8:
	.incbin "baserom.dol", 0x2EAB08, 0x4
.global lbl_803E11EC
lbl_803E11EC:
	.incbin "baserom.dol", 0x2EAB0C, 0x4
.global lbl_803E11F0
lbl_803E11F0:
	.incbin "baserom.dol", 0x2EAB10, 0x4
.global lbl_803E11F4
lbl_803E11F4:
	.incbin "baserom.dol", 0x2EAB14, 0x4
.global lbl_803E11F8
lbl_803E11F8:
	.incbin "baserom.dol", 0x2EAB18, 0x4
.global lbl_803E11FC
lbl_803E11FC:
	.incbin "baserom.dol", 0x2EAB1C, 0x4
.global lbl_803E1200
lbl_803E1200:
	.incbin "baserom.dol", 0x2EAB20, 0x4
.global lbl_803E1204
lbl_803E1204:
	.incbin "baserom.dol", 0x2EAB24, 0x4
.global lbl_803E1208
lbl_803E1208:
	.incbin "baserom.dol", 0x2EAB28, 0x4
.global lbl_803E120C
lbl_803E120C:
	.incbin "baserom.dol", 0x2EAB2C, 0x4
.global lbl_803E1210
lbl_803E1210:
	.incbin "baserom.dol", 0x2EAB30, 0x4
.global lbl_803E1214
lbl_803E1214:
	.incbin "baserom.dol", 0x2EAB34, 0x4
.global lbl_803E1218
lbl_803E1218:
	.incbin "baserom.dol", 0x2EAB38, 0x4
.global lbl_803E121C
lbl_803E121C:
	.incbin "baserom.dol", 0x2EAB3C, 0x1C
.global lbl_803E1238
lbl_803E1238:
	.incbin "baserom.dol", 0x2EAB58, 0x8
.global lbl_803E1240
lbl_803E1240:
	.incbin "baserom.dol", 0x2EAB60, 0x4
.global lbl_803E1244
lbl_803E1244:
	.incbin "baserom.dol", 0x2EAB64, 0x4
.global lbl_803E1248
lbl_803E1248:
	.incbin "baserom.dol", 0x2EAB68, 0x4
.global lbl_803E124C
lbl_803E124C:
	.incbin "baserom.dol", 0x2EAB6C, 0x4
.global lbl_803E1250
lbl_803E1250:
	.incbin "baserom.dol", 0x2EAB70, 0x4
.global lbl_803E1254
lbl_803E1254:
	.incbin "baserom.dol", 0x2EAB74, 0x2C
.global __RTTI__4Piki_1
__RTTI__4Piki_1:
  .4byte 0x803e1278
  .4byte 0x802ba418
.global __RTTI__8ViewPiki
__RTTI__8ViewPiki:
  .4byte 0x802ba3bc
  .4byte 0x802ba43c
  .4byte 0x802ba5b0
  .4byte 0
.global __RTTI__13CndStickMouth
__RTTI__13CndStickMouth:
  .4byte 0x802ba5a0
  .4byte 0x802ba5bc
.global __RTTI__10CndIsAtari
__RTTI__10CndIsAtari:
  .4byte 0x802ba5d4
  .4byte 0x802ba5e0
.global __RTTI__12CndIsVisible
__RTTI__12CndIsVisible:
  .4byte 0x802ba5f8
  .4byte 0x802ba608
.global lbl_803E12B0
lbl_803E12B0:
	.incbin "baserom.dol", 0x2EABD0, 0x4
.global lbl_803E12B4
lbl_803E12B4:
	.incbin "baserom.dol", 0x2EABD4, 0x4
.global lbl_803E12B8
lbl_803E12B8:
	.incbin "baserom.dol", 0x2EABD8, 0x4
.global lbl_803E12BC
lbl_803E12BC:
	.incbin "baserom.dol", 0x2EABDC, 0x4
.global lbl_803E12C0
lbl_803E12C0:
	.incbin "baserom.dol", 0x2EABE0, 0x4
.global lbl_803E12C4
lbl_803E12C4:
	.incbin "baserom.dol", 0x2EABE4, 0x4
.global lbl_803E12C8
lbl_803E12C8:
	.incbin "baserom.dol", 0x2EABE8, 0x4
.global lbl_803E12CC
lbl_803E12CC:
	.incbin "baserom.dol", 0x2EABEC, 0x4
.global lbl_803E12D0
lbl_803E12D0:
	.incbin "baserom.dol", 0x2EABF0, 0x8
.global lbl_803E12D8
lbl_803E12D8:
	.incbin "baserom.dol", 0x2EABF8, 0x8
.global lbl_803E12E0
lbl_803E12E0:
	.incbin "baserom.dol", 0x2EAC00, 0x4
.global lbl_803E12E4
lbl_803E12E4:
	.incbin "baserom.dol", 0x2EAC04, 0x4
.global lbl_803E12E8
lbl_803E12E8:
	.incbin "baserom.dol", 0x2EAC08, 0x4
.global lbl_803E12EC
lbl_803E12EC:
	.incbin "baserom.dol", 0x2EAC0C, 0x4
.global lbl_803E12F0
lbl_803E12F0:
	.incbin "baserom.dol", 0x2EAC10, 0x4
.global lbl_803E12F4
lbl_803E12F4:
	.incbin "baserom.dol", 0x2EAC14, 0x4
.global lbl_803E12F8
lbl_803E12F8:
	.incbin "baserom.dol", 0x2EAC18, 0x14
.global lbl_803E130C
lbl_803E130C:
	.incbin "baserom.dol", 0x2EAC2C, 0x4
.global lbl_803E1310
lbl_803E1310:
	.incbin "baserom.dol", 0x2EAC30, 0x4
.global lbl_803E1314
lbl_803E1314:
	.incbin "baserom.dol", 0x2EAC34, 0x4
.global lbl_803E1318
lbl_803E1318:
	.incbin "baserom.dol", 0x2EAC38, 0x4
.global lbl_803E131C
lbl_803E131C:
	.incbin "baserom.dol", 0x2EAC3C, 0x4
.global lbl_803E1320
lbl_803E1320:
	.incbin "baserom.dol", 0x2EAC40, 0x4
.global lbl_803E1324
lbl_803E1324:
	.incbin "baserom.dol", 0x2EAC44, 0x8
.global lbl_803E132C
lbl_803E132C:
	.incbin "baserom.dol", 0x2EAC4C, 0x4
.global lbl_803E1330
lbl_803E1330:
	.incbin "baserom.dol", 0x2EAC50, 0x4
.global lbl_803E1334
lbl_803E1334:
	.incbin "baserom.dol", 0x2EAC54, 0x4
.global lbl_803E1338
lbl_803E1338:
	.incbin "baserom.dol", 0x2EAC58, 0x4
.global lbl_803E133C
lbl_803E133C:
	.incbin "baserom.dol", 0x2EAC5C, 0x4
.global lbl_803E1340
lbl_803E1340:
	.incbin "baserom.dol", 0x2EAC60, 0x4
.global lbl_803E1344
lbl_803E1344:
	.incbin "baserom.dol", 0x2EAC64, 0x4
.global lbl_803E1348
lbl_803E1348:
	.incbin "baserom.dol", 0x2EAC68, 0x4
.global lbl_803E134C
lbl_803E134C:
	.incbin "baserom.dol", 0x2EAC6C, 0x4
.global lbl_803E1350
lbl_803E1350:
	.incbin "baserom.dol", 0x2EAC70, 0x4
.global lbl_803E1354
lbl_803E1354:
	.incbin "baserom.dol", 0x2EAC74, 0x24
.global __RTTI__7GenArea
__RTTI__7GenArea:
  .4byte 0x803e1370
  .4byte 0x802ba750
.global __RTTI__13GenAreaCircle
__RTTI__13GenAreaCircle:
  .4byte 0x802ba728
  .4byte 0x802ba764
.global __RTTI__12GenAreaPoint
__RTTI__12GenAreaPoint:
  .4byte 0x802ba7b8
  .4byte 0x802ba7c8
  .4byte 0x47656e54
  .4byte 0x79706500
.global __RTTI__7GenType
__RTTI__7GenType:
  .4byte 0x803e1390
  .4byte 0x802ba82c
.global __RTTI__15GenTypeInitRand
__RTTI__15GenTypeInitRand:
  .4byte 0x802ba81c
  .4byte 0x802ba840
.global __RTTI__13GenTypeAtOnce
__RTTI__13GenTypeAtOnce:
  .4byte 0x802ba894
  .4byte 0x802ba8a4
.global __RTTI__10GenTypeOne
__RTTI__10GenTypeOne:
  .4byte 0x802ba8f8
  .4byte 0x802ba904
  .4byte 0x802ba968
  .4byte 0x802ba974
.global __RTTI__13GenObjectPiki
__RTTI__13GenObjectPiki:
  .4byte 0x802ba958
  .4byte 0x802ba988
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e13c8
  .4byte 0
  .4byte 0x802ba9dc
  .4byte 0x802ba9e8
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e13e0
  .4byte 0x802ba9f4
.global __RTTI__12GeneratorMgr
__RTTI__12GeneratorMgr:
  .4byte 0x802ba718
  .4byte 0x802baa08
.global __RTTI__9Generator
__RTTI__9Generator:
  .4byte 0x802baa54
  .4byte 0x802baa60
  .4byte 0x802bab0c
  .4byte 0
.global lbl_803E1408
lbl_803E1408:
	.incbin "baserom.dol", 0x2EAD28, 0x34
.global __RTTI__Q214GeneratorCache5Cache
__RTTI__Q214GeneratorCache5Cache:
  .4byte 0x802bad34
  .4byte 0x802bad58
  .4byte 0
.global lbl_803E1448
lbl_803E1448:
	.incbin "baserom.dol", 0x2EAD68, 0x40
.global __RTTI__15CreatureNodeMgr
__RTTI__15CreatureNodeMgr:
  .4byte 0x802badb4
  .4byte 0x802bae2c
.global __RTTI__13PolyObjectMgr
__RTTI__13PolyObjectMgr:
  .4byte 0x802baed0
  .4byte 0x802baee0
  .4byte 0x802baf8c
  .4byte 0x802baf9c
  .4byte 0x802bb128
  .4byte 0
.global __RTTI__12SearchBuffer
__RTTI__12SearchBuffer:
  .4byte 0x802bb118
  .4byte 0x802bb134
  .4byte 0x802bb18c
  .4byte 0
.global lbl_803E14B8
lbl_803E14B8:
	.incbin "baserom.dol", 0x2EADD8, 0x4
.global lbl_803E14BC
lbl_803E14BC:
	.incbin "baserom.dol", 0x2EADDC, 0x4
.global lbl_803E14C0
lbl_803E14C0:
	.incbin "baserom.dol", 0x2EADE0, 0x4
.global lbl_803E14C4
lbl_803E14C4:
	.incbin "baserom.dol", 0x2EADE4, 0x4
.global lbl_803E14C8
lbl_803E14C8:
	.incbin "baserom.dol", 0x2EADE8, 0x4
.global lbl_803E14CC
lbl_803E14CC:
	.incbin "baserom.dol", 0x2EADEC, 0x4
.global lbl_803E14D0
lbl_803E14D0:
	.incbin "baserom.dol", 0x2EADF0, 0x4
.global lbl_803E14D4
lbl_803E14D4:
	.incbin "baserom.dol", 0x2EADF4, 0x4
.global lbl_803E14D8
lbl_803E14D8:
	.incbin "baserom.dol", 0x2EADF8, 0x4
.global lbl_803E14DC
lbl_803E14DC:
	.incbin "baserom.dol", 0x2EADFC, 0x4
.global lbl_803E14E0
lbl_803E14E0:
	.incbin "baserom.dol", 0x2EAE00, 0x4
.global lbl_803E14E4
lbl_803E14E4:
	.incbin "baserom.dol", 0x2EAE04, 0x4
.global lbl_803E14E8
lbl_803E14E8:
	.incbin "baserom.dol", 0x2EAE08, 0x4
.global lbl_803E14EC
lbl_803E14EC:
	.incbin "baserom.dol", 0x2EAE0C, 0x4
.global lbl_803E14F0
lbl_803E14F0:
	.incbin "baserom.dol", 0x2EAE10, 0x4
.global lbl_803E14F4
lbl_803E14F4:
	.incbin "baserom.dol", 0x2EAE14, 0x4
.global lbl_803E14F8
lbl_803E14F8:
	.incbin "baserom.dol", 0x2EAE18, 0x4
.global lbl_803E14FC
lbl_803E14FC:
	.incbin "baserom.dol", 0x2EAE1C, 0x4
.global lbl_803E1500
lbl_803E1500:
	.incbin "baserom.dol", 0x2EAE20, 0x3C
.global __RTTI__4Weed
__RTTI__4Weed:
  .4byte 0x803e1504
  .4byte 0x802bb30c
.global __RTTI__8WeedsGen
__RTTI__8WeedsGen:
  .4byte 0x802bb49c
  .4byte 0x802bb4a8
.global __RTTI__8GrassGen
__RTTI__8GrassGen:
  .4byte 0x802bb638
  .4byte 0x802bb644
  .4byte 0x526f636b
  .4byte 0x47656e00
.global __RTTI__7RockGen
__RTTI__7RockGen:
  .4byte 0x803e1554
  .4byte 0x802bb7d4
  .4byte 0
.global lbl_803E1568
lbl_803E1568:
	.incbin "baserom.dol", 0x2EAE88, 0x4
.global lbl_803E156C
lbl_803E156C:
	.incbin "baserom.dol", 0x2EAE8C, 0x4
.global lbl_803E1570
lbl_803E1570:
	.incbin "baserom.dol", 0x2EAE90, 0x4
.global lbl_803E1574
lbl_803E1574:
	.incbin "baserom.dol", 0x2EAE94, 0x4
.global lbl_803E1578
lbl_803E1578:
	.incbin "baserom.dol", 0x2EAE98, 0x4
.global lbl_803E157C
lbl_803E157C:
	.incbin "baserom.dol", 0x2EAE9C, 0x4
.global lbl_803E1580
lbl_803E1580:
	.incbin "baserom.dol", 0x2EAEA0, 0x4
.global lbl_803E1584
lbl_803E1584:
	.incbin "baserom.dol", 0x2EAEA4, 0x4
.global lbl_803E1588
lbl_803E1588:
	.incbin "baserom.dol", 0x2EAEA8, 0x4
.global lbl_803E158C
lbl_803E158C:
	.incbin "baserom.dol", 0x2EAEAC, 0x4
.global lbl_803E1590
lbl_803E1590:
	.incbin "baserom.dol", 0x2EAEB0, 0x4
.global lbl_803E1594
lbl_803E1594:
	.incbin "baserom.dol", 0x2EAEB4, 0x4
.global lbl_803E1598
lbl_803E1598:
	.incbin "baserom.dol", 0x2EAEB8, 0x4
.global lbl_803E159C
lbl_803E159C:
	.incbin "baserom.dol", 0x2EAEBC, 0x34
.global __RTTI__10BoBaseItem
__RTTI__10BoBaseItem:
  .4byte 0x802bb978
  .4byte 0x802bba40
.global __RTTI__8KusaItem
__RTTI__8KusaItem:
  .4byte 0x802bbbd0
  .4byte 0x802bbbdc
.global lbl_803E15E0
lbl_803E15E0:
	.incbin "baserom.dol", 0x2EAF00, 0x4
.global lbl_803E15E4
lbl_803E15E4:
	.incbin "baserom.dol", 0x2EAF04, 0x4
.global lbl_803E15E8
lbl_803E15E8:
	.incbin "baserom.dol", 0x2EAF08, 0x4
.global lbl_803E15EC
lbl_803E15EC:
	.incbin "baserom.dol", 0x2EAF0C, 0x4
.global lbl_803E15F0
lbl_803E15F0:
	.incbin "baserom.dol", 0x2EAF10, 0x4
.global lbl_803E15F4
lbl_803E15F4:
	.incbin "baserom.dol", 0x2EAF14, 0x4
.global lbl_803E15F8
lbl_803E15F8:
	.incbin "baserom.dol", 0x2EAF18, 0x4
.global lbl_803E15FC
lbl_803E15FC:
	.incbin "baserom.dol", 0x2EAF1C, 0x4
.global lbl_803E1600
lbl_803E1600:
	.incbin "baserom.dol", 0x2EAF20, 0x4
.global lbl_803E1604
lbl_803E1604:
	.incbin "baserom.dol", 0x2EAF24, 0x4
.global lbl_803E1608
lbl_803E1608:
	.incbin "baserom.dol", 0x2EAF28, 0x4
.global lbl_803E160C
lbl_803E160C:
	.incbin "baserom.dol", 0x2EAF2C, 0x4
.global lbl_803E1610
lbl_803E1610:
	.incbin "baserom.dol", 0x2EAF30, 0x4
.global lbl_803E1614
lbl_803E1614:
	.incbin "baserom.dol", 0x2EAF34, 0x4
.global lbl_803E1618
lbl_803E1618:
	.incbin "baserom.dol", 0x2EAF38, 0x4
.global lbl_803E161C
lbl_803E161C:
	.incbin "baserom.dol", 0x2EAF3C, 0x4
.global lbl_803E1620
lbl_803E1620:
	.incbin "baserom.dol", 0x2EAF40, 0x4
.global lbl_803E1624
lbl_803E1624:
	.incbin "baserom.dol", 0x2EAF44, 0x4
.global lbl_803E1628
lbl_803E1628:
	.incbin "baserom.dol", 0x2EAF48, 0x4
.global lbl_803E162C
lbl_803E162C:
	.incbin "baserom.dol", 0x2EAF4C, 0x4
.global lbl_803E1630
lbl_803E1630:
	.incbin "baserom.dol", 0x2EAF50, 0x4
.global lbl_803E1634
lbl_803E1634:
	.incbin "baserom.dol", 0x2EAF54, 0x4
.global lbl_803E1638
lbl_803E1638:
	.incbin "baserom.dol", 0x2EAF58, 0x34
.global __RTTI__13FishGenerator
__RTTI__13FishGenerator:
  .4byte 0x802bbd80
  .4byte 0x802bbe4c
  .4byte 0
.global numKeys
numKeys:
	.incbin "baserom.dol", 0x2EAF98, 0x4
.global lbl_803E167C
lbl_803E167C:
	.incbin "baserom.dol", 0x2EAF9C, 0x4
.global lbl_803E1680
lbl_803E1680:
	.incbin "baserom.dol", 0x2EAFA0, 0x4
.global lbl_803E1684
lbl_803E1684:
	.incbin "baserom.dol", 0x2EAFA4, 0x4
.global lbl_803E1688
lbl_803E1688:
	.incbin "baserom.dol", 0x2EAFA8, 0x4
.global lbl_803E168C
lbl_803E168C:
	.incbin "baserom.dol", 0x2EAFAC, 0x4
.global lbl_803E1690
lbl_803E1690:
	.incbin "baserom.dol", 0x2EAFB0, 0x4
.global lbl_803E1694
lbl_803E1694:
	.incbin "baserom.dol", 0x2EAFB4, 0x4
.global lbl_803E1698
lbl_803E1698:
	.incbin "baserom.dol", 0x2EAFB8, 0x4
.global lbl_803E169C
lbl_803E169C:
	.incbin "baserom.dol", 0x2EAFBC, 0x4
.global lbl_803E16A0
lbl_803E16A0:
	.incbin "baserom.dol", 0x2EAFC0, 0x4
.global lbl_803E16A4
lbl_803E16A4:
	.incbin "baserom.dol", 0x2EAFC4, 0x4
.global lbl_803E16A8
lbl_803E16A8:
	.incbin "baserom.dol", 0x2EAFC8, 0x4
.global lbl_803E16AC
lbl_803E16AC:
	.incbin "baserom.dol", 0x2EAFCC, 0x4
.global lbl_803E16B0
lbl_803E16B0:
	.incbin "baserom.dol", 0x2EAFD0, 0x4
.global lbl_803E16B4
lbl_803E16B4:
	.incbin "baserom.dol", 0x2EAFD4, 0x4
.global lbl_803E16B8
lbl_803E16B8:
	.incbin "baserom.dol", 0x2EAFD8, 0x4
.global lbl_803E16BC
lbl_803E16BC:
	.incbin "baserom.dol", 0x2EAFDC, 0x4
.global lbl_803E16C0
lbl_803E16C0:
	.incbin "baserom.dol", 0x2EAFE0, 0x4
.global lbl_803E16C4
lbl_803E16C4:
	.incbin "baserom.dol", 0x2EAFE4, 0x4
.global lbl_803E16C8
lbl_803E16C8:
	.incbin "baserom.dol", 0x2EAFE8, 0x4
.global lbl_803E16CC
lbl_803E16CC:
	.incbin "baserom.dol", 0x2EAFEC, 0x4
.global lbl_803E16D0
lbl_803E16D0:
	.incbin "baserom.dol", 0x2EAFF0, 0x4
.global lbl_803E16D4
lbl_803E16D4:
	.incbin "baserom.dol", 0x2EAFF4, 0x4
.global lbl_803E16D8
lbl_803E16D8:
	.incbin "baserom.dol", 0x2EAFF8, 0x4
.global lbl_803E16DC
lbl_803E16DC:
	.incbin "baserom.dol", 0x2EAFFC, 0x4
.global lbl_803E16E0
lbl_803E16E0:
	.incbin "baserom.dol", 0x2EB000, 0x4
.global lbl_803E16E4
lbl_803E16E4:
	.incbin "baserom.dol", 0x2EB004, 0x4
.global lbl_803E16E8
lbl_803E16E8:
	.incbin "baserom.dol", 0x2EB008, 0x4
.global lbl_803E16EC
lbl_803E16EC:
	.incbin "baserom.dol", 0x2EB00C, 0x4
.global lbl_803E16F0
lbl_803E16F0:
	.incbin "baserom.dol", 0x2EB010, 0x4
.global lbl_803E16F4
lbl_803E16F4:
	.incbin "baserom.dol", 0x2EB014, 0x4
.global lbl_803E16F8
lbl_803E16F8:
	.incbin "baserom.dol", 0x2EB018, 0x4
.global lbl_803E16FC
lbl_803E16FC:
	.incbin "baserom.dol", 0x2EB01C, 0x4
.global lbl_803E1700
lbl_803E1700:
	.incbin "baserom.dol", 0x2EB020, 0x4
.global lbl_803E1704
lbl_803E1704:
	.incbin "baserom.dol", 0x2EB024, 0x4
.global lbl_803E1708
lbl_803E1708:
	.incbin "baserom.dol", 0x2EB028, 0x4
.global lbl_803E170C
lbl_803E170C:
	.incbin "baserom.dol", 0x2EB02C, 0x4
.global lbl_803E1710
lbl_803E1710:
	.incbin "baserom.dol", 0x2EB030, 0x4
.global lbl_803E1714
lbl_803E1714:
	.incbin "baserom.dol", 0x2EB034, 0x4
.global lbl_803E1718
lbl_803E1718:
	.incbin "baserom.dol", 0x2EB038, 0x4
.global lbl_803E171C
lbl_803E171C:
	.incbin "baserom.dol", 0x2EB03C, 0x4
.global lbl_803E1720
lbl_803E1720:
	.incbin "baserom.dol", 0x2EB040, 0x4
.global lbl_803E1724
lbl_803E1724:
	.incbin "baserom.dol", 0x2EB044, 0x4
.global lbl_803E1728
lbl_803E1728:
	.incbin "baserom.dol", 0x2EB048, 0x4
.global lbl_803E172C
lbl_803E172C:
	.incbin "baserom.dol", 0x2EB04C, 0x4
.global lbl_803E1730
lbl_803E1730:
	.incbin "baserom.dol", 0x2EB050, 0x4
.global lbl_803E1734
lbl_803E1734:
	.incbin "baserom.dol", 0x2EB054, 0x4
.global lbl_803E1738
lbl_803E1738:
	.incbin "baserom.dol", 0x2EB058, 0x4
.global lbl_803E173C
lbl_803E173C:
	.incbin "baserom.dol", 0x2EB05C, 0x4
.global lbl_803E1740
lbl_803E1740:
	.incbin "baserom.dol", 0x2EB060, 0x4
.global lbl_803E1744
lbl_803E1744:
	.incbin "baserom.dol", 0x2EB064, 0x4
.global lbl_803E1748
lbl_803E1748:
	.incbin "baserom.dol", 0x2EB068, 0x4
.global lbl_803E174C
lbl_803E174C:
	.incbin "baserom.dol", 0x2EB06C, 0x4
.global lbl_803E1750
lbl_803E1750:
	.incbin "baserom.dol", 0x2EB070, 0x4
.global lbl_803E1754
lbl_803E1754:
	.incbin "baserom.dol", 0x2EB074, 0x4
.global lbl_803E1758
lbl_803E1758:
	.incbin "baserom.dol", 0x2EB078, 0x4
.global lbl_803E175C
lbl_803E175C:
	.incbin "baserom.dol", 0x2EB07C, 0x4
.global lbl_803E1760
lbl_803E1760:
	.incbin "baserom.dol", 0x2EB080, 0x4
.global lbl_803E1764
lbl_803E1764:
	.incbin "baserom.dol", 0x2EB084, 0x4
.global lbl_803E1768
lbl_803E1768:
	.incbin "baserom.dol", 0x2EB088, 0x4
.global lbl_803E176C
lbl_803E176C:
	.incbin "baserom.dol", 0x2EB08C, 0x4
.global lbl_803E1770
lbl_803E1770:
	.incbin "baserom.dol", 0x2EB090, 0x44
.global __RTTI__7UfoItem
__RTTI__7UfoItem:
  .4byte 0x803e17ac
  .4byte 0x802bc2f4
  .4byte 0
  .4byte 0x77616974
  .4byte 0
  .4byte 0x74616b65
  .4byte 0x6f666600
  .4byte 0x68656e6b
  .4byte 0x61310000
  .4byte 0x68656e6b
  .4byte 0x61316200
  .4byte 0x68656e6b
  .4byte 0x61316400
  .4byte 0x68656e6b
  .4byte 0x61320000
  .4byte 0x68656e6b
  .4byte 0x61326400
  .4byte 0x68656e6b
  .4byte 0x61330000
  .4byte 0x68656e6b
  .4byte 0x61346100
  .4byte 0x68656e6b
  .4byte 0x61346200
  .4byte 0x802bc580
  .4byte 0
  .4byte 0x802bc58c
  .4byte 0x802bc59c
.global __RTTI__15PaniUfoAnimator
__RTTI__15PaniUfoAnimator:
  .4byte 0x802bc570
  .4byte 0x802bc5a8
.global lbl_803E1828
lbl_803E1828:
	.incbin "baserom.dol", 0x2EB148, 0x4
.global lbl_803E182C
lbl_803E182C:
	.incbin "baserom.dol", 0x2EB14C, 0x4
.global lbl_803E1830
lbl_803E1830:
	.incbin "baserom.dol", 0x2EB150, 0x34
.global __RTTI__8BombItem
__RTTI__8BombItem:
  .4byte 0x802bc5f4
  .4byte 0x802bc6bc
  .4byte 0
.global lbl_803E1870
lbl_803E1870:
	.incbin "baserom.dol", 0x2EB190, 0x4
.global lbl_803E1874
lbl_803E1874:
	.incbin "baserom.dol", 0x2EB194, 0x4
.global lbl_803E1878
lbl_803E1878:
	.incbin "baserom.dol", 0x2EB198, 0x4
.global lbl_803E187C
lbl_803E187C:
	.incbin "baserom.dol", 0x2EB19C, 0x4
.global lbl_803E1880
lbl_803E1880:
	.incbin "baserom.dol", 0x2EB1A0, 0x4
.global lbl_803E1884
lbl_803E1884:
	.incbin "baserom.dol", 0x2EB1A4, 0x4
.global lbl_803E1888
lbl_803E1888:
	.incbin "baserom.dol", 0x2EB1A8, 0x4
.global lbl_803E188C
lbl_803E188C:
	.incbin "baserom.dol", 0x2EB1AC, 0x4
.global lbl_803E1890
lbl_803E1890:
	.incbin "baserom.dol", 0x2EB1B0, 0x4
.global lbl_803E1894
lbl_803E1894:
	.incbin "baserom.dol", 0x2EB1B4, 0x4
.global lbl_803E1898
lbl_803E1898:
	.incbin "baserom.dol", 0x2EB1B8, 0x4
.global lbl_803E189C
lbl_803E189C:
	.incbin "baserom.dol", 0x2EB1BC, 0x4
.global lbl_803E18A0
lbl_803E18A0:
	.incbin "baserom.dol", 0x2EB1C0, 0x4
.global lbl_803E18A4
lbl_803E18A4:
	.incbin "baserom.dol", 0x2EB1C4, 0x4
.global lbl_803E18A8
lbl_803E18A8:
	.incbin "baserom.dol", 0x2EB1C8, 0x4
.global lbl_803E18AC
lbl_803E18AC:
	.incbin "baserom.dol", 0x2EB1CC, 0x4
.global lbl_803E18B0
lbl_803E18B0:
	.incbin "baserom.dol", 0x2EB1D0, 0x4
.global lbl_803E18B4
lbl_803E18B4:
	.incbin "baserom.dol", 0x2EB1D4, 0x4
.global lbl_803E18B8
lbl_803E18B8:
	.incbin "baserom.dol", 0x2EB1D8, 0x4
.global lbl_803E18BC
lbl_803E18BC:
	.incbin "baserom.dol", 0x2EB1DC, 0x4
.global lbl_803E18C0
lbl_803E18C0:
	.incbin "baserom.dol", 0x2EB1E0, 0x4
.global lbl_803E18C4
lbl_803E18C4:
	.incbin "baserom.dol", 0x2EB1E4, 0x4
.global lbl_803E18C8
lbl_803E18C8:
	.incbin "baserom.dol", 0x2EB1E8, 0x4
.global lbl_803E18CC
lbl_803E18CC:
	.incbin "baserom.dol", 0x2EB1EC, 0x4
.global lbl_803E18D0
lbl_803E18D0:
	.incbin "baserom.dol", 0x2EB1F0, 0x44
.global __RTTI__8GoalItem
__RTTI__8GoalItem:
  .4byte 0x802bcb3c
  .4byte 0x802bcb48
  .4byte 0
.global lbl_803E1920
lbl_803E1920:
	.incbin "baserom.dol", 0x2EB240, 0x4
.global lbl_803E1924
lbl_803E1924:
	.incbin "baserom.dol", 0x2EB244, 0x4
.global lbl_803E1928
lbl_803E1928:
	.incbin "baserom.dol", 0x2EB248, 0x4
.global lbl_803E192C
lbl_803E192C:
	.incbin "baserom.dol", 0x2EB24C, 0x4
.global lbl_803E1930
lbl_803E1930:
	.incbin "baserom.dol", 0x2EB250, 0x4
.global lbl_803E1934
lbl_803E1934:
	.incbin "baserom.dol", 0x2EB254, 0x4
.global lbl_803E1938
lbl_803E1938:
	.incbin "baserom.dol", 0x2EB258, 0x4
.global lbl_803E193C
lbl_803E193C:
	.incbin "baserom.dol", 0x2EB25C, 0x4
.global lbl_803E1940
lbl_803E1940:
	.incbin "baserom.dol", 0x2EB260, 0x4
.global lbl_803E1944
lbl_803E1944:
	.incbin "baserom.dol", 0x2EB264, 0x4
.global lbl_803E1948
lbl_803E1948:
	.incbin "baserom.dol", 0x2EB268, 0x4
.global lbl_803E194C
lbl_803E194C:
	.incbin "baserom.dol", 0x2EB26C, 0x4
.global lbl_803E1950
lbl_803E1950:
	.incbin "baserom.dol", 0x2EB270, 0x34
.global __RTTI__12PikiHeadItem
__RTTI__12PikiHeadItem:
  .4byte 0x802bcd34
  .4byte 0x802bce00
  .4byte 0x802bcf90
  .4byte 0
  .4byte 0x802bcfb4
  .4byte 0
  .4byte 0x802bcff4
  .4byte 0
  .4byte 0
.global lbl_803E19A8
lbl_803E19A8:
	.incbin "baserom.dol", 0x2EB2C8, 0x4
.global lbl_803E19AC
lbl_803E19AC:
	.incbin "baserom.dol", 0x2EB2CC, 0x4
.global lbl_803E19B0
lbl_803E19B0:
	.incbin "baserom.dol", 0x2EB2D0, 0x4
.global lbl_803E19B4
lbl_803E19B4:
	.incbin "baserom.dol", 0x2EB2D4, 0x4
.global lbl_803E19B8
lbl_803E19B8:
	.incbin "baserom.dol", 0x2EB2D8, 0x4
.global lbl_803E19BC
lbl_803E19BC:
	.incbin "baserom.dol", 0x2EB2DC, 0x34
.global __RTTI__8DoorItem
__RTTI__8DoorItem:
  .4byte 0x802bd0ac
  .4byte 0x802bd174
  .4byte 0x4b657949
  .4byte 0x74656d00
.global __RTTI__7KeyItem
__RTTI__7KeyItem:
  .4byte 0x803e19f8
  .4byte 0x802bd304
  .4byte 0x802bd460
  .4byte 0
  .4byte 0x802bd46c
  .4byte 0
  .4byte 0x802bd47c
  .4byte 0x802bd488
  .4byte 0x802bd49c
  .4byte 0x802bd4ac
.global __RTTI__8RopeItem
__RTTI__8RopeItem:
  .4byte 0x802bd454
  .4byte 0x802bd4c8
.global lbl_803E1A30
lbl_803E1A30:
	.incbin "baserom.dol", 0x2EB350, 0x4
.global lbl_803E1A34
lbl_803E1A34:
	.incbin "baserom.dol", 0x2EB354, 0x1C
.global __RTTI__8SeedItem
__RTTI__8SeedItem:
  .4byte 0x802bd61c
  .4byte 0x802bd664
.global lbl_803E1A58
lbl_803E1A58:
	.incbin "baserom.dol", 0x2EB378, 0x4
.global lbl_803E1A5C
lbl_803E1A5C:
	.incbin "baserom.dol", 0x2EB37C, 0x4
.global lbl_803E1A60
lbl_803E1A60:
	.incbin "baserom.dol", 0x2EB380, 0x4
.global lbl_803E1A64
lbl_803E1A64:
	.incbin "baserom.dol", 0x2EB384, 0x4
.global lbl_803E1A68
lbl_803E1A68:
	.incbin "baserom.dol", 0x2EB388, 0x24
.global __RTTI__13GenObjectItem
__RTTI__13GenObjectItem:
  .4byte 0x802bd82c
  .4byte 0x802bd874
  .4byte 0x802bd8d4
  .4byte 0
  .4byte 0
.global lbl_803E1AA0
lbl_803E1AA0:
	.incbin "baserom.dol", 0x2EB3C0, 0x4
.global lbl_803E1AA4
lbl_803E1AA4:
	.incbin "baserom.dol", 0x2EB3C4, 0x4
.global lbl_803E1AA8
lbl_803E1AA8:
	.incbin "baserom.dol", 0x2EB3C8, 0x4
.global lbl_803E1AAC
lbl_803E1AAC:
	.incbin "baserom.dol", 0x2EB3CC, 0x4
.global lbl_803E1AB0
lbl_803E1AB0:
	.incbin "baserom.dol", 0x2EB3D0, 0x4
.global lbl_803E1AB4
lbl_803E1AB4:
	.incbin "baserom.dol", 0x2EB3D4, 0x4
.global lbl_803E1AB8
lbl_803E1AB8:
	.incbin "baserom.dol", 0x2EB3D8, 0x4
.global lbl_803E1ABC
lbl_803E1ABC:
	.incbin "baserom.dol", 0x2EB3DC, 0x4
.global lbl_803E1AC0
lbl_803E1AC0:
	.incbin "baserom.dol", 0x2EB3E0, 0x4
.global __RTTI__9SAIAction
__RTTI__9SAIAction:
  .4byte 0x802bd944
  .4byte 0
.global __RTTI__Q211FallWaterAI13DisappearInit
__RTTI__Q211FallWaterAI13DisappearInit:
  .4byte 0x802bd928
  .4byte 0x802bd950
.global __RTTI__Q211FallWaterAI8EmitInit
__RTTI__Q211FallWaterAI8EmitInit:
  .4byte 0x802bd968
  .4byte 0x802bd980
.global __RTTI__Q211FallWaterAI11CollideInit
__RTTI__Q211FallWaterAI11CollideInit:
  .4byte 0x802bd998
  .4byte 0x802bd9b4
.global __RTTI__26StateMachine$$010AICreature$$1_1
__RTTI__26StateMachine$$010AICreature$$1_1:
  .4byte 0x802bd9d8
  .4byte 0
.global __RTTI__8SimpleAI_1
__RTTI__8SimpleAI_1:
  .4byte 0x802bd9f4
  .4byte 0x802bda00
.global __RTTI__11FallWaterAI
__RTTI__11FallWaterAI:
  .4byte 0x802bd9cc
  .4byte 0x802bda0c
.global __RTTI__Q27WaterAI3Die
__RTTI__Q27WaterAI3Die:
  .4byte 0x802bda38
  .4byte 0x802bda48
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e1b04
  .4byte 0
  .4byte lbl_802BD90C
  .4byte 0x802bda78
.global __RTTI__12SAICondition_1
__RTTI__12SAICondition_1:
  .4byte 0x802bda84
  .4byte 0x802bda94
.global __RTTI__Q27WaterAI11CollideChar
__RTTI__Q27WaterAI11CollideChar:
  .4byte 0x802bda60
  .4byte 0x802bdaa8
  .4byte 0x57617465
  .4byte 0x72414900
.global __RTTI__7WaterAI
__RTTI__7WaterAI:
  .4byte 0x803e1b2c
  .4byte 0x802bdad8
.global __RTTI__Q25GemAI3Die
__RTTI__Q25GemAI3Die:
  .4byte 0x802bdb04
  .4byte 0x802bdb10
.global __RTTI__Q25GemAI8RiseExec
__RTTI__Q25GemAI8RiseExec:
  .4byte 0x802bdb28
  .4byte 0x802bdb38
.global __RTTI__Q25GemAI8RiseInit
__RTTI__Q25GemAI8RiseInit:
  .4byte 0x802bdb50
  .4byte 0x802bdb60
  .4byte 0x47656d41
  .4byte 0x49000000
.global __RTTI__5GemAI
__RTTI__5GemAI:
  .4byte 0x803e1b54
  .4byte 0x802bdb78
.global __RTTI__Q26GoalAI6Effect
__RTTI__Q26GoalAI6Effect:
  .4byte 0x802bdba4
  .4byte 0x802bdbb4
.global __RTTI__Q26GoalAI8EmitWait
__RTTI__Q26GoalAI8EmitWait:
  .4byte 0x802bdbcc
  .4byte 0x802bdbe0
.global __RTTI__Q26GoalAI8EmitPiki
__RTTI__Q26GoalAI8EmitPiki:
  .4byte 0x802bdbf8
  .4byte 0x802bdc0c
.global __RTTI__Q26GoalAI8BootDone
__RTTI__Q26GoalAI8BootDone:
  .4byte 0x802bdc24
  .4byte 0x802bdc38
.global __RTTI__Q26GoalAI8BootEmit
__RTTI__Q26GoalAI8BootEmit:
  .4byte 0x802bdc50
  .4byte 0x802bdc64
.global __RTTI__Q26GoalAI8BootInit
__RTTI__Q26GoalAI8BootInit:
  .4byte 0x802bdc7c
  .4byte 0x802bdc90
.global __RTTI__Q26GoalAI8WaitInit
__RTTI__Q26GoalAI8WaitInit:
  .4byte 0x802bdca8
  .4byte 0x802bdcbc
.global __RTTI__Q26GoalAI11NotFinished
__RTTI__Q26GoalAI11NotFinished:
  .4byte 0x802bdcd4
  .4byte 0x802bdce8
  .4byte 0x476f616c
  .4byte 0x41490000
.global __RTTI__6GoalAI
__RTTI__6GoalAI:
  .4byte 0x803e1ba4
  .4byte 0x802bdd48
.global __RTTI__Q26BombAI7DieExec
__RTTI__Q26BombAI7DieExec:
  .4byte 0x802bdd74
  .4byte 0x802bdd84
.global __RTTI__Q26BombAI7DieInit
__RTTI__Q26BombAI7DieInit:
  .4byte 0x802bdd9c
  .4byte 0x802bddac
.global __RTTI__Q26BombAI8MizuExec
__RTTI__Q26BombAI8MizuExec:
  .4byte 0x802bddc4
  .4byte 0x802bddd8
.global __RTTI__Q26BombAI8MizuInit
__RTTI__Q26BombAI8MizuInit:
  .4byte 0x802bddf0
  .4byte 0x802bde04
.global __RTTI__Q26BombAI8BombExec
__RTTI__Q26BombAI8BombExec:
  .4byte 0x802bde1c
  .4byte 0x802bde30
.global __RTTI__11CndCollPart
__RTTI__11CndCollPart:
  .4byte 0x802bde8c
  .4byte 0
.global __RTTI__11CndBombable
__RTTI__11CndBombable:
  .4byte 0x802bde80
  .4byte 0x802bde98
.global __RTTI__Q26BombAI8BombInit
__RTTI__Q26BombAI8BombInit:
  .4byte 0x802bdebc
  .4byte 0x802bded0
.global __RTTI__Q26BombAI7SetExec
__RTTI__Q26BombAI7SetExec:
  .4byte 0x802bdee8
  .4byte 0x802bdef8
.global __RTTI__Q26BombAI7SetInit
__RTTI__Q26BombAI7SetInit:
  .4byte 0x802bdf10
  .4byte 0x802bdf20
  .4byte 0x426f6d62
  .4byte 0x41490000
.global __RTTI__6BombAI
__RTTI__6BombAI:
  .4byte 0x803e1c04
  .4byte 0x802bdf38
.global __RTTI__Q210PikiHeadAI4Dead
__RTTI__Q210PikiHeadAI4Dead:
  .4byte 0x802bdf64
  .4byte 0x802bdf78
.global __RTTI__Q210PikiHeadAI10KaretaExec
__RTTI__Q210PikiHeadAI10KaretaExec:
  .4byte 0x802bdf90
  .4byte 0x802bdfa8
.global __RTTI__Q210PikiHeadAI10KaretaInit
__RTTI__Q210PikiHeadAI10KaretaInit:
  .4byte 0x802bdfc0
  .4byte 0x802bdfd8
.global __RTTI__Q210PikiHeadAI10GrowEffect
__RTTI__Q210PikiHeadAI10GrowEffect:
  .4byte 0x802bdff0
  .4byte 0x802be008
.global __RTTI__Q210PikiHeadAI12GrowupedExec
__RTTI__Q210PikiHeadAI12GrowupedExec:
  .4byte 0x802be020
  .4byte 0x802be03c
.global __RTTI__Q210PikiHeadAI8WaitExec
__RTTI__Q210PikiHeadAI8WaitExec:
  .4byte 0x802be054
  .4byte 0x802be06c
.global __RTTI__Q210PikiHeadAI8WaitInit
__RTTI__Q210PikiHeadAI8WaitInit:
  .4byte 0x802be084
  .4byte 0x802be09c
.global __RTTI__Q210PikiHeadAI8TaneExec
__RTTI__Q210PikiHeadAI8TaneExec:
  .4byte 0x802be0b4
  .4byte 0x802be0cc
.global __RTTI__Q210PikiHeadAI8TaneInit
__RTTI__Q210PikiHeadAI8TaneInit:
  .4byte 0x802be0e4
  .4byte 0x802be0fc
.global __RTTI__Q210PikiHeadAI8BuryExec
__RTTI__Q210PikiHeadAI8BuryExec:
  .4byte 0x802be114
  .4byte 0x802be12c
.global __RTTI__Q210PikiHeadAI8BuryInit
__RTTI__Q210PikiHeadAI8BuryInit:
  .4byte 0x802be144
  .4byte 0x802be15c
.global __RTTI__Q210PikiHeadAI9BuryExec2
__RTTI__Q210PikiHeadAI9BuryExec2:
  .4byte 0x802be174
  .4byte 0x802be18c
.global __RTTI__Q210PikiHeadAI9BuryInit2
__RTTI__Q210PikiHeadAI9BuryInit2:
  .4byte 0x802be1a4
  .4byte 0x802be1bc
.global __RTTI__Q210PikiHeadAI13FlyingCleanup
__RTTI__Q210PikiHeadAI13FlyingCleanup:
  .4byte 0x802be1d4
  .4byte 0x802be1f0
.global __RTTI__Q210PikiHeadAI10FlyingExec
__RTTI__Q210PikiHeadAI10FlyingExec:
  .4byte 0x802be208
  .4byte 0x802be220
.global __RTTI__Q210PikiHeadAI12FlyingEffect
__RTTI__Q210PikiHeadAI12FlyingEffect:
  .4byte 0x802be238
  .4byte 0x802be254
.global __RTTI__Q210PikiHeadAI11BounceSound
__RTTI__Q210PikiHeadAI11BounceSound:
  .4byte 0x802be26c
  .4byte 0x802be284
.global __RTTI__10PikiHeadAI
__RTTI__10PikiHeadAI:
  .4byte 0x802be29c
  .4byte 0x802be2a8
.global __RTTI__Q28SluiceAI10DamageInit
__RTTI__Q28SluiceAI10DamageInit:
  .4byte 0x802be2d4
  .4byte 0x802be2ec
.global __RTTI__Q28SluiceAI10ChangeInit
__RTTI__Q28SluiceAI10ChangeInit:
  .4byte 0x802be304
  .4byte 0x802be31c
.global __RTTI__Q28SluiceAI8WaitInit
__RTTI__Q28SluiceAI8WaitInit:
  .4byte 0x802be334
  .4byte 0x802be348
.global __RTTI__Q28SluiceAI8AddCount
__RTTI__Q28SluiceAI8AddCount:
  .4byte 0x802be360
  .4byte 0x802be374
.global __RTTI__Q28SluiceAI10MotionDone
__RTTI__Q28SluiceAI10MotionDone:
  .4byte 0x802be38c
  .4byte 0x802be3a4
.global __RTTI__Q28SluiceAI4Init
__RTTI__Q28SluiceAI4Init:
  .4byte 0x802be3bc
  .4byte 0x802be3cc
.global __RTTI__22Receiver$$010AICreature$$1_2
__RTTI__22Receiver$$010AICreature$$1_2:
  .4byte 0x802be3fc
  .4byte 0
.global __RTTI__8SluiceAI
__RTTI__8SluiceAI:
  .4byte 0x802be490
  .4byte 0x802be49c
  .4byte 0
.global lbl_803E1CE8
lbl_803E1CE8:
	.incbin "baserom.dol", 0x2EB608, 0x8
.global lbl_803E1CF0
lbl_803E1CF0:
	.incbin "baserom.dol", 0x2EB610, 0x8
.global lbl_803E1CF8
lbl_803E1CF8:
	.incbin "baserom.dol", 0x2EB618, 0x8
.global lbl_803E1D00
lbl_803E1D00:
	.incbin "baserom.dol", 0x2EB620, 0x4
.global lbl_803E1D04
lbl_803E1D04:
	.incbin "baserom.dol", 0x2EB624, 0x4
.global lbl_803E1D08
lbl_803E1D08:
	.incbin "baserom.dol", 0x2EB628, 0x4
.global lbl_803E1D0C
lbl_803E1D0C:
	.incbin "baserom.dol", 0x2EB62C, 0x4
.global lbl_803E1D10
lbl_803E1D10:
	.incbin "baserom.dol", 0x2EB630, 0x4
.global lbl_803E1D14
lbl_803E1D14:
	.incbin "baserom.dol", 0x2EB634, 0x8
.global lbl_803E1D1C
lbl_803E1D1C:
	.incbin "baserom.dol", 0x2EB63C, 0x8
.global lbl_803E1D24
lbl_803E1D24:
	.incbin "baserom.dol", 0x2EB644, 0x8
.global lbl_803E1D2C
lbl_803E1D2C:
	.incbin "baserom.dol", 0x2EB64C, 0x8
.global lbl_803E1D34
lbl_803E1D34:
	.incbin "baserom.dol", 0x2EB654, 0x8
.global lbl_803E1D3C
lbl_803E1D3C:
	.incbin "baserom.dol", 0x2EB65C, 0x4
.global lbl_803E1D40
lbl_803E1D40:
	.incbin "baserom.dol", 0x2EB660, 0x4
.global lbl_803E1D44
lbl_803E1D44:
	.incbin "baserom.dol", 0x2EB664, 0x44
.global __RTTI__11PikiHeadMgr
__RTTI__11PikiHeadMgr:
  .4byte 0x802be7d0
  .4byte 0x802be874
  .4byte 0x802be940
  .4byte 0
.global __RTTI__16PikiHeadItemProp
__RTTI__16PikiHeadItemProp:
  .4byte 0x802be92c
  .4byte 0x802be950
  .4byte 0x4974656d
  .4byte 0x4d677200
.global __RTTI__13PolyObjectMgr_1
__RTTI__13PolyObjectMgr_1:
  .4byte 0x802be968
  .4byte 0x802be978
.global __RTTI__7ItemMgr
__RTTI__7ItemMgr:
  .4byte 0x803e1da0
  .4byte 0x802be9a4
  .4byte 0x802bea6c
  .4byte 0
.global __RTTI__15InteractBikkuri
__RTTI__15InteractBikkuri:
  .4byte 0x802bea5c
  .4byte 0x802bea78
  .4byte 0x802beac0
  .4byte 0
  .4byte 0x802bead4
  .4byte 0
  .4byte 0x802beae0
  .4byte 0
  .4byte 0x802beaf0
  .4byte 0x802beafc
  .4byte 0x802beb10
  .4byte 0x802beb1c
  .4byte 0x802beab0
  .4byte 0x802beb40
.global __RTTI__8DoorProp
__RTTI__8DoorProp:
  .4byte 0x802becc8
  .4byte 0x802becd4
  .4byte 0x4b657950
  .4byte 0x726f7000
.global __RTTI__7KeyProp
__RTTI__7KeyProp:
  .4byte 0x803e1e00
  .4byte 0x802becec
.global __RTTI__8SeedProp
__RTTI__8SeedProp:
  .4byte 0x802bed04
  .4byte 0x802bed10
.global __RTTI__8RopeProp
__RTTI__8RopeProp:
  .4byte 0x802bed28
  .4byte 0x802bed34
.global __RTTI__12MizuItemProp
__RTTI__12MizuItemProp:
  .4byte 0x802bed4c
  .4byte 0x802bed5c
.global __RTTI__12BombItemProp
__RTTI__12BombItemProp:
  .4byte 0x802bed74
  .4byte 0x802bed84
.global __RTTI__Q27ItemMgr7UseNode
__RTTI__Q27ItemMgr7UseNode:
  .4byte 0x802bed9c
  .4byte 0x802bedb0
.global __RTTI__12KusaItemProp
__RTTI__12KusaItemProp:
  .4byte 0x802bedd4
  .4byte 0x802bede4
.global __RTTI__16BuildingItemProp
__RTTI__16BuildingItemProp:
  .4byte 0x802bedfc
  .4byte 0x802bee10
  .4byte 0x802bee34
  .4byte 0
.global __RTTI__11UfoItemProp
__RTTI__11UfoItemProp:
  .4byte 0x802bee60
  .4byte 0x802bee6c
.global __RTTI__12GoalItemProp
__RTTI__12GoalItemProp:
  .4byte 0x802bee84
  .4byte 0x802bee94
.global __RTTI__15CreatureNodeMgr_1
__RTTI__15CreatureNodeMgr_1:
  .4byte 0x802beec8
  .4byte 0x802beed8
.global __RTTI__13MeltingPotMgr
__RTTI__13MeltingPotMgr:
  .4byte 0x802beeb8
  .4byte 0x802bef04
.global __RTTI__12CreatureNode
__RTTI__12CreatureNode:
  .4byte 0x802befb0
  .4byte 0x802befc0
.global __RTTI__12BuildingItem
__RTTI__12BuildingItem:
  .4byte 0x802bf018
  .4byte 0x802bf028
  .4byte 0x802bf1f0
  .4byte 0
  .4byte 0x802bf204
  .4byte 0
  .4byte 0x802bf210
  .4byte 0
  .4byte 0x802bf220
  .4byte 0x802bf22c
  .4byte 0x802bf240
  .4byte 0x802bf24c
  .4byte 0x802bf270
  .4byte 0x802bf280
.global __RTTI__10ItemObject
__RTTI__10ItemObject:
  .4byte 0x802bf2ac
  .4byte 0x802bf2b8
.global __RTTI__18NaviDemoSunsetGoal
__RTTI__18NaviDemoSunsetGoal:
  .4byte 0x802bf1dc
  .4byte 0x802bf2ec
.global __RTTI__19NaviDemoSunsetStart
__RTTI__19NaviDemoSunsetStart:
  .4byte 0x802bf484
  .4byte 0x802bf498
  .4byte 0x46756c63
  .4byte 0x72756d00
.global __RTTI__7Fulcrum
__RTTI__7Fulcrum:
  .4byte 0x803e1ec8
  .4byte 0x802bf630
.global __RTTI__11BombGenItem
__RTTI__11BombGenItem:
  .4byte 0x802bf7c8
  .4byte 0x802bf7d4
.global __RTTI__8ItemBall
__RTTI__8ItemBall:
  .4byte 0x802bfac8
  .4byte 0x802bfad4
  .4byte 0x802bfc90
  .4byte 0
  .4byte 0x802bfca4
  .4byte 0
  .4byte 0x802bfcb0
  .4byte 0
  .4byte 0x802bfcc0
  .4byte 0x802bfccc
  .4byte 0x802bfce0
  .4byte 0x802bfcec
  .4byte 0x802bfd10
  .4byte 0x802bfd20
.global __RTTI__8MizuItem
__RTTI__8MizuItem:
  .4byte 0x802bfc84
  .4byte 0x802bfd4c
  .4byte 0x31000000
  .4byte 0x32000000
  .4byte 0x33000000
  .4byte 0x34000000
  .4byte 0x35000000
  .4byte 0x36000000
  .4byte 0x37000000
  .4byte 0x38000000
  .4byte 0x39000000
  .4byte 0x31300000
  .4byte 0x31310000
  .4byte 0x31320000
  .4byte 0x31330000
  .4byte 0x31340000
  .4byte 0x31350000
  .4byte 0x802bff5c
  .4byte 0
  .4byte 0x802bff68
  .4byte 0x802bff78
.global __RTTI__16PaniItemAnimator
__RTTI__16PaniItemAnimator:
  .4byte 0x802bff48
  .4byte 0x802bff84
  .4byte 0
  .4byte 0x802c000c
  .4byte 0
  .4byte 0x47656e42
  .4byte 0x61736500
  .4byte 0x803e1f80
  .4byte 0x802c0018
  .4byte 0x802c0024
  .4byte 0x802c0030
.global __RTTI__13GenObjectNavi
__RTTI__13GenObjectNavi:
  .4byte 0x802bfffc
  .4byte 0x802c0044
.global DelayPikiBirth
DelayPikiBirth:
	.incbin "baserom.dol", 0x2EB8C0, 0x4
.global lbl_803E1FA4
lbl_803E1FA4:
	.incbin "baserom.dol", 0x2EB8C4, 0x4
.global lbl_803E1FA8
lbl_803E1FA8:
	.incbin "baserom.dol", 0x2EB8C8, 0x4
.global lbl_803E1FAC
lbl_803E1FAC:
	.incbin "baserom.dol", 0x2EB8CC, 0x4
.global lbl_803E1FB0
lbl_803E1FB0:
	.incbin "baserom.dol", 0x2EB8D0, 0x4
.global lbl_803E1FB4
lbl_803E1FB4:
	.incbin "baserom.dol", 0x2EB8D4, 0x4
.global lbl_803E1FB8
lbl_803E1FB8:
	.incbin "baserom.dol", 0x2EB8D8, 0x4
.global lbl_803E1FBC
lbl_803E1FBC:
	.incbin "baserom.dol", 0x2EB8DC, 0x4
.global lbl_803E1FC0
lbl_803E1FC0:
	.incbin "baserom.dol", 0x2EB8E0, 0x4
.global lbl_803E1FC4
lbl_803E1FC4:
	.incbin "baserom.dol", 0x2EB8E4, 0x4
.global lbl_803E1FC8
lbl_803E1FC8:
	.incbin "baserom.dol", 0x2EB8E8, 0x4
.global lbl_803E1FCC
lbl_803E1FCC:
	.incbin "baserom.dol", 0x2EB8EC, 0x4
.global lbl_803E1FD0
lbl_803E1FD0:
	.incbin "baserom.dol", 0x2EB8F0, 0x4
.global lbl_803E1FD4
lbl_803E1FD4:
	.incbin "baserom.dol", 0x2EB8F4, 0x4
.global lbl_803E1FD8
lbl_803E1FD8:
	.incbin "baserom.dol", 0x2EB8F8, 0x4
.global lbl_803E1FDC
lbl_803E1FDC:
	.incbin "baserom.dol", 0x2EB8FC, 0x4
.global lbl_803E1FE0
lbl_803E1FE0:
	.incbin "baserom.dol", 0x2EB900, 0x4
.global lbl_803E1FE4
lbl_803E1FE4:
	.incbin "baserom.dol", 0x2EB904, 0x4
.global lbl_803E1FE8
lbl_803E1FE8:
	.incbin "baserom.dol", 0x2EB908, 0x4
.global lbl_803E1FEC
lbl_803E1FEC:
	.incbin "baserom.dol", 0x2EB90C, 0x4
.global lbl_803E1FF0
lbl_803E1FF0:
	.incbin "baserom.dol", 0x2EB910, 0x4
.global lbl_803E1FF4
lbl_803E1FF4:
	.incbin "baserom.dol", 0x2EB914, 0x4
.global lbl_803E1FF8
lbl_803E1FF8:
	.incbin "baserom.dol", 0x2EB918, 0x4
.global lbl_803E1FFC
lbl_803E1FFC:
	.incbin "baserom.dol", 0x2EB91C, 0x4
.global lbl_803E2000
lbl_803E2000:
	.incbin "baserom.dol", 0x2EB920, 0x4
.global lbl_803E2004
lbl_803E2004:
	.incbin "baserom.dol", 0x2EB924, 0x4
.global lbl_803E2008
lbl_803E2008:
	.incbin "baserom.dol", 0x2EB928, 0x4
.global lbl_803E200C
lbl_803E200C:
	.incbin "baserom.dol", 0x2EB92C, 0x4
.global lbl_803E2010
lbl_803E2010:
	.incbin "baserom.dol", 0x2EB930, 0x4
.global lbl_803E2014
lbl_803E2014:
	.incbin "baserom.dol", 0x2EB934, 0x4
.global lbl_803E2018
lbl_803E2018:
	.incbin "baserom.dol", 0x2EB938, 0x4
.global lbl_803E201C
lbl_803E201C:
	.incbin "baserom.dol", 0x2EB93C, 0x4
.global lbl_803E2020
lbl_803E2020:
	.incbin "baserom.dol", 0x2EB940, 0x4
.global lbl_803E2024
lbl_803E2024:
	.incbin "baserom.dol", 0x2EB944, 0x4
.global lbl_803E2028
lbl_803E2028:
	.incbin "baserom.dol", 0x2EB948, 0x4
.global lbl_803E202C
lbl_803E202C:
	.incbin "baserom.dol", 0x2EB94C, 0x4
.global lbl_803E2030
lbl_803E2030:
	.incbin "baserom.dol", 0x2EB950, 0x4
.global lbl_803E2034
lbl_803E2034:
	.incbin "baserom.dol", 0x2EB954, 0x4
.global lbl_803E2038
lbl_803E2038:
	.incbin "baserom.dol", 0x2EB958, 0x4
.global lbl_803E203C
lbl_803E203C:
	.incbin "baserom.dol", 0x2EB95C, 0x4
.global lbl_803E2040
lbl_803E2040:
	.incbin "baserom.dol", 0x2EB960, 0x4
.global lbl_803E2044
lbl_803E2044:
	.incbin "baserom.dol", 0x2EB964, 0x4
.global lbl_803E2048
lbl_803E2048:
	.incbin "baserom.dol", 0x2EB968, 0x4
.global lbl_803E204C
lbl_803E204C:
	.incbin "baserom.dol", 0x2EB96C, 0x4
.global lbl_803E2050
lbl_803E2050:
	.incbin "baserom.dol", 0x2EB970, 0x4
.global lbl_803E2054
lbl_803E2054:
	.incbin "baserom.dol", 0x2EB974, 0x4
.global lbl_803E2058
lbl_803E2058:
	.incbin "baserom.dol", 0x2EB978, 0x4
.global lbl_803E205C
lbl_803E205C:
	.incbin "baserom.dol", 0x2EB97C, 0x4
.global lbl_803E2060
lbl_803E2060:
	.incbin "baserom.dol", 0x2EB980, 0x4
.global lbl_803E2064
lbl_803E2064:
	.incbin "baserom.dol", 0x2EB984, 0x4
.global lbl_803E2068
lbl_803E2068:
	.incbin "baserom.dol", 0x2EB988, 0x4
.global lbl_803E206C
lbl_803E206C:
	.incbin "baserom.dol", 0x2EB98C, 0x4
.global lbl_803E2070
lbl_803E2070:
	.incbin "baserom.dol", 0x2EB990, 0x4
.global lbl_803E2074
lbl_803E2074:
	.incbin "baserom.dol", 0x2EB994, 0x4
.global lbl_803E2078
lbl_803E2078:
	.incbin "baserom.dol", 0x2EB998, 0x4
.global lbl_803E207C
lbl_803E207C:
	.incbin "baserom.dol", 0x2EB99C, 0x4
.global lbl_803E2080
lbl_803E2080:
	.incbin "baserom.dol", 0x2EB9A0, 0x4
.global lbl_803E2084
lbl_803E2084:
	.incbin "baserom.dol", 0x2EB9A4, 0x4
.global lbl_803E2088
lbl_803E2088:
	.incbin "baserom.dol", 0x2EB9A8, 0x4
.global lbl_803E208C
lbl_803E208C:
	.incbin "baserom.dol", 0x2EB9AC, 0x4
.global lbl_803E2090
lbl_803E2090:
	.incbin "baserom.dol", 0x2EB9B0, 0x4
.global lbl_803E2094
lbl_803E2094:
	.incbin "baserom.dol", 0x2EB9B4, 0x4
.global lbl_803E2098
lbl_803E2098:
	.incbin "baserom.dol", 0x2EB9B8, 0x4
.global lbl_803E209C
lbl_803E209C:
	.incbin "baserom.dol", 0x2EB9BC, 0x4
.global lbl_803E20A0
lbl_803E20A0:
	.incbin "baserom.dol", 0x2EB9C0, 0x4
.global lbl_803E20A4
lbl_803E20A4:
	.incbin "baserom.dol", 0x2EB9C4, 0x4
.global lbl_803E20A8
lbl_803E20A8:
	.incbin "baserom.dol", 0x2EB9C8, 0x4
.global lbl_803E20AC
lbl_803E20AC:
	.incbin "baserom.dol", 0x2EB9CC, 0x4
.global lbl_803E20B0
lbl_803E20B0:
	.incbin "baserom.dol", 0x2EB9D0, 0x4
.global lbl_803E20B4
lbl_803E20B4:
	.incbin "baserom.dol", 0x2EB9D4, 0x4
.global lbl_803E20B8
lbl_803E20B8:
	.incbin "baserom.dol", 0x2EB9D8, 0x4
.global lbl_803E20BC
lbl_803E20BC:
	.incbin "baserom.dol", 0x2EB9DC, 0x4
.global lbl_803E20C0
lbl_803E20C0:
	.incbin "baserom.dol", 0x2EB9E0, 0x4
.global lbl_803E20C4
lbl_803E20C4:
	.incbin "baserom.dol", 0x2EB9E4, 0x4
.global lbl_803E20C8
lbl_803E20C8:
	.incbin "baserom.dol", 0x2EB9E8, 0x4
.global lbl_803E20CC
lbl_803E20CC:
	.incbin "baserom.dol", 0x2EB9EC, 0x4
.global lbl_803E20D0
lbl_803E20D0:
	.incbin "baserom.dol", 0x2EB9F0, 0x4
.global lbl_803E20D4
lbl_803E20D4:
	.incbin "baserom.dol", 0x2EB9F4, 0x4
.global lbl_803E20D8
lbl_803E20D8:
	.incbin "baserom.dol", 0x2EB9F8, 0x4
.global lbl_803E20DC
lbl_803E20DC:
	.incbin "baserom.dol", 0x2EB9FC, 0x4
.global lbl_803E20E0
lbl_803E20E0:
	.incbin "baserom.dol", 0x2EBA00, 0x4
.global lbl_803E20E4
lbl_803E20E4:
	.incbin "baserom.dol", 0x2EBA04, 0x4
.global lbl_803E20E8
lbl_803E20E8:
	.incbin "baserom.dol", 0x2EBA08, 0x4
.global lbl_803E20EC
lbl_803E20EC:
	.incbin "baserom.dol", 0x2EBA0C, 0x4
.global lbl_803E20F0
lbl_803E20F0:
	.incbin "baserom.dol", 0x2EBA10, 0x4
.global lbl_803E20F4
lbl_803E20F4:
	.incbin "baserom.dol", 0x2EBA14, 0x4
.global lbl_803E20F8
lbl_803E20F8:
	.incbin "baserom.dol", 0x2EBA18, 0x8
.global lbl_803E2100
lbl_803E2100:
	.incbin "baserom.dol", 0x2EBA20, 0x4
.global lbl_803E2104
lbl_803E2104:
	.incbin "baserom.dol", 0x2EBA24, 0x4
.global lbl_803E2108
lbl_803E2108:
	.incbin "baserom.dol", 0x2EBA28, 0x4
.global lbl_803E210C
lbl_803E210C:
	.incbin "baserom.dol", 0x2EBA2C, 0x4
.global lbl_803E2110
lbl_803E2110:
	.incbin "baserom.dol", 0x2EBA30, 0x4
.global lbl_803E2114
lbl_803E2114:
	.incbin "baserom.dol", 0x2EBA34, 0x4
.global lbl_803E2118
lbl_803E2118:
	.incbin "baserom.dol", 0x2EBA38, 0x4
.global lbl_803E211C
lbl_803E211C:
	.incbin "baserom.dol", 0x2EBA3C, 0x4
.global lbl_803E2120
lbl_803E2120:
	.incbin "baserom.dol", 0x2EBA40, 0x4
.global lbl_803E2124
lbl_803E2124:
	.incbin "baserom.dol", 0x2EBA44, 0x4
.global lbl_803E2128
lbl_803E2128:
	.incbin "baserom.dol", 0x2EBA48, 0x4
.global lbl_803E212C
lbl_803E212C:
	.incbin "baserom.dol", 0x2EBA4C, 0x4
.global lbl_803E2130
lbl_803E2130:
	.incbin "baserom.dol", 0x2EBA50, 0x4
.global lbl_803E2134
lbl_803E2134:
	.incbin "baserom.dol", 0x2EBA54, 0x4
.global lbl_803E2138
lbl_803E2138:
	.incbin "baserom.dol", 0x2EBA58, 0x4
.global lbl_803E213C
lbl_803E213C:
	.incbin "baserom.dol", 0x2EBA5C, 0x4
.global lbl_803E2140
lbl_803E2140:
	.incbin "baserom.dol", 0x2EBA60, 0x4
.global lbl_803E2144
lbl_803E2144:
	.incbin "baserom.dol", 0x2EBA64, 0x4
.global lbl_803E2148
lbl_803E2148:
	.incbin "baserom.dol", 0x2EBA68, 0x4
.global lbl_803E214C
lbl_803E214C:
	.incbin "baserom.dol", 0x2EBA6C, 0x4
.global lbl_803E2150
lbl_803E2150:
	.incbin "baserom.dol", 0x2EBA70, 0x4
.global lbl_803E2154
lbl_803E2154:
	.incbin "baserom.dol", 0x2EBA74, 0x4
.global lbl_803E2158
lbl_803E2158:
	.incbin "baserom.dol", 0x2EBA78, 0x4
.global lbl_803E215C
lbl_803E215C:
	.incbin "baserom.dol", 0x2EBA7C, 0x4
.global lbl_803E2160
lbl_803E2160:
	.incbin "baserom.dol", 0x2EBA80, 0x4
.global lbl_803E2164
lbl_803E2164:
	.incbin "baserom.dol", 0x2EBA84, 0x4
.global lbl_803E2168
lbl_803E2168:
	.incbin "baserom.dol", 0x2EBA88, 0x4
.global lbl_803E216C
lbl_803E216C:
	.incbin "baserom.dol", 0x2EBA8C, 0x4
.global lbl_803E2170
lbl_803E2170:
	.incbin "baserom.dol", 0x2EBA90, 0x4
.global lbl_803E2174
lbl_803E2174:
	.incbin "baserom.dol", 0x2EBA94, 0x4
.global lbl_803E2178
lbl_803E2178:
	.incbin "baserom.dol", 0x2EBA98, 0x4
.global lbl_803E217C
lbl_803E217C:
	.incbin "baserom.dol", 0x2EBA9C, 0x4
.global lbl_803E2180
lbl_803E2180:
	.incbin "baserom.dol", 0x2EBAA0, 0x4
.global lbl_803E2184
lbl_803E2184:
	.incbin "baserom.dol", 0x2EBAA4, 0x4
.global lbl_803E2188
lbl_803E2188:
	.incbin "baserom.dol", 0x2EBAA8, 0x4
.global lbl_803E218C
lbl_803E218C:
	.incbin "baserom.dol", 0x2EBAAC, 0x4
.global lbl_803E2190
lbl_803E2190:
	.incbin "baserom.dol", 0x2EBAB0, 0x4
.global lbl_803E2194
lbl_803E2194:
	.incbin "baserom.dol", 0x2EBAB4, 0x4
.global lbl_803E2198
lbl_803E2198:
	.incbin "baserom.dol", 0x2EBAB8, 0x4
.global lbl_803E219C
lbl_803E219C:
	.incbin "baserom.dol", 0x2EBABC, 0x4
.global lbl_803E21A0
lbl_803E21A0:
	.incbin "baserom.dol", 0x2EBAC0, 0x4
.global lbl_803E21A4
lbl_803E21A4:
	.incbin "baserom.dol", 0x2EBAC4, 0x4
.global lbl_803E21A8
lbl_803E21A8:
	.incbin "baserom.dol", 0x2EBAC8, 0x4
.global lbl_803E21AC
lbl_803E21AC:
	.incbin "baserom.dol", 0x2EBACC, 0x4
.global lbl_803E21B0
lbl_803E21B0:
	.incbin "baserom.dol", 0x2EBAD0, 0x4
.global lbl_803E21B4
lbl_803E21B4:
	.incbin "baserom.dol", 0x2EBAD4, 0x4
.global lbl_803E21B8
lbl_803E21B8:
	.incbin "baserom.dol", 0x2EBAD8, 0x4
.global lbl_803E21BC
lbl_803E21BC:
	.incbin "baserom.dol", 0x2EBADC, 0x4
.global lbl_803E21C0
lbl_803E21C0:
	.incbin "baserom.dol", 0x2EBAE0, 0x4
.global lbl_803E21C4
lbl_803E21C4:
	.incbin "baserom.dol", 0x2EBAE4, 0x4
.global lbl_803E21C8
lbl_803E21C8:
	.incbin "baserom.dol", 0x2EBAE8, 0x4
.global lbl_803E21CC
lbl_803E21CC:
	.incbin "baserom.dol", 0x2EBAEC, 0x4
.global lbl_803E21D0
lbl_803E21D0:
	.incbin "baserom.dol", 0x2EBAF0, 0x4
.global lbl_803E21D4
lbl_803E21D4:
	.incbin "baserom.dol", 0x2EBAF4, 0x4
.global lbl_803E21D8
lbl_803E21D8:
	.incbin "baserom.dol", 0x2EBAF8, 0x4
.global lbl_803E21DC
lbl_803E21DC:
	.incbin "baserom.dol", 0x2EBAFC, 0x4
.global lbl_803E21E0
lbl_803E21E0:
	.incbin "baserom.dol", 0x2EBB00, 0x4
.global lbl_803E21E4
lbl_803E21E4:
	.incbin "baserom.dol", 0x2EBB04, 0xC
.global __RTTI__12InteractSuck
__RTTI__12InteractSuck:
  .4byte 0x802c0104
  .4byte 0x802c0120
.global __RTTI__14InteractGeyzer
__RTTI__14InteractGeyzer:
  .4byte 0x802c0158
  .4byte 0x802c0168
.global __RTTI__19StateMachine$$04Navi$$1
__RTTI__19StateMachine$$04Navi$$1:
  .4byte 0x802c01cc
  .4byte 0
  .4byte 0x802c01f8
  .4byte 0
  .4byte 0x802c021c
  .4byte 0
  .4byte 0x802c025c
  .4byte 0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e2220
  .4byte 0
  .4byte 0x802c0310
  .4byte 0x802c031c
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e2238
  .4byte 0x802c0328
.global __RTTI__10NaviDrawer
__RTTI__10NaviDrawer:
  .4byte 0x802c0304
  .4byte 0x802c033c
.global __RTTI__10PelletView
__RTTI__10PelletView:
  .4byte 0x802c03a4
  .4byte 0
  .4byte 0x802c03e4
  .4byte 0
  .4byte 0x802c0410
  .4byte 0
  .4byte 0x802c0448
  .4byte 0
.global __RTTI__8NaviProp
__RTTI__8NaviProp:
  .4byte 0x802c043c
  .4byte 0x802c0458
  .4byte 0x4e617669
  .4byte 0
  .4byte 0x802c04a8
  .4byte 0
  .4byte 0x802c04b4
  .4byte 0
  .4byte 0x802c04c4
  .4byte 0x802c04d0
.global __RTTI__4Navi
__RTTI__4Navi:
  .4byte 0x803e2278
  .4byte 0x802c04e4
.global lbl_803E22A0
lbl_803E22A0:
	.incbin "baserom.dol", 0x2EBBC0, 0x4
.global lbl_803E22A4
lbl_803E22A4:
	.incbin "baserom.dol", 0x2EBBC4, 0x4
.global lbl_803E22A8
lbl_803E22A8:
	.incbin "baserom.dol", 0x2EBBC8, 0x4
.global lbl_803E22AC
lbl_803E22AC:
	.incbin "baserom.dol", 0x2EBBCC, 0x4
.global lbl_803E22B0
lbl_803E22B0:
	.incbin "baserom.dol", 0x2EBBD0, 0x4
.global lbl_803E22B4
lbl_803E22B4:
	.incbin "baserom.dol", 0x2EBBD4, 0x4
.global lbl_803E22B8
lbl_803E22B8:
	.incbin "baserom.dol", 0x2EBBD8, 0x4
.global lbl_803E22BC
lbl_803E22BC:
	.incbin "baserom.dol", 0x2EBBDC, 0x4
.global lbl_803E22C0
lbl_803E22C0:
	.incbin "baserom.dol", 0x2EBBE0, 0x4
.global lbl_803E22C4
lbl_803E22C4:
	.incbin "baserom.dol", 0x2EBBE4, 0x4
.global lbl_803E22C8
lbl_803E22C8:
	.incbin "baserom.dol", 0x2EBBE8, 0x4
.global lbl_803E22CC
lbl_803E22CC:
	.incbin "baserom.dol", 0x2EBBEC, 0x4
.global lbl_803E22D0
lbl_803E22D0:
	.incbin "baserom.dol", 0x2EBBF0, 0x4
.global lbl_803E22D4
lbl_803E22D4:
	.incbin "baserom.dol", 0x2EBBF4, 0x4
.global lbl_803E22D8
lbl_803E22D8:
	.incbin "baserom.dol", 0x2EBBF8, 0x4
.global lbl_803E22DC
lbl_803E22DC:
	.incbin "baserom.dol", 0x2EBBFC, 0x4
.global lbl_803E22E0
lbl_803E22E0:
	.incbin "baserom.dol", 0x2EBC00, 0x4
.global lbl_803E22E4
lbl_803E22E4:
	.incbin "baserom.dol", 0x2EBC04, 0x4
.global lbl_803E22E8
lbl_803E22E8:
	.incbin "baserom.dol", 0x2EBC08, 0x4
.global lbl_803E22EC
lbl_803E22EC:
	.incbin "baserom.dol", 0x2EBC0C, 0x4
.global lbl_803E22F0
lbl_803E22F0:
	.incbin "baserom.dol", 0x2EBC10, 0x4
.global lbl_803E22F4
lbl_803E22F4:
	.incbin "baserom.dol", 0x2EBC14, 0x4
.global lbl_803E22F8
lbl_803E22F8:
	.incbin "baserom.dol", 0x2EBC18, 0x4
.global lbl_803E22FC
lbl_803E22FC:
	.incbin "baserom.dol", 0x2EBC1C, 0x4
.global lbl_803E2300
lbl_803E2300:
	.incbin "baserom.dol", 0x2EBC20, 0x4
.global lbl_803E2304
lbl_803E2304:
	.incbin "baserom.dol", 0x2EBC24, 0x4
.global lbl_803E2308
lbl_803E2308:
	.incbin "baserom.dol", 0x2EBC28, 0x4
.global lbl_803E230C
lbl_803E230C:
	.incbin "baserom.dol", 0x2EBC2C, 0x4
.global lbl_803E2310
lbl_803E2310:
	.incbin "baserom.dol", 0x2EBC30, 0x4
.global lbl_803E2314
lbl_803E2314:
	.incbin "baserom.dol", 0x2EBC34, 0x4
.global lbl_803E2318
lbl_803E2318:
	.incbin "baserom.dol", 0x2EBC38, 0x4
.global lbl_803E231C
lbl_803E231C:
	.incbin "baserom.dol", 0x2EBC3C, 0x4
.global lbl_803E2320
lbl_803E2320:
	.incbin "baserom.dol", 0x2EBC40, 0x4
.global lbl_803E2324
lbl_803E2324:
	.incbin "baserom.dol", 0x2EBC44, 0x4
.global lbl_803E2328
lbl_803E2328:
	.incbin "baserom.dol", 0x2EBC48, 0x4
.global lbl_803E232C
lbl_803E232C:
	.incbin "baserom.dol", 0x2EBC4C, 0x4
.global lbl_803E2330
lbl_803E2330:
	.incbin "baserom.dol", 0x2EBC50, 0x4
.global lbl_803E2334
lbl_803E2334:
	.incbin "baserom.dol", 0x2EBC54, 0x4
.global lbl_803E2338
lbl_803E2338:
	.incbin "baserom.dol", 0x2EBC58, 0x4
.global lbl_803E233C
lbl_803E233C:
	.incbin "baserom.dol", 0x2EBC5C, 0x4
.global lbl_803E2340
lbl_803E2340:
	.incbin "baserom.dol", 0x2EBC60, 0x4
.global lbl_803E2344
lbl_803E2344:
	.incbin "baserom.dol", 0x2EBC64, 0x4
.global lbl_803E2348
lbl_803E2348:
	.incbin "baserom.dol", 0x2EBC68, 0x4
.global lbl_803E234C
lbl_803E234C:
	.incbin "baserom.dol", 0x2EBC6C, 0x4
.global lbl_803E2350
lbl_803E2350:
	.incbin "baserom.dol", 0x2EBC70, 0x4
.global lbl_803E2354
lbl_803E2354:
	.incbin "baserom.dol", 0x2EBC74, 0x4
.global lbl_803E2358
lbl_803E2358:
	.incbin "baserom.dol", 0x2EBC78, 0x4
.global lbl_803E235C
lbl_803E235C:
	.incbin "baserom.dol", 0x2EBC7C, 0x4
.global lbl_803E2360
lbl_803E2360:
	.incbin "baserom.dol", 0x2EBC80, 0x4
.global lbl_803E2364
lbl_803E2364:
	.incbin "baserom.dol", 0x2EBC84, 0x4
.global lbl_803E2368
lbl_803E2368:
	.incbin "baserom.dol", 0x2EBC88, 0x4
.global lbl_803E236C
lbl_803E236C:
	.incbin "baserom.dol", 0x2EBC8C, 0x4
.global lbl_803E2370
lbl_803E2370:
	.incbin "baserom.dol", 0x2EBC90, 0x4
.global lbl_803E2374
lbl_803E2374:
	.incbin "baserom.dol", 0x2EBC94, 0x4
.global lbl_803E2378
lbl_803E2378:
	.incbin "baserom.dol", 0x2EBC98, 0x4
.global lbl_803E237C
lbl_803E237C:
	.incbin "baserom.dol", 0x2EBC9C, 0x4
.global lbl_803E2380
lbl_803E2380:
	.incbin "baserom.dol", 0x2EBCA0, 0x4
.global lbl_803E2384
lbl_803E2384:
	.incbin "baserom.dol", 0x2EBCA4, 0x4
.global lbl_803E2388
lbl_803E2388:
	.incbin "baserom.dol", 0x2EBCA8, 0x4
.global lbl_803E238C
lbl_803E238C:
	.incbin "baserom.dol", 0x2EBCAC, 0x4
.global lbl_803E2390
lbl_803E2390:
	.incbin "baserom.dol", 0x2EBCB0, 0x4
.global lbl_803E2394
lbl_803E2394:
	.incbin "baserom.dol", 0x2EBCB4, 0x4
.global lbl_803E2398
lbl_803E2398:
	.incbin "baserom.dol", 0x2EBCB8, 0x4
.global lbl_803E239C
lbl_803E239C:
	.incbin "baserom.dol", 0x2EBCBC, 0x4
.global lbl_803E23A0
lbl_803E23A0:
	.incbin "baserom.dol", 0x2EBCC0, 0x4
.global lbl_803E23A4
lbl_803E23A4:
	.incbin "baserom.dol", 0x2EBCC4, 0x4
.global lbl_803E23A8
lbl_803E23A8:
	.incbin "baserom.dol", 0x2EBCC8, 0x4
.global lbl_803E23AC
lbl_803E23AC:
	.incbin "baserom.dol", 0x2EBCCC, 0x4
.global lbl_803E23B0
lbl_803E23B0:
	.incbin "baserom.dol", 0x2EBCD0, 0x4
.global lbl_803E23B4
lbl_803E23B4:
	.incbin "baserom.dol", 0x2EBCD4, 0x4
.global lbl_803E23B8
lbl_803E23B8:
	.incbin "baserom.dol", 0x2EBCD8, 0x4
.global lbl_803E23BC
lbl_803E23BC:
	.incbin "baserom.dol", 0x2EBCDC, 0x4
.global lbl_803E23C0
lbl_803E23C0:
	.incbin "baserom.dol", 0x2EBCE0, 0x4
.global lbl_803E23C4
lbl_803E23C4:
	.incbin "baserom.dol", 0x2EBCE4, 0x4
.global lbl_803E23C8
lbl_803E23C8:
	.incbin "baserom.dol", 0x2EBCE8, 0x4
.global lbl_803E23CC
lbl_803E23CC:
	.incbin "baserom.dol", 0x2EBCEC, 0x4
.global lbl_803E23D0
lbl_803E23D0:
	.incbin "baserom.dol", 0x2EBCF0, 0x4
.global lbl_803E23D4
lbl_803E23D4:
	.incbin "baserom.dol", 0x2EBCF4, 0x4
.global lbl_803E23D8
lbl_803E23D8:
	.incbin "baserom.dol", 0x2EBCF8, 0x4
.global lbl_803E23DC
lbl_803E23DC:
	.incbin "baserom.dol", 0x2EBCFC, 0x4
.global lbl_803E23E0
lbl_803E23E0:
	.incbin "baserom.dol", 0x2EBD00, 0x4
.global lbl_803E23E4
lbl_803E23E4:
	.incbin "baserom.dol", 0x2EBD04, 0x4
.global lbl_803E23E8
lbl_803E23E8:
	.incbin "baserom.dol", 0x2EBD08, 0x4
.global lbl_803E23EC
lbl_803E23EC:
	.incbin "baserom.dol", 0x2EBD0C, 0x4
.global lbl_803E23F0
lbl_803E23F0:
	.incbin "baserom.dol", 0x2EBD10, 0x4
.global lbl_803E23F4
lbl_803E23F4:
	.incbin "baserom.dol", 0x2EBD14, 0x4
.global lbl_803E23F8
lbl_803E23F8:
	.incbin "baserom.dol", 0x2EBD18, 0x4
.global lbl_803E23FC
lbl_803E23FC:
	.incbin "baserom.dol", 0x2EBD1C, 0x4
.global lbl_803E2400
lbl_803E2400:
	.incbin "baserom.dol", 0x2EBD20, 0x4
.global lbl_803E2404
lbl_803E2404:
	.incbin "baserom.dol", 0x2EBD24, 0x4
.global lbl_803E2408
lbl_803E2408:
	.incbin "baserom.dol", 0x2EBD28, 0x4
.global lbl_803E240C
lbl_803E240C:
	.incbin "baserom.dol", 0x2EBD2C, 0x4
.global lbl_803E2410
lbl_803E2410:
	.incbin "baserom.dol", 0x2EBD30, 0x4
.global lbl_803E2414
lbl_803E2414:
	.incbin "baserom.dol", 0x2EBD34, 0x4
.global lbl_803E2418
lbl_803E2418:
	.incbin "baserom.dol", 0x2EBD38, 0x4
.global lbl_803E241C
lbl_803E241C:
	.incbin "baserom.dol", 0x2EBD3C, 0x4
.global lbl_803E2420
lbl_803E2420:
	.incbin "baserom.dol", 0x2EBD40, 0x4
.global lbl_803E2424
lbl_803E2424:
	.incbin "baserom.dol", 0x2EBD44, 0x4
.global lbl_803E2428
lbl_803E2428:
	.incbin "baserom.dol", 0x2EBD48, 0x4
.global lbl_803E242C
lbl_803E242C:
	.incbin "baserom.dol", 0x2EBD4C, 0x4
.global lbl_803E2430
lbl_803E2430:
	.incbin "baserom.dol", 0x2EBD50, 0x4
.global lbl_803E2434
lbl_803E2434:
	.incbin "baserom.dol", 0x2EBD54, 0x4
.global lbl_803E2438
lbl_803E2438:
	.incbin "baserom.dol", 0x2EBD58, 0x4
.global lbl_803E243C
lbl_803E243C:
	.incbin "baserom.dol", 0x2EBD5C, 0x4
.global lbl_803E2440
lbl_803E2440:
	.incbin "baserom.dol", 0x2EBD60, 0x4
.global lbl_803E2444
lbl_803E2444:
	.incbin "baserom.dol", 0x2EBD64, 0x4
.global lbl_803E2448
lbl_803E2448:
	.incbin "baserom.dol", 0x2EBD68, 0x4
.global lbl_803E244C
lbl_803E244C:
	.incbin "baserom.dol", 0x2EBD6C, 0x4
.global lbl_803E2450
lbl_803E2450:
	.incbin "baserom.dol", 0x2EBD70, 0x4
.global lbl_803E2454
lbl_803E2454:
	.incbin "baserom.dol", 0x2EBD74, 0x4
.global lbl_803E2458
lbl_803E2458:
	.incbin "baserom.dol", 0x2EBD78, 0x4
.global lbl_803E245C
lbl_803E245C:
	.incbin "baserom.dol", 0x2EBD7C, 0x4
.global lbl_803E2460
lbl_803E2460:
	.incbin "baserom.dol", 0x2EBD80, 0x4
.global lbl_803E2464
lbl_803E2464:
	.incbin "baserom.dol", 0x2EBD84, 0x4
.global lbl_803E2468
lbl_803E2468:
	.incbin "baserom.dol", 0x2EBD88, 0x4
.global lbl_803E246C
lbl_803E246C:
	.incbin "baserom.dol", 0x2EBD8C, 0x4
.global lbl_803E2470
lbl_803E2470:
	.incbin "baserom.dol", 0x2EBD90, 0x4
.global lbl_803E2474
lbl_803E2474:
	.incbin "baserom.dol", 0x2EBD94, 0x4
.global lbl_803E2478
lbl_803E2478:
	.incbin "baserom.dol", 0x2EBD98, 0x4
.global lbl_803E247C
lbl_803E247C:
	.incbin "baserom.dol", 0x2EBD9C, 0x4
.global lbl_803E2480
lbl_803E2480:
	.incbin "baserom.dol", 0x2EBDA0, 0x4
.global lbl_803E2484
lbl_803E2484:
	.incbin "baserom.dol", 0x2EBDA4, 0x4
.global lbl_803E2488
lbl_803E2488:
	.incbin "baserom.dol", 0x2EBDA8, 0x4
.global lbl_803E248C
lbl_803E248C:
	.incbin "baserom.dol", 0x2EBDAC, 0x4
.global lbl_803E2490
lbl_803E2490:
	.incbin "baserom.dol", 0x2EBDB0, 0x4
.global lbl_803E2494
lbl_803E2494:
	.incbin "baserom.dol", 0x2EBDB4, 0x4
.global lbl_803E2498
lbl_803E2498:
	.incbin "baserom.dol", 0x2EBDB8, 0x4
.global lbl_803E249C
lbl_803E249C:
	.incbin "baserom.dol", 0x2EBDBC, 0x4
.global lbl_803E24A0
lbl_803E24A0:
	.incbin "baserom.dol", 0x2EBDC0, 0x4
.global lbl_803E24A4
lbl_803E24A4:
	.incbin "baserom.dol", 0x2EBDC4, 0x4
.global lbl_803E24A8
lbl_803E24A8:
	.incbin "baserom.dol", 0x2EBDC8, 0x4
.global lbl_803E24AC
lbl_803E24AC:
	.incbin "baserom.dol", 0x2EBDCC, 0x4
.global lbl_803E24B0
lbl_803E24B0:
	.incbin "baserom.dol", 0x2EBDD0, 0x4
.global lbl_803E24B4
lbl_803E24B4:
	.incbin "baserom.dol", 0x2EBDD4, 0x4
.global lbl_803E24B8
lbl_803E24B8:
	.incbin "baserom.dol", 0x2EBDD8, 0x4
.global lbl_803E24BC
lbl_803E24BC:
	.incbin "baserom.dol", 0x2EBDDC, 0x4
.global lbl_803E24C0
lbl_803E24C0:
	.incbin "baserom.dol", 0x2EBDE0, 0x4
.global lbl_803E24C4
lbl_803E24C4:
	.incbin "baserom.dol", 0x2EBDE4, 0x4
.global lbl_803E24C8
lbl_803E24C8:
	.incbin "baserom.dol", 0x2EBDE8, 0x4
.global lbl_803E24CC
lbl_803E24CC:
	.incbin "baserom.dol", 0x2EBDEC, 0x4
.global lbl_803E24D0
lbl_803E24D0:
	.incbin "baserom.dol", 0x2EBDF0, 0x4
.global lbl_803E24D4
lbl_803E24D4:
	.incbin "baserom.dol", 0x2EBDF4, 0x4
.global lbl_803E24D8
lbl_803E24D8:
	.incbin "baserom.dol", 0x2EBDF8, 0x4
.global lbl_803E24DC
lbl_803E24DC:
	.incbin "baserom.dol", 0x2EBDFC, 0x4
.global lbl_803E24E0
lbl_803E24E0:
	.incbin "baserom.dol", 0x2EBE00, 0x4
.global lbl_803E24E4
lbl_803E24E4:
	.incbin "baserom.dol", 0x2EBE04, 0x4
.global lbl_803E24E8
lbl_803E24E8:
	.incbin "baserom.dol", 0x2EBE08, 0x4
.global lbl_803E24EC
lbl_803E24EC:
	.incbin "baserom.dol", 0x2EBE0C, 0x4
.global lbl_803E24F0
lbl_803E24F0:
	.incbin "baserom.dol", 0x2EBE10, 0x4
.global lbl_803E24F4
lbl_803E24F4:
	.incbin "baserom.dol", 0x2EBE14, 0x4
.global lbl_803E24F8
lbl_803E24F8:
	.incbin "baserom.dol", 0x2EBE18, 0x4
.global lbl_803E24FC
lbl_803E24FC:
	.incbin "baserom.dol", 0x2EBE1C, 0x4
.global lbl_803E2500
lbl_803E2500:
	.incbin "baserom.dol", 0x2EBE20, 0x4
.global lbl_803E2504
lbl_803E2504:
	.incbin "baserom.dol", 0x2EBE24, 0x4
.global lbl_803E2508
lbl_803E2508:
	.incbin "baserom.dol", 0x2EBE28, 0x4
.global lbl_803E250C
lbl_803E250C:
	.incbin "baserom.dol", 0x2EBE2C, 0x4
.global lbl_803E2510
lbl_803E2510:
	.incbin "baserom.dol", 0x2EBE30, 0x4
.global lbl_803E2514
lbl_803E2514:
	.incbin "baserom.dol", 0x2EBE34, 0x4
.global lbl_803E2518
lbl_803E2518:
	.incbin "baserom.dol", 0x2EBE38, 0x4
.global lbl_803E251C
lbl_803E251C:
	.incbin "baserom.dol", 0x2EBE3C, 0x4
.global lbl_803E2520
lbl_803E2520:
	.incbin "baserom.dol", 0x2EBE40, 0x4
.global lbl_803E2524
lbl_803E2524:
	.incbin "baserom.dol", 0x2EBE44, 0x4
.global lbl_803E2528
lbl_803E2528:
	.incbin "baserom.dol", 0x2EBE48, 0x4
.global lbl_803E252C
lbl_803E252C:
	.incbin "baserom.dol", 0x2EBE4C, 0x4
.global lbl_803E2530
lbl_803E2530:
	.incbin "baserom.dol", 0x2EBE50, 0x4
.global lbl_803E2534
lbl_803E2534:
	.incbin "baserom.dol", 0x2EBE54, 0x4
.global lbl_803E2538
lbl_803E2538:
	.incbin "baserom.dol", 0x2EBE58, 0x4
.global lbl_803E253C
lbl_803E253C:
	.incbin "baserom.dol", 0x2EBE5C, 0x4
.global lbl_803E2540
lbl_803E2540:
	.incbin "baserom.dol", 0x2EBE60, 0xC
.global __RTTI__13AState$$04Navi$$1
__RTTI__13AState$$04Navi$$1:
  .4byte 0x802c06c0
  .4byte 0x802c06d0
  .4byte 0x802c06dc
  .4byte 0x802c06e8
.global __RTTI__18NaviUfoAccessState
__RTTI__18NaviUfoAccessState:
  .4byte 0x802c069c
  .4byte 0x802c06fc
.global __RTTI__20NaviPartsAccessState
__RTTI__20NaviPartsAccessState:
  .4byte 0x802c076c
  .4byte 0x802c0784
.global __RTTI__17NaviStartingState
__RTTI__17NaviStartingState:
  .4byte 0x802c07f4
  .4byte 0x802c0808
.global __RTTI__17NaviPikiZeroState
__RTTI__17NaviPikiZeroState:
  .4byte 0x802c0878
  .4byte 0x802c088c
.global __RTTI__13NaviDeadState
__RTTI__13NaviDeadState:
  .4byte 0x802c08fc
  .4byte 0x802c090c
.global __RTTI__15NaviIroIroState
__RTTI__15NaviIroIroState:
  .4byte 0x802c097c
  .4byte 0x802c098c
.global __RTTI__14NaviClearState
__RTTI__14NaviClearState:
  .4byte 0x802c09fc
  .4byte 0x802c0a0c
.global __RTTI__13NaviLockState
__RTTI__13NaviLockState:
  .4byte 0x802c0a7c
  .4byte 0x802c0a8c
.global __RTTI__15NaviAttackState
__RTTI__15NaviAttackState:
  .4byte 0x802c0afc
  .4byte 0x802c0b0c
.global __RTTI__14NaviWaterState
__RTTI__14NaviWaterState:
  .4byte 0x802c0b7c
  .4byte 0x802c0b8c
.global __RTTI__12NaviSowState
__RTTI__12NaviSowState:
  .4byte 0x802c0bfc
  .4byte 0x802c0c0c
.global __RTTI__16NaviPressedState
__RTTI__16NaviPressedState:
  .4byte 0x802c0c7c
  .4byte 0x802c0c90
.global __RTTI__19NaviNukuAdjustState
__RTTI__19NaviNukuAdjustState:
  .4byte 0x802c0d00
  .4byte 0x802c0d14
.global __RTTI__13NaviNukuState
__RTTI__13NaviNukuState:
  .4byte 0x802c0d84
  .4byte 0x802c0d94
.global __RTTI__17NaviPushPikiState
__RTTI__17NaviPushPikiState:
  .4byte 0x802c0e04
  .4byte 0x802c0e18
.global __RTTI__13NaviPushState
__RTTI__13NaviPushState:
  .4byte 0x802c0e88
  .4byte 0x802c0e98
.global __RTTI__14NaviThrowState
__RTTI__14NaviThrowState:
  .4byte 0x802c0f08
  .4byte 0x802c0f18
.global __RTTI__18NaviThrowWaitState
__RTTI__18NaviThrowWaitState:
  .4byte 0x802c0f88
  .4byte 0x802c0f9c
.global __RTTI__16NaviReleaseState
__RTTI__16NaviReleaseState:
  .4byte 0x802c100c
  .4byte 0x802c1020
.global __RTTI__15NaviGatherState
__RTTI__15NaviGatherState:
  .4byte 0x802c1090
  .4byte 0x802c10a0
.global __RTTI__15NaviGeyzerState
__RTTI__15NaviGeyzerState:
  .4byte 0x802c1110
  .4byte 0x802c1120
.global __RTTI__14NaviFlickState
__RTTI__14NaviFlickState:
  .4byte 0x802c1190
  .4byte 0x802c11a0
.global __RTTI__13NaviIdleState
__RTTI__13NaviIdleState:
  .4byte 0x802c1210
  .4byte 0x802c1220
.global __RTTI__16NaviFunbariState
__RTTI__16NaviFunbariState:
  .4byte 0x802c1290
  .4byte 0x802c12a4
.global __RTTI__17NaviRopeExitState
__RTTI__17NaviRopeExitState:
  .4byte 0x802c1314
  .4byte 0x802c1328
.global __RTTI__13NaviRopeState
__RTTI__13NaviRopeState:
  .4byte 0x802c1398
  .4byte 0x802c13a8
.global __RTTI__13NaviPickState
__RTTI__13NaviPickState:
  .4byte 0x802c1418
  .4byte 0x802c1428
.global __RTTI__Q25GmWin13CloseListener
__RTTI__Q25GmWin13CloseListener:
  .4byte 0x802c14ac
  .4byte 0
.global __RTTI__Q212ContainerWin8Listener
__RTTI__Q212ContainerWin8Listener:
  .4byte 0x802c14c4
  .4byte 0
.global __RTTI__18NaviContainerState
__RTTI__18NaviContainerState:
  .4byte 0x802c1498
  .4byte 0x802c14dc
.global __RTTI__12NaviUfoState
__RTTI__12NaviUfoState:
  .4byte 0x802c1594
  .4byte 0x802c15a4
.global __RTTI__13NaviWalkState
__RTTI__13NaviWalkState:
  .4byte 0x802c1614
  .4byte 0x802c1624
.global __RTTI__13NaviBuryState
__RTTI__13NaviBuryState:
  .4byte 0x802c1694
  .4byte 0x802c16a4
.global __RTTI__14NaviStuckState
__RTTI__14NaviStuckState:
  .4byte 0x802c174c
  .4byte 0x802c175c
.global __RTTI__16NaviDemoInfState
__RTTI__16NaviDemoInfState:
  .4byte 0x802c17cc
  .4byte 0x802c17e0
.global __RTTI__17NaviDemoWaitState
__RTTI__17NaviDemoWaitState:
  .4byte 0x802c1850
  .4byte 0x802c1864
.global __RTTI__15NaviPelletState
__RTTI__15NaviPelletState:
  .4byte 0x802c18d4
  .4byte 0x802c18e4
.global __RTTI__19StateMachine$$04Navi$$1_1
__RTTI__19StateMachine$$04Navi$$1_1:
  .4byte 0x802c1a44
  .4byte 0
.global __RTTI__16NaviStateMachine
__RTTI__16NaviStateMachine:
  .4byte 0x802c1a30
  .4byte 0x802c1a58
  .4byte 0
.global lbl_803E2698
lbl_803E2698:
	.incbin "baserom.dol", 0x2EBFB8, 0x4
.global lbl_803E269C
lbl_803E269C:
	.incbin "baserom.dol", 0x2EBFBC, 0x4
.global lbl_803E26A0
lbl_803E26A0:
	.incbin "baserom.dol", 0x2EBFC0, 0x4
.global lbl_803E26A4
lbl_803E26A4:
	.incbin "baserom.dol", 0x2EBFC4, 0x4
.global lbl_803E26A8
lbl_803E26A8:
	.incbin "baserom.dol", 0x2EBFC8, 0x4
.global lbl_803E26AC
lbl_803E26AC:
	.incbin "baserom.dol", 0x2EBFCC, 0x4
.global lbl_803E26B0
lbl_803E26B0:
	.incbin "baserom.dol", 0x2EBFD0, 0x4
.global lbl_803E26B4
lbl_803E26B4:
	.incbin "baserom.dol", 0x2EBFD4, 0x4
.global lbl_803E26B8
lbl_803E26B8:
	.incbin "baserom.dol", 0x2EBFD8, 0x4
.global lbl_803E26BC
lbl_803E26BC:
	.incbin "baserom.dol", 0x2EBFDC, 0x4
.global lbl_803E26C0
lbl_803E26C0:
	.incbin "baserom.dol", 0x2EBFE0, 0x4
.global lbl_803E26C4
lbl_803E26C4:
	.incbin "baserom.dol", 0x2EBFE4, 0x4
.global lbl_803E26C8
lbl_803E26C8:
	.incbin "baserom.dol", 0x2EBFE8, 0x4
.global lbl_803E26CC
lbl_803E26CC:
	.incbin "baserom.dol", 0x2EBFEC, 0x4
.global lbl_803E26D0
lbl_803E26D0:
	.incbin "baserom.dol", 0x2EBFF0, 0xC
.global __RTTI__13AState$$04Navi$$1_1
__RTTI__13AState$$04Navi$$1_1:
  .4byte 0x802c1b34
  .4byte 0x802c1b44
  .4byte 0x802c1b50
  .4byte 0x802c1b5c
.global __RTTI__19NaviDemoSunsetState
__RTTI__19NaviDemoSunsetState:
  .4byte 0x802c1b10
  .4byte 0x802c1b70
.global __RTTI__35StateMachine$$019NaviDemoSunsetState$$1
__RTTI__35StateMachine$$019NaviDemoSunsetState$$1:
  .4byte 0x802c1be0
  .4byte 0
.global __RTTI__31Receiver$$019NaviDemoSunsetState$$1
__RTTI__31Receiver$$019NaviDemoSunsetState$$1:
  .4byte 0x802c1d18
  .4byte 0
.global __RTTI__29AState$$019NaviDemoSunsetState$$1
__RTTI__29AState$$019NaviDemoSunsetState$$1:
  .4byte 0x802c1d38
  .4byte 0x802c1d54
.global __RTTI__Q219NaviDemoSunsetState9DemoState
__RTTI__Q219NaviDemoSunsetState9DemoState:
  .4byte 0x802c1d60
  .4byte 0x802c1d80
.global __RTTI__Q219NaviDemoSunsetState8SitState
__RTTI__Q219NaviDemoSunsetState8SitState:
  .4byte 0x802c1cf8
  .4byte 0x802c1d94
.global __RTTI__Q219NaviDemoSunsetState9WaitState
__RTTI__Q219NaviDemoSunsetState9WaitState:
  .4byte 0x802c1e00
  .4byte 0x802c1e20
.global __RTTI__Q219NaviDemoSunsetState12WhistleState
__RTTI__Q219NaviDemoSunsetState12WhistleState:
  .4byte 0x802c1e8c
  .4byte 0x802c1eb0
.global __RTTI__Q219NaviDemoSunsetState9LookState
__RTTI__Q219NaviDemoSunsetState9LookState:
  .4byte 0x802c1f1c
  .4byte 0x802c1f3c
.global __RTTI__Q219NaviDemoSunsetState7GoState
__RTTI__Q219NaviDemoSunsetState7GoState:
  .4byte 0x802c1fa8
  .4byte 0x802c1fc8
.global __RTTI__Q219NaviDemoSunsetState16DemoStateMachine
__RTTI__Q219NaviDemoSunsetState16DemoStateMachine:
  .4byte 0x802c210c
  .4byte 0x802c2134
  .4byte 0
.global lbl_803E2748
lbl_803E2748:
	.incbin "baserom.dol", 0x2EC068, 0x4
.global lbl_803E274C
lbl_803E274C:
	.incbin "baserom.dol", 0x2EC06C, 0x4
.global lbl_803E2750
lbl_803E2750:
	.incbin "baserom.dol", 0x2EC070, 0x4
.global lbl_803E2754
lbl_803E2754:
	.incbin "baserom.dol", 0x2EC074, 0x4
.global lbl_803E2758
lbl_803E2758:
	.incbin "baserom.dol", 0x2EC078, 0x4
.global lbl_803E275C
lbl_803E275C:
	.incbin "baserom.dol", 0x2EC07C, 0x4
.global lbl_803E2760
lbl_803E2760:
	.incbin "baserom.dol", 0x2EC080, 0x4
.global lbl_803E2764
lbl_803E2764:
	.incbin "baserom.dol", 0x2EC084, 0x4
.global lbl_803E2768
lbl_803E2768:
	.incbin "baserom.dol", 0x2EC088, 0x4
.global lbl_803E276C
lbl_803E276C:
	.incbin "baserom.dol", 0x2EC08C, 0x4
.global lbl_803E2770
lbl_803E2770:
	.incbin "baserom.dol", 0x2EC090, 0x4
.global lbl_803E2774
lbl_803E2774:
	.incbin "baserom.dol", 0x2EC094, 0x4
.global lbl_803E2778
lbl_803E2778:
	.incbin "baserom.dol", 0x2EC098, 0x4
.global lbl_803E277C
lbl_803E277C:
	.incbin "baserom.dol", 0x2EC09C, 0x8
.global lbl_803E2784
lbl_803E2784:
	.incbin "baserom.dol", 0x2EC0A4, 0x8
.global lbl_803E278C
lbl_803E278C:
	.incbin "baserom.dol", 0x2EC0AC, 0x8
.global lbl_803E2794
lbl_803E2794:
	.incbin "baserom.dol", 0x2EC0B4, 0x8
.global lbl_803E279C
lbl_803E279C:
	.incbin "baserom.dol", 0x2EC0BC, 0x8
.global lbl_803E27A4
lbl_803E27A4:
	.incbin "baserom.dol", 0x2EC0C4, 0x8
.global lbl_803E27AC
lbl_803E27AC:
	.incbin "baserom.dol", 0x2EC0CC, 0x8
.global lbl_803E27B4
lbl_803E27B4:
	.incbin "baserom.dol", 0x2EC0D4, 0x8
.global lbl_803E27BC
lbl_803E27BC:
	.incbin "baserom.dol", 0x2EC0DC, 0x8
.global lbl_803E27C4
lbl_803E27C4:
	.incbin "baserom.dol", 0x2EC0E4, 0x8
.global lbl_803E27CC
lbl_803E27CC:
	.incbin "baserom.dol", 0x2EC0EC, 0x8
.global lbl_803E27D4
lbl_803E27D4:
	.incbin "baserom.dol", 0x2EC0F4, 0x4
.global lbl_803E27D8
lbl_803E27D8:
	.incbin "baserom.dol", 0x2EC0F8, 0x8
.global lbl_803E27E0
lbl_803E27E0:
	.incbin "baserom.dol", 0x2EC100, 0x8
.global lbl_803E27E8
lbl_803E27E8:
	.incbin "baserom.dol", 0x2EC108, 0x8
.global lbl_803E27F0
lbl_803E27F0:
	.incbin "baserom.dol", 0x2EC110, 0x8
.global lbl_803E27F8
lbl_803E27F8:
	.incbin "baserom.dol", 0x2EC118, 0x8
.global lbl_803E2800
lbl_803E2800:
	.incbin "baserom.dol", 0x2EC120, 0x8
.global lbl_803E2808
lbl_803E2808:
	.incbin "baserom.dol", 0x2EC128, 0x8
.global lbl_803E2810
lbl_803E2810:
	.incbin "baserom.dol", 0x2EC130, 0x8
.global lbl_803E2818
lbl_803E2818:
	.incbin "baserom.dol", 0x2EC138, 0x38
.global __RTTI__15GameCoreSection
__RTTI__15GameCoreSection:
  .4byte 0x802c241c
  .4byte 0x802c2458
.global lbl_803E2858
lbl_803E2858:
	.incbin "baserom.dol", 0x2EC178, 0x8
.global lbl_803E2860
lbl_803E2860:
	.incbin "baserom.dol", 0x2EC180, 0x4
.global lbl_803E2864
lbl_803E2864:
	.incbin "baserom.dol", 0x2EC184, 0x4
.global lbl_803E2868
lbl_803E2868:
	.incbin "baserom.dol", 0x2EC188, 0x4
.global lbl_803E286C
lbl_803E286C:
	.incbin "baserom.dol", 0x2EC18C, 0x4
.global lbl_803E2870
lbl_803E2870:
	.incbin "baserom.dol", 0x2EC190, 0x4
.global lbl_803E2874
lbl_803E2874:
	.incbin "baserom.dol", 0x2EC194, 0x4
.global lbl_803E2878
lbl_803E2878:
	.incbin "baserom.dol", 0x2EC198, 0x4
.global lbl_803E287C
lbl_803E287C:
	.incbin "baserom.dol", 0x2EC19C, 0x4
.global lbl_803E2880
lbl_803E2880:
	.incbin "baserom.dol", 0x2EC1A0, 0x4
.global lbl_803E2884
lbl_803E2884:
	.incbin "baserom.dol", 0x2EC1A4, 0x4
.global lbl_803E2888
lbl_803E2888:
	.incbin "baserom.dol", 0x2EC1A8, 0x4
.global lbl_803E288C
lbl_803E288C:
	.incbin "baserom.dol", 0x2EC1AC, 0x4
.global lbl_803E2890
lbl_803E2890:
	.incbin "baserom.dol", 0x2EC1B0, 0x4
.global lbl_803E2894
lbl_803E2894:
	.incbin "baserom.dol", 0x2EC1B4, 0x4
.global lbl_803E2898
lbl_803E2898:
	.incbin "baserom.dol", 0x2EC1B8, 0x4
.global lbl_803E289C
lbl_803E289C:
	.incbin "baserom.dol", 0x2EC1BC, 0x4
.global lbl_803E28A0
lbl_803E28A0:
	.incbin "baserom.dol", 0x2EC1C0, 0x4
.global lbl_803E28A4
lbl_803E28A4:
	.incbin "baserom.dol", 0x2EC1C4, 0x4
.global lbl_803E28A8
lbl_803E28A8:
	.incbin "baserom.dol", 0x2EC1C8, 0x4
.global lbl_803E28AC
lbl_803E28AC:
	.incbin "baserom.dol", 0x2EC1CC, 0x4
.global lbl_803E28B0
lbl_803E28B0:
	.incbin "baserom.dol", 0x2EC1D0, 0x4
.global lbl_803E28B4
lbl_803E28B4:
	.incbin "baserom.dol", 0x2EC1D4, 0x4
.global lbl_803E28B8
lbl_803E28B8:
	.incbin "baserom.dol", 0x2EC1D8, 0x4
.global lbl_803E28BC
lbl_803E28BC:
	.incbin "baserom.dol", 0x2EC1DC, 0x24
.global __RTTI__7KEffect_1
__RTTI__7KEffect_1:
  .4byte 0x803e28d8
  .4byte 0x802c25b0
.global __RTTI__10BurnEffect
__RTTI__10BurnEffect:
  .4byte 0x802c2514
  .4byte 0x802c25cc
.global __RTTI__12RippleEffect
__RTTI__12RippleEffect:
  .4byte 0x802c262c
  .4byte 0x802c263c
.global __RTTI__15FreeLightEffect
__RTTI__15FreeLightEffect:
  .4byte 0x802c269c
  .4byte 0x802c26ac
.global __RTTI__16UfoSuikomiEffect
__RTTI__16UfoSuikomiEffect:
  .4byte 0x802c270c
  .4byte 0x802c2720
.global __RTTI__15WhistleTemplate
__RTTI__15WhistleTemplate:
  .4byte 0x802c2790
  .4byte 0x802c27a0
.global __RTTI__13UfoSuckEffect
__RTTI__13UfoSuckEffect:
  .4byte 0x802c2780
  .4byte 0x802c27c4
.global __RTTI__15BombEffectLight
__RTTI__15BombEffectLight:
  .4byte 0x802c2868
  .4byte 0x802c2878
.global __RTTI__10BombEffect
__RTTI__10BombEffect:
  .4byte 0x802c28d8
  .4byte 0x802c28e4
.global __RTTI__12SimpleEffect
__RTTI__12SimpleEffect:
  .4byte 0x802c2944
  .4byte 0x802c2954
  .4byte 0x4e617669
  .4byte 0x46756500
.global __RTTI__7NaviFue
__RTTI__7NaviFue:
  .4byte 0x803e2930
  .4byte 0x802c29b4
.global __RTTI__15SmokeTreeEffect
__RTTI__15SmokeTreeEffect:
  .4byte 0x802c2a14
  .4byte 0x802c2a24
.global __RTTI__15SmokeRockEffect
__RTTI__15SmokeRockEffect:
  .4byte 0x802c2a84
  .4byte 0x802c2a94
.global __RTTI__16SmokeGrassEffect
__RTTI__16SmokeGrassEffect:
  .4byte 0x802c2af4
  .4byte 0x802c2b08
.global __RTTI__15SmokeSoilEffect
__RTTI__15SmokeSoilEffect:
  .4byte 0x802c2b68
  .4byte 0x802c2b78
.global __RTTI__11NaviWhistle
__RTTI__11NaviWhistle:
  .4byte 0x802c2bd8
  .4byte 0x802c2be4
.global __RTTI__10GoalEffect
__RTTI__10GoalEffect:
  .4byte 0x802c2c44
  .4byte 0x802c2c50
.global __RTTI__11SlimeEffect
__RTTI__11SlimeEffect:
  .4byte 0x802c2cb0
  .4byte 0x802c2cbc
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e2978
  .4byte 0
  .4byte 0x802c2dac
  .4byte 0x802c2db8
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e2990
  .4byte 0x802c2dc4
.global __RTTI__10Controller_1
__RTTI__10Controller_1:
  .4byte 0x802c2dd8
  .4byte 0x802c2de4
.global __RTTI__10Kontroller
__RTTI__10Kontroller:
  .4byte 0x802c2d90
  .4byte 0x802c2e00
.global lbl_803E29B0
lbl_803E29B0:
	.incbin "baserom.dol", 0x2EC2D0, 0x4
.global lbl_803E29B4
lbl_803E29B4:
	.incbin "baserom.dol", 0x2EC2D4, 0x4
.global lbl_803E29B8
lbl_803E29B8:
	.incbin "baserom.dol", 0x2EC2D8, 0x4
.global lbl_803E29BC
lbl_803E29BC:
	.incbin "baserom.dol", 0x2EC2DC, 0x4
.global lbl_803E29C0
lbl_803E29C0:
	.incbin "baserom.dol", 0x2EC2E0, 0x4
.global lbl_803E29C4
lbl_803E29C4:
	.incbin "baserom.dol", 0x2EC2E4, 0x4
.global lbl_803E29C8
lbl_803E29C8:
	.incbin "baserom.dol", 0x2EC2E8, 0x4
.global lbl_803E29CC
lbl_803E29CC:
	.incbin "baserom.dol", 0x2EC2EC, 0x4
.global lbl_803E29D0
lbl_803E29D0:
	.incbin "baserom.dol", 0x2EC2F0, 0x50
.global __RTTI__7NaviMgr
__RTTI__7NaviMgr:
  .4byte 0x803e29d8
  .4byte 0x802c2fa4
.global lbl_803E2A28
lbl_803E2A28:
	.incbin "baserom.dol", 0x2EC348, 0x4
.global lbl_803E2A2C
lbl_803E2A2C:
	.incbin "baserom.dol", 0x2EC34C, 0x4
.global lbl_803E2A30
lbl_803E2A30:
	.incbin "baserom.dol", 0x2EC350, 0x4
.global lbl_803E2A34
lbl_803E2A34:
	.incbin "baserom.dol", 0x2EC354, 0x4
.global lbl_803E2A38
lbl_803E2A38:
	.incbin "baserom.dol", 0x2EC358, 0x4
.global lbl_803E2A3C
lbl_803E2A3C:
	.incbin "baserom.dol", 0x2EC35C, 0x4
.global numShapes
numShapes:
	.incbin "baserom.dol", 0x2EC360, 0x30
.global lbl_803E2A70
lbl_803E2A70:
	.incbin "baserom.dol", 0x2EC390, 0x4
.global lbl_803E2A74
lbl_803E2A74:
	.incbin "baserom.dol", 0x2EC394, 0x4
.global lbl_803E2A78
lbl_803E2A78:
	.incbin "baserom.dol", 0x2EC398, 0x4
.global lbl_803E2A7C
lbl_803E2A7C:
	.incbin "baserom.dol", 0x2EC39C, 0x4
.global lbl_803E2A80
lbl_803E2A80:
	.incbin "baserom.dol", 0x2EC3A0, 0x4
.global lbl_803E2A84
lbl_803E2A84:
	.incbin "baserom.dol", 0x2EC3A4, 0x4
.global lbl_803E2A88
lbl_803E2A88:
	.incbin "baserom.dol", 0x2EC3A8, 0x4
.global lbl_803E2A8C
lbl_803E2A8C:
	.incbin "baserom.dol", 0x2EC3AC, 0x4
.global lbl_803E2A90
lbl_803E2A90:
	.incbin "baserom.dol", 0x2EC3B0, 0x4
.global lbl_803E2A94
lbl_803E2A94:
	.incbin "baserom.dol", 0x2EC3B4, 0x4
.global lbl_803E2A98
lbl_803E2A98:
	.incbin "baserom.dol", 0x2EC3B8, 0x4
.global lbl_803E2A9C
lbl_803E2A9C:
	.incbin "baserom.dol", 0x2EC3BC, 0x4
.global lbl_803E2AA0
lbl_803E2AA0:
	.incbin "baserom.dol", 0x2EC3C0, 0x4
.global lbl_803E2AA4
lbl_803E2AA4:
	.incbin "baserom.dol", 0x2EC3C4, 0x4
.global lbl_803E2AA8
lbl_803E2AA8:
	.incbin "baserom.dol", 0x2EC3C8, 0x4
.global lbl_803E2AAC
lbl_803E2AAC:
	.incbin "baserom.dol", 0x2EC3CC, 0x4
.global lbl_803E2AB0
lbl_803E2AB0:
	.incbin "baserom.dol", 0x2EC3D0, 0x4
.global lbl_803E2AB4
lbl_803E2AB4:
	.incbin "baserom.dol", 0x2EC3D4, 0x4
.global lbl_803E2AB8
lbl_803E2AB8:
	.incbin "baserom.dol", 0x2EC3D8, 0x4
.global lbl_803E2ABC
lbl_803E2ABC:
	.incbin "baserom.dol", 0x2EC3DC, 0x4
.global lbl_803E2AC0
lbl_803E2AC0:
	.incbin "baserom.dol", 0x2EC3E0, 0x4
.global lbl_803E2AC4
lbl_803E2AC4:
	.incbin "baserom.dol", 0x2EC3E4, 0x4
.global lbl_803E2AC8
lbl_803E2AC8:
	.incbin "baserom.dol", 0x2EC3E8, 0x24
.global __RTTI__17GenObjectMapParts
__RTTI__17GenObjectMapParts:
  .4byte 0x802c30d0
  .4byte 0x802c311c
  .4byte 0x802c317c
  .4byte 0
  .4byte 0
.global lbl_803E2B00
lbl_803E2B00:
	.incbin "baserom.dol", 0x2EC420, 0x4
.global lbl_803E2B04
lbl_803E2B04:
	.incbin "baserom.dol", 0x2EC424, 0x4
.global lbl_803E2B08
lbl_803E2B08:
	.incbin "baserom.dol", 0x2EC428, 0x4
.global lbl_803E2B0C
lbl_803E2B0C:
	.incbin "baserom.dol", 0x2EC42C, 0x4
.global lbl_803E2B10
lbl_803E2B10:
	.incbin "baserom.dol", 0x2EC430, 0x4
.global lbl_803E2B14
lbl_803E2B14:
	.incbin "baserom.dol", 0x2EC434, 0x4
.global lbl_803E2B18
lbl_803E2B18:
	.incbin "baserom.dol", 0x2EC438, 0x4
.global lbl_803E2B1C
lbl_803E2B1C:
	.incbin "baserom.dol", 0x2EC43C, 0x4
.global lbl_803E2B20
lbl_803E2B20:
	.incbin "baserom.dol", 0x2EC440, 0x4
.global lbl_803E2B24
lbl_803E2B24:
	.incbin "baserom.dol", 0x2EC444, 0x4
.global lbl_803E2B28
lbl_803E2B28:
	.incbin "baserom.dol", 0x2EC448, 0x4
.global lbl_803E2B2C
lbl_803E2B2C:
	.incbin "baserom.dol", 0x2EC44C, 0x4
.global lbl_803E2B30
lbl_803E2B30:
	.incbin "baserom.dol", 0x2EC450, 0x34
.global __RTTI__12DynCollShape_3
__RTTI__12DynCollShape_3:
  .4byte 0x802c32c8
  .4byte 0x802c32d8
.global __RTTI__8MapParts
__RTTI__8MapParts:
  .4byte 0x802c32fc
  .4byte 0x802c3308
.global __RTTI__9MapSlider
__RTTI__9MapSlider:
  .4byte 0x802c3264
  .4byte 0x802c3334
.global __RTTI__9MapEntity
__RTTI__9MapEntity:
  .4byte 0x802c33b4
  .4byte 0x802c33c0
  .4byte 0
  .4byte 0x52554e00
  .4byte 0x4e494745
  .4byte 0x52550000
  .4byte 0x57414c4b
  .4byte 0
  .4byte 0x57414954
  .4byte 0
  .4byte 0x5049434b
  .4byte 0
  .4byte 0x4e554b55
  .4byte 0
  .4byte 0x44454144
  .4byte 0
  .4byte 0x44454144
  .4byte 0x32000000
  .4byte 0x44454144
  .4byte 0x33000000
  .4byte 0x44414d41
  .4byte 0x47450000
  .4byte 0x41534942
  .4byte 0x554d4900
  .4byte 0x4f434152
  .4byte 0x52590000
  .4byte 0x4c535542
  .4byte 0x45525500
  .4byte 0x52535542
  .4byte 0x45525500
  .4byte 0x4a4f4231
  .4byte 0
  .4byte 0x47524f57
  .4byte 0x55503100
  .4byte 0x47524f57
  .4byte 0x55503200
  .4byte 0x4a4f4232
  .4byte 0
  .4byte 0x4b4f524f
  .4byte 0x42550000
  .4byte 0x4a554d50
  .4byte 0
  .4byte 0x41545441
  .4byte 0x434b0000
  .4byte 0x50554e43
  .4byte 0x48000000
  .4byte 0x4b454e4b
  .4byte 0x41000000
  .4byte 0x5448524f
  .4byte 0x57000000
  .4byte 0x48414e47
  .4byte 0
  .4byte 0x46414c4c
  .4byte 0
  .4byte 0x4a4b4f4b
  .4byte 0x45000000
  .4byte 0x4a484954
  .4byte 0
  .4byte 0x47455455
  .4byte 0x50000000
  .4byte 0x4e45574a
  .4byte 0x4d500000
  .4byte 0x524f4c4c
  .4byte 0x4a4d5000
  .4byte 0x57415645
  .4byte 0x4a4d5000
  .4byte 0x50555348
  .4byte 0
  .4byte 0x554d4152
  .4byte 0x55000000
  .4byte 0x414b5542
  .4byte 0x49000000
  .4byte 0x52494e42
  .4byte 0x4f570000
  .4byte 0x49524149
  .4byte 0x52410000
  .4byte 0x4b414946
  .4byte 0x554b5500
  .4byte 0x4b495a55
  .4byte 0x4b550000
  .4byte 0x4b555454
  .4byte 0x554b5500
  .4byte 0x46554500
  .4byte 0x53555741
  .4byte 0x52550000
  .4byte 0x414f4755
  .4byte 0
  .4byte 0x4e455255
  .4byte 0
  .4byte 0x50524553
  .4byte 0x53310000
  .4byte 0x50524553
  .4byte 0x53320000
  .4byte 0x53505245
  .4byte 0x53530000
  .4byte 0x4f424f52
  .4byte 0x45525500
  .4byte 0x53495a55
  .4byte 0x4d550000
  .4byte 0x4f54494b
  .4byte 0x414b4500
  .4byte 0x4f544952
  .4byte 0x55000000
  .4byte 0x484e4f42
  .4byte 0x4f525500
  .4byte 0x4e4f424f
  .4byte 0x52550000
  .4byte 0x53414741
  .4byte 0x53553200
  .4byte 0x50756e63
  .4byte 0x68210000
  .4byte 0x4d4f4552
  .4byte 0x55000000
  .4byte 0x45534100
  .4byte 0x47415454
  .4byte 0x55000000
  .4byte 0x47414b4b
  .4byte 0x41524900
  .4byte 0x4f4b4f52
  .4byte 0x55000000
  .4byte 0x524f544a
  .4byte 0x554d5000
  .4byte 0x67776169
  .4byte 0x74310000
  .4byte 0x67776169
  .4byte 0x74320000
  .4byte 0x67667572
  .4byte 0x69310000
  .4byte 0x67667572
  .4byte 0x69320000
  .4byte 0x676e756b
  .4byte 0x65000000
  .4byte 0x6a756d70
  .4byte 0x20623100
  .4byte 0x6d697a75
  .4byte 0x61676500
  .4byte 0x73616761
  .4byte 0x73750000
  .4byte 0x6f737500
  .4byte 0x6e6f7275
  .4byte 0
  .4byte 0x6f646561
  .4byte 0x64000000
  .4byte 0x802c3768
  .4byte 0
  .4byte 0x802c3774
  .4byte 0x802c3784
.global __RTTI__16PaniPikiAnimator
__RTTI__16PaniPikiAnimator:
  .4byte 0x802c3754
  .4byte 0x802c3790
  .4byte 0x802c3818
  .4byte 0
  .4byte 0x47656e42
  .4byte 0x61736500
  .4byte 0x803e2dd8
  .4byte 0x802c3824
  .4byte 0x802c3830
  .4byte 0x802c383c
.global __RTTI__14GenObjectActor
__RTTI__14GenObjectActor:
  .4byte 0x802c3808
  .4byte 0x802c3850
.global lbl_803E2DF8
lbl_803E2DF8:
	.incbin "baserom.dol", 0x2EC718, 0x8
.global lbl_803E2E00
lbl_803E2E00:
	.incbin "baserom.dol", 0x2EC720, 0x8
.global lbl_803E2E08
lbl_803E2E08:
	.incbin "baserom.dol", 0x2EC728, 0x4
.global lbl_803E2E0C
lbl_803E2E0C:
	.incbin "baserom.dol", 0x2EC72C, 0x4
.global lbl_803E2E10
lbl_803E2E10:
	.incbin "baserom.dol", 0x2EC730, 0x4
.global lbl_803E2E14
lbl_803E2E14:
	.incbin "baserom.dol", 0x2EC734, 0x4
.global lbl_803E2E18
lbl_803E2E18:
	.incbin "baserom.dol", 0x2EC738, 0x3C
.global lbl_803E2E54
lbl_803E2E54:
	.incbin "baserom.dol", 0x2EC774, 0x4
.global lbl_803E2E58
lbl_803E2E58:
	.incbin "baserom.dol", 0x2EC778, 0x28
.global __RTTI__14GenObjectPlant
__RTTI__14GenObjectPlant:
  .4byte 0x802c3994
  .4byte 0x802c39dc
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e2e88
  .4byte 0
  .4byte lbl_802C38C4
  .4byte 0x802c3a3c
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e2ea0
  .4byte 0x802c3a48
  .4byte 0x802c3a5c
  .4byte 0
  .4byte 0x802c3a68
  .4byte 0x802c3a74
.global __RTTI__15CreatureNodeMgr_2
__RTTI__15CreatureNodeMgr_2:
  .4byte 0x802c3a98
  .4byte 0x802c3aa8
.global __RTTI__8PlantMgr
__RTTI__8PlantMgr:
  .4byte 0x802c3a30
  .4byte 0x802c3ad4
  .4byte 0x802c3b90
  .4byte 0
.global __RTTI__Q28PlantMgr7UseNode
__RTTI__Q28PlantMgr7UseNode:
  .4byte 0x802c3bd8
  .4byte 0x802c3bec
.global __RTTI__9SAIAction_1
__RTTI__9SAIAction_1:
  .4byte 0x802c3c70
  .4byte 0
.global __RTTI__Q27PlantAI9TouchInit
__RTTI__Q27PlantAI9TouchInit:
  .4byte 0x802c3c5c
  .4byte 0x802c3c7c
.global __RTTI__Q27PlantAI8WaitInit
__RTTI__Q27PlantAI8WaitInit:
  .4byte 0x802c3c94
  .4byte 0x802c3ca8
.global __RTTI__12SAICondition_2
__RTTI__12SAICondition_2:
  .4byte 0x802c3cd8
  .4byte 0x802c3ce8
.global __RTTI__Q27PlantAI12OpponentMove
__RTTI__Q27PlantAI12OpponentMove:
  .4byte 0x802c3cc0
  .4byte 0x802c3cfc
  .4byte 0x506c616e
  .4byte 0x74414900
.global __RTTI__26StateMachine$$010AICreature$$1_2
__RTTI__26StateMachine$$010AICreature$$1_2:
  .4byte 0x802c3d68
  .4byte 0
.global __RTTI__8SimpleAI_2
__RTTI__8SimpleAI_2:
  .4byte 0x802c3d84
  .4byte 0x802c3d90
.global __RTTI__7PlantAI
__RTTI__7PlantAI:
  .4byte 0x803e2f08
  .4byte 0x802c3d9c
  .4byte 0x506c616e
  .4byte 0x74000000
  .4byte 0x802c3dc8
  .4byte 0
  .4byte 0x802c3ddc
  .4byte 0
  .4byte 0x802c3de8
  .4byte 0
  .4byte 0x802c3df8
  .4byte 0x802c3e04
  .4byte 0x802c3e18
  .4byte 0x802c3e24
.global __RTTI__5Plant
__RTTI__5Plant:
  .4byte 0x803e2f28
  .4byte 0x802c3e48
  .4byte 0x31000000
  .4byte 0x32000000
  .4byte 0x33000000
  .4byte 0x34000000
  .4byte 0x35000000
  .4byte 0x36000000
  .4byte 0x37000000
  .4byte 0x802c402c
  .4byte 0
  .4byte 0x802c4038
  .4byte 0x802c4048
.global __RTTI__17PaniPlantAnimator
__RTTI__17PaniPlantAnimator:
  .4byte 0x802c4018
  .4byte 0x802c4054
  .4byte 0
  .4byte 0x802c40c8
  .4byte 0
  .4byte 0x47656e42
  .4byte 0x61736500
  .4byte 0x803e2fa0
  .4byte 0x802c40d4
  .4byte 0x802c40e0
  .4byte 0x802c40ec
.global __RTTI__13GenObjectTeki
__RTTI__13GenObjectTeki:
  .4byte 0x802c40b8
  .4byte 0x802c4100
.global __RTTI__9NFunction
__RTTI__9NFunction:
  .4byte 0x802c4190
  .4byte 0
.global __RTTI__18NVibrationFunction
__RTTI__18NVibrationFunction:
  .4byte 0x802c417c
  .4byte 0x802c419c
.global __RTTI__19NPolynomialFunction
__RTTI__19NPolynomialFunction:
  .4byte 0x802c41cc
  .4byte 0x802c41e0
.global __RTTI__15NLinearFunction
__RTTI__15NLinearFunction:
  .4byte 0x802c41ec
  .4byte 0x802c41fc
.global __RTTI__20NClampLinearFunction
__RTTI__20NClampLinearFunction:
  .4byte 0x802c41b4
  .4byte 0x802c4210
.global lbl_803E2FE8
lbl_803E2FE8:
	.incbin "baserom.dol", 0x2EC908, 0x4
.global lbl_803E2FEC
lbl_803E2FEC:
	.incbin "baserom.dol", 0x2EC90C, 0x4
.global lbl_803E2FF0
lbl_803E2FF0:
	.incbin "baserom.dol", 0x2EC910, 0xC
.global __RTTI__6NAlpha
__RTTI__6NAlpha:
  .4byte 0x803e2ff4
  .4byte 0
.global __RTTI__14NSpecialMatrix
__RTTI__14NSpecialMatrix:
  .4byte 0x802c42a4
  .4byte 0
.global __RTTI__8LUMatrix
__RTTI__8LUMatrix:
  .4byte 0x802c4298
  .4byte 0x802c42b4
.global __RTTI__12NUpperMatrix
__RTTI__12NUpperMatrix:
  .4byte 0x802c42cc
  .4byte 0x802c42dc
.global __RTTI__12NLowerMatrix
__RTTI__12NLowerMatrix:
  .4byte 0x802c42f4
  .4byte 0x802c4304
.global __RTTI__10NPosture3D
__RTTI__10NPosture3D:
  .4byte 0x802c4328
  .4byte 0
.global __RTTI__10NPosture2D
__RTTI__10NPosture2D:
  .4byte 0x802c4340
  .4byte 0
  .4byte 0
  .4byte 0x4e4c696e
  .4byte 0x65000000
.global __RTTI__5NLine
__RTTI__5NLine:
  .4byte 0x803e3038
  .4byte 0
  .4byte 0x4e506c61
  .4byte 0x6e650000
.global __RTTI__6NPlane
__RTTI__6NPlane:
  .4byte 0x803e3048
  .4byte 0
.global lbl_803E3058
lbl_803E3058:
	.incbin "baserom.dol", 0x2EC978, 0x4
.global lbl_803E305C
lbl_803E305C:
	.incbin "baserom.dol", 0x2EC97C, 0x4
.global lbl_803E3060
lbl_803E3060:
	.incbin "baserom.dol", 0x2EC980, 0x4
.global lbl_803E3064
lbl_803E3064:
	.incbin "baserom.dol", 0x2EC984, 0x4
.global lbl_803E3068
lbl_803E3068:
	.incbin "baserom.dol", 0x2EC988, 0x4
.global lbl_803E306C
lbl_803E306C:
	.incbin "baserom.dol", 0x2EC98C, 0x4
.global error__6NMathF
error__6NMathF:
	.incbin "baserom.dol", 0x2EC990, 0x4
.global degreePerRadian__6NMathF
degreePerRadian__6NMathF:
	.incbin "baserom.dol", 0x2EC994, 0x4
.global radianPerDegree__6NMathF
radianPerDegree__6NMathF:
	.incbin "baserom.dol", 0x2EC998, 0x4
.global pi__6NMathF
pi__6NMathF:
	.incbin "baserom.dol", 0x2EC99C, 0xC
.global __RTTI__5NHeap
__RTTI__5NHeap:
  .4byte 0x803e3080
  .4byte 0
.global __RTTI__14NArray$$05NHeap$$1
__RTTI__14NArray$$05NHeap$$1:
  .4byte 0x802c4bc4
  .4byte 0
  .4byte 0x4e4e6f64
  .4byte 0x65000000
  .4byte 0x803e3098
  .4byte 0
.global __RTTI__14NArray$$05NNode$$1
__RTTI__14NArray$$05NNode$$1:
  .4byte 0x802c4c34
  .4byte 0
  .4byte 0x802c4d1c
  .4byte 0
  .4byte 0x802c4d0c
  .4byte 0x802c4d28
  .4byte 0x44454144
  .4byte 0
  .4byte 0x44414d41
  .4byte 0x47450000
  .4byte 0x57414954
  .4byte 0x5f310000
  .4byte 0x57414954
  .4byte 0x5f320000
  .4byte 0x4d4f5645
  .4byte 0x5f310000
  .4byte 0x4d4f5645
  .4byte 0x5f320000
  .4byte 0x41545441
  .4byte 0x434b0000
  .4byte 0x464c4943
  .4byte 0x4b000000
  .4byte 0x54595045
  .4byte 0x5f310000
  .4byte 0x54595045
  .4byte 0x5f320000
  .4byte 0x54595045
  .4byte 0x5f330000
  .4byte 0x54595045
  .4byte 0x5f340000
  .4byte 0x54595045
  .4byte 0x5f350000
  .4byte 0x802c4dec
  .4byte 0
  .4byte 0x802c4df8
  .4byte 0x802c4e08
.global __RTTI__16PaniTekiAnimator
__RTTI__16PaniTekiAnimator:
  .4byte 0x802c4dd8
  .4byte 0x802c4e14
.global lbl_803E3140
lbl_803E3140:
	.incbin "baserom.dol", 0x2ECA60, 0x4
.global lbl_803E3144
lbl_803E3144:
	.incbin "baserom.dol", 0x2ECA64, 0x4
.global lbl_803E3148
lbl_803E3148:
	.incbin "baserom.dol", 0x2ECA68, 0x4
.global lbl_803E314C
lbl_803E314C:
	.incbin "baserom.dol", 0x2ECA6C, 0x4
.global lbl_803E3150
lbl_803E3150:
	.incbin "baserom.dol", 0x2ECA70, 0x4
.global lbl_803E3154
lbl_803E3154:
	.incbin "baserom.dol", 0x2ECA74, 0x4
.global lbl_803E3158
lbl_803E3158:
	.incbin "baserom.dol", 0x2ECA78, 0x4
.global lbl_803E315C
lbl_803E315C:
	.incbin "baserom.dol", 0x2ECA7C, 0x4
.global lbl_803E3160
lbl_803E3160:
	.incbin "baserom.dol", 0x2ECA80, 0x4
.global lbl_803E3164
lbl_803E3164:
	.incbin "baserom.dol", 0x2ECA84, 0x4
.global lbl_803E3168
lbl_803E3168:
	.incbin "baserom.dol", 0x2ECA88, 0x4
.global lbl_803E316C
lbl_803E316C:
	.incbin "baserom.dol", 0x2ECA8C, 0x4
.global lbl_803E3170
lbl_803E3170:
	.incbin "baserom.dol", 0x2ECA90, 0x4
.global lbl_803E3174
lbl_803E3174:
	.incbin "baserom.dol", 0x2ECA94, 0x4
.global lbl_803E3178
lbl_803E3178:
	.incbin "baserom.dol", 0x2ECA98, 0x4
.global lbl_803E317C
lbl_803E317C:
	.incbin "baserom.dol", 0x2ECA9C, 0x4
.global lbl_803E3180
lbl_803E3180:
	.incbin "baserom.dol", 0x2ECAA0, 0x4
.global lbl_803E3184
lbl_803E3184:
	.incbin "baserom.dol", 0x2ECAA4, 0x4
.global lbl_803E3188
lbl_803E3188:
	.incbin "baserom.dol", 0x2ECAA8, 0x8
.global lbl_803E3190
lbl_803E3190:
	.incbin "baserom.dol", 0x2ECAB0, 0x8
.global lbl_803E3198
lbl_803E3198:
	.incbin "baserom.dol", 0x2ECAB8, 0x8
.global lbl_803E31A0
lbl_803E31A0:
	.incbin "baserom.dol", 0x2ECAC0, 0x4
.global lbl_803E31A4
lbl_803E31A4:
	.incbin "baserom.dol", 0x2ECAC4, 0x4
.global lbl_803E31A8
lbl_803E31A8:
	.incbin "baserom.dol", 0x2ECAC8, 0x4
.global lbl_803E31AC
lbl_803E31AC:
	.incbin "baserom.dol", 0x2ECACC, 0x4
.global lbl_803E31B0
lbl_803E31B0:
	.incbin "baserom.dol", 0x2ECAD0, 0x40
.global __RTTI__15PaniTestSection
__RTTI__15PaniTestSection:
  .4byte 0x802c4f24
  .4byte 0x802c4f7c
  .4byte 0x802c4fd4
  .4byte 0
.global __RTTI__12PaniTestNode
__RTTI__12PaniTestNode:
  .4byte 0x802c4e6c
  .4byte 0x802c4fe8
.global __RTTI__19ParaMultiParameters
__RTTI__19ParaMultiParameters:
  .4byte 0x802c509c
  .4byte 0
.global __RTTI__17ParaParameters$$0f$$1
__RTTI__17ParaParameters$$0f$$1:
  .4byte 0x802c50d4
  .4byte 0
.global __RTTI__15ParaParametersF
__RTTI__15ParaParametersF:
  .4byte 0x802c50c4
  .4byte 0x802c50ec
.global __RTTI__17ParaParameters$$0i$$1
__RTTI__17ParaParameters$$0i$$1:
  .4byte 0x802c5130
  .4byte 0
.global __RTTI__15ParaParametersI
__RTTI__15ParaParametersI:
  .4byte 0x802c5120
  .4byte 0x802c5144
.global lbl_803E3230
lbl_803E3230:
	.incbin "baserom.dol", 0x2ECB50, 0x10
.global __RTTI__7NCamera
__RTTI__7NCamera:
  .4byte 0x803e3238
  .4byte 0
.global __RTTI__10PcamCamera
__RTTI__10PcamCamera:
  .4byte 0x802c51d0
  .4byte 0x802c51dc
.global __RTTI__17NArray$$08Creature$$1
__RTTI__17NArray$$08Creature$$1:
  .4byte 0x802c51f4
  .4byte 0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e3258
  .4byte 0
  .4byte 0x802c5288
  .4byte 0x802c5294
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e3270
  .4byte 0x802c52a0
.global __RTTI__17PcamCameraManager
__RTTI__17PcamCameraManager:
  .4byte lbl_802C5274
  .4byte 0x802c52b4
  .4byte 0x4e4e6f64
  .4byte 0x65000000
  .4byte 0x803e3288
  .4byte 0
  .4byte 0x802c5364
  .4byte 0x802c5370
.global __RTTI__22PcamSideVibrationEvent
__RTTI__22PcamSideVibrationEvent:
  .4byte 0x802c534c
  .4byte 0x802c537c
.global __RTTI__19PcamRandomMoveEvent
__RTTI__19PcamRandomMoveEvent:
  .4byte 0x802c53e4
  .4byte 0x802c53f8
  .4byte 0x802c5458
  .4byte 0x802c546c
.global __RTTI__15PcamDamageEvent
__RTTI__15PcamDamageEvent:
  .4byte 0x802c5448
  .4byte 0x802c5480
.global __RTTI__18PcamVibrationEvent
__RTTI__18PcamVibrationEvent:
  .4byte 0x802c54d8
  .4byte 0x802c54ec
.global __RTTI__15PeveSerialEvent
__RTTI__15PeveSerialEvent:
  .4byte 0x802c555c
  .4byte 0x802c556c
.global __RTTI__22PcamLongVibrationEvent
__RTTI__22PcamLongVibrationEvent:
  .4byte 0x802c5544
  .4byte 0x802c5580
.global lbl_803E32D8
lbl_803E32D8:
	.incbin "baserom.dol", 0x2ECBF8, 0x30
.global __RTTI__20PcamCameraParameters
__RTTI__20PcamCameraParameters:
  .4byte 0x802c5ad0
  .4byte 0x802c5b14
.global __RTTI__11NVector3fIO
__RTTI__11NVector3fIO:
  .4byte 0x802c5ba0
  .4byte 0
.global __RTTI__16NVector3fIOClass
__RTTI__16NVector3fIOClass:
  .4byte 0x802c5bac
  .4byte 0x802c5bc0
.global __RTTI__19PeveClampVector3fIO
__RTTI__19PeveClampVector3fIO:
  .4byte 0x802c5b8c
  .4byte 0x802c5bcc
.global __RTTI__22PeveCreaturePositionIO
__RTTI__22PeveCreaturePositionIO:
  .4byte 0x802c5c00
  .4byte 0x802c5c18
.global __RTTI__12NPosture3DIO
__RTTI__12NPosture3DIO:
  .4byte 0x802c5c48
  .4byte 0
.global __RTTI__19PeveCameraPostureIO
__RTTI__19PeveCameraPostureIO:
  .4byte 0x802c5c34
  .4byte 0x802c5c58
.global __RTTI__22PeveCameraWatchpointIO
__RTTI__22PeveCameraWatchpointIO:
  .4byte 0x802c5c84
  .4byte 0x802c5c9c
.global __RTTI__21PeveCameraViewpointIO
__RTTI__21PeveCameraViewpointIO:
  .4byte 0x802c5cb8
  .4byte 0x802c5cd0
  .4byte 0x4e4e6f64
  .4byte 0x65000000
  .4byte 0x803e3350
  .4byte 0
  .4byte 0x802c5d0c
  .4byte 0x802c5d18
.global __RTTI__15PeveSerialEvent_1
__RTTI__15PeveSerialEvent_1:
  .4byte 0x802c5cfc
  .4byte 0x802c5d24
  .4byte 0x802c5d74
  .4byte 0x802c5d88
.global __RTTI__13PeveCondition
__RTTI__13PeveCondition:
  .4byte 0x802c5e14
  .4byte 0
.global __RTTI__13PeveCondition_1
__RTTI__13PeveCondition_1:
  .4byte 0x802c5e78
  .4byte 0
.global __RTTI__20PeveBooleanCondition
__RTTI__20PeveBooleanCondition:
  .4byte 0x802c5e88
  .4byte 0x802c5ea0
.global __RTTI__24PeveComparisonYCondition
__RTTI__24PeveComparisonYCondition:
  .4byte 0x802c5e5c
  .4byte 0x802c5eac
.global __RTTI__21PeveDistanceCondition
__RTTI__21PeveDistanceCondition:
  .4byte 0x802c5ed4
  .4byte 0x802c5eec
.global __RTTI__17PeveTimeCondition
__RTTI__17PeveTimeCondition:
  .4byte 0x802c5f14
  .4byte 0x802c5f28
.global __RTTI__23PeveDependenceCondition
__RTTI__23PeveDependenceCondition:
  .4byte 0x802c5f48
  .4byte 0x802c5f60
  .4byte 0x4e4e6f64
  .4byte 0x65000000
  .4byte 0x803e33b0
  .4byte 0
  .4byte 0x802c5fd8
  .4byte 0x802c5fe4
  .4byte 0x802c5fc4
  .4byte 0x802c5ff0
.global __RTTI__13PeveMoveEvent
__RTTI__13PeveMoveEvent:
  .4byte 0x802c6058
  .4byte 0x802c6068
.global __RTTI__22PeveInterpolationEvent
__RTTI__22PeveInterpolationEvent:
  .4byte 0x802c60b8
  .4byte 0x802c60d0
  .4byte 0x802c6154
  .4byte 0x802c6168
.global __RTTI__22PeveHomingPostureEvent
__RTTI__22PeveHomingPostureEvent:
  .4byte 0x802c613c
  .4byte 0x802c617c
.global __RTTI__23PeveHomingPositionEvent
__RTTI__23PeveHomingPositionEvent:
  .4byte 0x802c61d4
  .4byte 0x802c61ec
.global __RTTI__22PeveFunctionCurveEvent
__RTTI__22PeveFunctionCurveEvent:
  .4byte 0x802c623c
  .4byte 0x802c6254
.global __RTTI__24PeveCircleMoveWatchEvent
__RTTI__24PeveCircleMoveWatchEvent:
  .4byte 0x802c62a4
  .4byte 0x802c62c0
.global __RTTI__19PeveCircleMoveEvent
__RTTI__19PeveCircleMoveEvent:
  .4byte 0x802c6318
  .4byte 0x802c632c
.global __RTTI__26PeveHorizontalSinWaveEvent
__RTTI__26PeveHorizontalSinWaveEvent:
  .4byte 0x802c637c
  .4byte 0x802c6398
.global __RTTI__11NVector3fIO_1
__RTTI__11NVector3fIO_1:
  .4byte 0x802c63fc
  .4byte 0
.global __RTTI__21PeveAccelerationEvent
__RTTI__21PeveAccelerationEvent:
  .4byte 0x802c6448
  .4byte 0x802c6460
.global __RTTI__17PeveParabolaEvent
__RTTI__17PeveParabolaEvent:
  .4byte 0x802c6434
  .4byte 0x802c6474
.global __RTTI__13PeveWaitEvent
__RTTI__13PeveWaitEvent:
  .4byte 0x802c6508
  .4byte 0x802c6518
  .4byte 0x802c6574
  .4byte 0
  .4byte 0x802c6568
  .4byte 0x802c6584
.global __RTTI__8TaiState
__RTTI__8TaiState:
  .4byte 0x802c65b8
  .4byte 0
  .4byte 0x802c65ec
  .4byte 0
.global __RTTI__15TaiSerialAction
__RTTI__15TaiSerialAction:
  .4byte 0x802c65dc
  .4byte 0x802c65f8
  .4byte 0x802c6684
  .4byte 0
  .4byte 0x802c6690
  .4byte 0x802c66a0
.global __RTTI__22TaiFlickingUpperAction
__RTTI__22TaiFlickingUpperAction:
  .4byte 0x802c666c
  .4byte 0x802c66ac
.global __RTTI__17TaiFlickingAction
__RTTI__17TaiFlickingAction:
  .4byte 0x802c66dc
  .4byte 0x802c66f0
.global __RTTI__20TaiTargetStickAction
__RTTI__20TaiTargetStickAction:
  .4byte 0x802c6720
  .4byte 0x802c6738
.global __RTTI__14TaiFlickAction
__RTTI__14TaiFlickAction:
  .4byte 0x802c6760
  .4byte 0x802c6770
.global __RTTI__16TaiBangingAction
__RTTI__16TaiBangingAction:
  .4byte 0x802c6798
  .4byte 0x802c67ac
  .4byte 0x802c6820
  .4byte 0
  .4byte 0x802c682c
  .4byte 0x802c683c
.global __RTTI__16TekiAndCondition
__RTTI__16TekiAndCondition:
  .4byte 0x802c680c
  .4byte 0x802c6848
.global __RTTI__16TekiNotCondition
__RTTI__16TekiNotCondition:
  .4byte 0x802c6868
  .4byte 0x802c687c
.global __RTTI__28TaiAnimationSwallowingAction
__RTTI__28TaiAnimationSwallowingAction:
  .4byte 0x802c689c
  .4byte 0x802c68bc
.global __RTTI__23TaiAttackablePikiAction
__RTTI__23TaiAttackablePikiAction:
  .4byte 0x802c68e4
  .4byte 0x802c68fc
.global __RTTI__23TaiAttackableNaviAction
__RTTI__23TaiAttackableNaviAction:
  .4byte 0x802c6924
  .4byte 0x802c693c
.global __RTTI__27TaiAttackableNaviPikiAction
__RTTI__27TaiAttackableNaviPikiAction:
  .4byte 0x802c697c
  .4byte 0x802c6998
  .4byte 0x802c6a00
  .4byte 0
.global __RTTI__26TaiNaviWatchResultOnAction
__RTTI__26TaiNaviWatchResultOnAction:
  .4byte 0x802c69e4
  .4byte 0x802c6a0c
.global __RTTI__30TaiTypeNaviWatchResultOnAction
__RTTI__30TaiTypeNaviWatchResultOnAction:
  .4byte 0x802c6a34
  .4byte 0x802c6a54
.global __RTTI__18TaiStopSoundAction
__RTTI__18TaiStopSoundAction:
  .4byte 0x802c6a7c
  .4byte 0x802c6a90
.global __RTTI__18TaiPlaySoundAction
__RTTI__18TaiPlaySoundAction:
  .4byte 0x802c6ab8
  .4byte 0x802c6acc
.global __RTTI__18TaiSetOptionAction
__RTTI__18TaiSetOptionAction:
  .4byte 0x802c6af4
  .4byte 0x802c6b08
.global __RTTI__20TaiActionStateAction
__RTTI__20TaiActionStateAction:
  .4byte 0x802c6b30
  .4byte 0x802c6b48
  .4byte 0x802c6be4
  .4byte 0
  .4byte 0x802c6bf0
  .4byte 0x802c6c04
  .4byte 0x802c6c10
  .4byte 0x802c6c28
.global __RTTI__24TaiChappyLegEffectAction
__RTTI__24TaiChappyLegEffectAction:
  .4byte 0x802c6bc8
  .4byte 0x802c6c3c
.global __RTTI__16TaiSmashedAction
__RTTI__16TaiSmashedAction:
  .4byte 0x802c6c90
  .4byte 0x802c6ca4
.global __RTTI__22TaiChappySmashedAction
__RTTI__22TaiChappySmashedAction:
  .4byte 0x802c6c78
  .4byte 0x802c6cb0
  .4byte 0x802c6cf4
  .4byte 0
  .4byte 0x802c6d00
  .4byte 0x802c6d10
.global __RTTI__15TekiOrCondition
__RTTI__15TekiOrCondition:
  .4byte 0x802c6d3c
  .4byte 0x802c6d4c
.global __RTTI__18TaiChappyCryAction
__RTTI__18TaiChappyCryAction:
  .4byte 0x802c6d84
  .4byte 0x802c6d98
.global __RTTI__13TaiOnceAction
__RTTI__13TaiOnceAction:
  .4byte 0x802c6dc0
  .4byte 0x802c6dd0
.global __RTTI__12TaiAndAction
__RTTI__12TaiAndAction:
  .4byte 0x802c6df8
  .4byte 0x802c6e08
  .4byte 0x802c6e60
  .4byte 0
  .4byte 0x802c6e70
  .4byte 0x802c6e7c
.global __RTTI__17TaiChappyStrategy
__RTTI__17TaiChappyStrategy:
  .4byte 0x802c6e4c
  .4byte 0x802c6e88
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e3588
  .4byte 0
  .4byte 0x802c6edc
  .4byte 0x802c6ee8
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e35a0
  .4byte 0x802c6ef4
  .4byte 0x802c6f08
  .4byte 0x802c6f18
.global __RTTI__20TaiCatfishParameters
__RTTI__20TaiCatfishParameters:
  .4byte 0x802c6ec4
  .4byte 0x802c6f34
.global __RTTI__24TaiBlackChappyParameters
__RTTI__24TaiBlackChappyParameters:
  .4byte 0x802c6f88
  .4byte 0x802c6fa4
.global __RTTI__19TaiChappyParameters
__RTTI__19TaiChappyParameters:
  .4byte 0x802c6ff8
  .4byte 0x802c700c
.global lbl_803E35D0
lbl_803E35D0:
	.incbin "baserom.dol", 0x2ECEF0, 0x4
.global lbl_803E35D4
lbl_803E35D4:
	.incbin "baserom.dol", 0x2ECEF4, 0x4
.global lbl_803E35D8
lbl_803E35D8:
	.incbin "baserom.dol", 0x2ECEF8, 0x4
.global lbl_803E35DC
lbl_803E35DC:
	.incbin "baserom.dol", 0x2ECEFC, 0x4
.global lbl_803E35E0
lbl_803E35E0:
	.incbin "baserom.dol", 0x2ECF00, 0x4
.global lbl_803E35E4
lbl_803E35E4:
	.incbin "baserom.dol", 0x2ECF04, 0x4
.global lbl_803E35E8
lbl_803E35E8:
	.incbin "baserom.dol", 0x2ECF08, 0x4
.global lbl_803E35EC
lbl_803E35EC:
	.incbin "baserom.dol", 0x2ECF0C, 0x4
.global lbl_803E35F0
lbl_803E35F0:
	.incbin "baserom.dol", 0x2ECF10, 0x4
.global lbl_803E35F4
lbl_803E35F4:
	.incbin "baserom.dol", 0x2ECF14, 0x4
.global lbl_803E35F8
lbl_803E35F8:
	.incbin "baserom.dol", 0x2ECF18, 0x4
.global lbl_803E35FC
lbl_803E35FC:
	.incbin "baserom.dol", 0x2ECF1C, 0x4
.global lbl_803E3600
lbl_803E3600:
	.incbin "baserom.dol", 0x2ECF20, 0x14
.global __RTTI__17TaiHollecStrategy
__RTTI__17TaiHollecStrategy:
  .4byte 0x802c715c
  .4byte 0x802c7198
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e361c
  .4byte 0
  .4byte 0x802c71e8
  .4byte 0x802c71f4
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e3634
  .4byte 0x802c7200
  .4byte 0x802c7214
  .4byte 0x802c7224
.global __RTTI__19TaiHollecParameters
__RTTI__19TaiHollecParameters:
  .4byte 0x802c71d4
  .4byte 0x802c7240
  .4byte 0x802c72b0
  .4byte 0
  .4byte 0x802c72bc
  .4byte 0x802c72d0
  .4byte 0x802c72dc
  .4byte 0x802c72f4
.global __RTTI__24TaiCollecLegEffectAction
__RTTI__24TaiCollecLegEffectAction:
  .4byte 0x802c7294
  .4byte 0x802c7308
.global __RTTI__21TaiCollecGetOutAction
__RTTI__21TaiCollecGetOutAction:
  .4byte 0x802c7344
  .4byte 0x802c735c
.global __RTTI__22TaiCollecFallingAction
__RTTI__22TaiCollecFallingAction:
  .4byte 0x802c7384
  .4byte 0x802c739c
.global __RTTI__26TaiCollecDeadFallingAction
__RTTI__26TaiCollecDeadFallingAction:
  .4byte 0x802c73c4
  .4byte 0x802c73e0
.global __RTTI__40TaiCollecPelletFinishContainerizedAction
__RTTI__40TaiCollecPelletFinishContainerizedAction:
  .4byte 0x802c7408
  .4byte 0x802c7434
.global __RTTI__39TaiCollecPelletStartContainerizedAction
__RTTI__39TaiCollecPelletStartContainerizedAction:
  .4byte 0x802c745c
  .4byte 0x802c7484
.global __RTTI__25TaiCollecRoundCarryAction
__RTTI__25TaiCollecRoundCarryAction:
  .4byte 0x802c74ac
  .4byte 0x802c74c8
.global __RTTI__30TaiCollecRouteImpassableAction
__RTTI__30TaiCollecRouteImpassableAction:
  .4byte 0x802c74f0
  .4byte 0x802c7510
  .4byte 0x802c7558
  .4byte 0x802c7568
  .4byte 0x802c7574
  .4byte 0x802c7590
.global __RTTI__29TaiCollecCarryingToNestAction
__RTTI__29TaiCollecCarryingToNestAction:
  .4byte 0x802c7538
  .4byte 0x802c75a4
.global __RTTI__28TaiCollecPuttingPelletAction
__RTTI__28TaiCollecPuttingPelletAction:
  .4byte 0x802c7618
  .4byte 0x802c7638
.global __RTTI__18TaiCollecPutAction
__RTTI__18TaiCollecPutAction:
  .4byte 0x802c7660
  .4byte 0x802c7674
.global __RTTI__29TaiCollecDefeatCarryingAction
__RTTI__29TaiCollecDefeatCarryingAction:
  .4byte 0x802c769c
  .4byte 0x802c76bc
.global __RTTI__26TaiCollecWinCarryingAction
__RTTI__26TaiCollecWinCarryingAction:
  .4byte 0x802c76e4
  .4byte 0x802c7700
.global __RTTI__27TaiCollecBeingDraggedAction
__RTTI__27TaiCollecBeingDraggedAction:
  .4byte 0x802c7728
  .4byte 0x802c7744
.global __RTTI__23TaiCollecCarryingAction
__RTTI__23TaiCollecCarryingAction:
  .4byte 0x802c776c
  .4byte 0x802c7784
.global __RTTI__23TaiCollecCatchingAction
__RTTI__23TaiCollecCatchingAction:
  .4byte 0x802c77ac
  .4byte 0x802c77c4
.global __RTTI__25TaiCollecHoldPelletAction
__RTTI__25TaiCollecHoldPelletAction:
  .4byte 0x802c77ec
  .4byte 0x802c7808
.global __RTTI__32TaiCollecPelletDisappearedAction
__RTTI__32TaiCollecPelletDisappearedAction:
  .4byte 0x802c7830
  .4byte 0x802c7854
.global __RTTI__25TaiCollecPelletLostAction
__RTTI__25TaiCollecPelletLostAction:
  .4byte 0x802c787c
  .4byte 0x802c7898
  .4byte 0x802c78ec
  .4byte 0x802c78fc
.global __RTTI__43TaiCollecVisibleHeightPelletLostTimerAction
__RTTI__43TaiCollecVisibleHeightPelletLostTimerAction:
  .4byte 0x802c78c0
  .4byte 0x802c7908
.global __RTTI__38TaiCollecVisibleHeightPelletLostAction
__RTTI__38TaiCollecVisibleHeightPelletLostAction:
  .4byte 0x802c7938
  .4byte 0x802c7960
  .4byte 0x802c799c
  .4byte 0
  .4byte 0x802c79a8
  .4byte 0x802c79b8
.global __RTTI__27TaiCollecTargetPelletAction
__RTTI__27TaiCollecTargetPelletAction:
  .4byte 0x802c7a30
  .4byte 0x802c7a4c
.global __RTTI__28TaiCollecLetGoOfPelletAction
__RTTI__28TaiCollecLetGoOfPelletAction:
  .4byte 0x802c7a74
  .4byte 0x802c7a94
.global __RTTI__25TaiCollecImpassableAction
__RTTI__25TaiCollecImpassableAction:
  .4byte 0x802c7abc
  .4byte 0x802c7ad8
.global __RTTI__31TekiCollecTargetPelletCondition
__RTTI__31TekiCollecTargetPelletCondition:
  .4byte 0x802c7b00
  .4byte 0x802c7b20
.global __RTTI__17TaiCollecStrategy
__RTTI__17TaiCollecStrategy:
  .4byte 0x802c7b40
  .4byte 0x802c7b54
.global __RTTI__19TaiDependenceAction
__RTTI__19TaiDependenceAction:
  .4byte 0x802c7b90
  .4byte 0x802c7ba4
.global __RTTI__19TaiCollecParameters
__RTTI__19TaiCollecParameters:
  .4byte 0x802c7be8
  .4byte 0x802c7bfc
  .4byte 0
  .4byte 0x802c7c98
  .4byte 0
.global __RTTI__26TaiCreatureCollisionAction
__RTTI__26TaiCreatureCollisionAction:
  .4byte 0x802c7ca4
  .4byte 0x802c7cc0
.global __RTTI__26TaiTekiTypeCollisionAction
__RTTI__26TaiTekiTypeCollisionAction:
  .4byte 0x802c7c7c
  .4byte 0x802c7ccc
.global __RTTI__22TaiNaviCollisionAction
__RTTI__22TaiNaviCollisionAction:
  .4byte 0x802c7cfc
  .4byte 0x802c7d14
.global __RTTI__22TaiPikiCollisionAction
__RTTI__22TaiPikiCollisionAction:
  .4byte 0x802c7d44
  .4byte 0x802c7d5c
.global __RTTI__22TaiWallCollisionAction
__RTTI__22TaiWallCollisionAction:
  .4byte 0x802c7da8
  .4byte 0x802c7dc0
.global __RTTI__24TaiGroundCollisionAction
__RTTI__24TaiGroundCollisionAction:
  .4byte 0x802c7de8
  .4byte 0x802c7e04
.global __RTTI__15TaiBounceAction
__RTTI__15TaiBounceAction:
  .4byte 0x802c7e2c
  .4byte 0x802c7e3c
  .4byte 0x802c7eac
  .4byte 0
  .4byte 0x802c7eb8
  .4byte 0x802c7ecc
  .4byte 0x802c7e94
  .4byte 0x802c7ed8
.global __RTTI__33TaiStopGenParticleGeneratorAction
__RTTI__33TaiStopGenParticleGeneratorAction:
  .4byte 0x802c7f28
  .4byte 0x802c7f4c
.global __RTTI__34TaiStartGenParticleGeneratorAction
__RTTI__34TaiStartGenParticleGeneratorAction:
  .4byte 0x802c7f74
  .4byte 0x802c7f98
.global __RTTI__15TaiEffectAction
__RTTI__15TaiEffectAction:
  .4byte 0x802c7fc0
  .4byte 0x802c7fd0
.global lbl_803E37E8
lbl_803E37E8:
	.incbin "baserom.dol", 0x2ED108, 0x4
.global lbl_803E37EC
lbl_803E37EC:
	.incbin "baserom.dol", 0x2ED10C, 0x4
.global lbl_803E37F0
lbl_803E37F0:
	.incbin "baserom.dol", 0x2ED110, 0x4
.global lbl_803E37F4
lbl_803E37F4:
	.incbin "baserom.dol", 0x2ED114, 0x4
.global lbl_803E37F8
lbl_803E37F8:
	.incbin "baserom.dol", 0x2ED118, 0x4
.global lbl_803E37FC
lbl_803E37FC:
	.incbin "baserom.dol", 0x2ED11C, 0x4
.global lbl_803E3800
lbl_803E3800:
	.incbin "baserom.dol", 0x2ED120, 0x4
.global lbl_803E3804
lbl_803E3804:
	.incbin "baserom.dol", 0x2ED124, 0x4
.global lbl_803E3808
lbl_803E3808:
	.incbin "baserom.dol", 0x2ED128, 0x4
.global lbl_803E380C
lbl_803E380C:
	.incbin "baserom.dol", 0x2ED12C, 0x4
.global lbl_803E3810
lbl_803E3810:
	.incbin "baserom.dol", 0x2ED130, 0x4
.global lbl_803E3814
lbl_803E3814:
	.incbin "baserom.dol", 0x2ED134, 0x4
.global lbl_803E3818
lbl_803E3818:
	.incbin "baserom.dol", 0x2ED138, 0xC
.global __RTTI__23TaiIwagenShootingAction
__RTTI__23TaiIwagenShootingAction:
  .4byte 0x802c8024
  .4byte 0x802c8048
  .4byte 0x802c8084
  .4byte 0
  .4byte 0x802c8094
  .4byte 0x802c80a0
.global __RTTI__17TaiIwagenStrategy
__RTTI__17TaiIwagenStrategy:
  .4byte 0x802c8070
  .4byte 0x802c80ac
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e3844
  .4byte 0
  .4byte 0x802c80fc
  .4byte 0x802c8108
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e385c
  .4byte 0x802c8114
  .4byte 0x802c8128
  .4byte 0x802c8138
.global __RTTI__19TaiIwagenParameters
__RTTI__19TaiIwagenParameters:
  .4byte 0x802c80e8
  .4byte 0x802c8154
.global __RTTI__22TaiIwagonRollingAction
__RTTI__22TaiIwagonRollingAction:
  .4byte 0x802c81a8
  .4byte 0x802c81c0
.global __RTTI__25TaiIwagonDustEffectAction
__RTTI__25TaiIwagonDustEffectAction:
  .4byte 0x802c81e8
  .4byte 0x802c8204
.global __RTTI__17TaiIwagonStrategy
__RTTI__17TaiIwagonStrategy:
  .4byte 0x802c822c
  .4byte 0x802c8240
.global __RTTI__19TaiIwagonParameters
__RTTI__19TaiIwagonParameters:
  .4byte 0x802c8298
  .4byte 0x802c82ac
  .4byte 0
  .4byte 0x802c8348
  .4byte 0
.global __RTTI__26TaiHasStickersOnBodyAction
__RTTI__26TaiHasStickersOnBodyAction:
  .4byte 0x802c832c
  .4byte 0x802c8354
.global __RTTI__27TaiHasStickersInMouthAction
__RTTI__27TaiHasStickersInMouthAction:
  .4byte 0x802c837c
  .4byte 0x802c8398
  .4byte 0x802c83d4
  .4byte 0
  .4byte 0x802c83e0
  .4byte 0x802c83f0
.global __RTTI__26TaiTargetVisibleNaviAction
__RTTI__26TaiTargetVisibleNaviAction:
  .4byte 0x802c841c
  .4byte 0x802c8438
.global __RTTI__30TaiTargetVisibleNaviPikiAction
__RTTI__30TaiTargetVisibleNaviPikiAction:
  .4byte 0x802c8478
  .4byte 0x802c8498
.global __RTTI__24TaiInsideTerritoryAction
__RTTI__24TaiInsideTerritoryAction:
  .4byte 0x802c84c0
  .4byte 0x802c84dc
.global __RTTI__25TaiOutsideTerritoryAction
__RTTI__25TaiOutsideTerritoryAction:
  .4byte 0x802c8504
  .4byte 0x802c8520
.global __RTTI__19TaiTargetLostAction
__RTTI__19TaiTargetLostAction:
  .4byte 0x802c8548
  .4byte 0x802c855c
.global __RTTI__23TaiSeparateTargetAction
__RTTI__23TaiSeparateTargetAction:
  .4byte 0x802c8584
  .4byte 0x802c859c
.global __RTTI__22TaiContactTargetAction
__RTTI__22TaiContactTargetAction:
  .4byte 0x802c85c4
  .4byte 0x802c85dc
.global __RTTI__22TaiVisibleTargetAction
__RTTI__22TaiVisibleTargetAction:
  .4byte 0x802c8604
  .4byte 0x802c861c
.global lbl_803E3908
lbl_803E3908:
	.incbin "baserom.dol", 0x2ED228, 0x4
.global lbl_803E390C
lbl_803E390C:
	.incbin "baserom.dol", 0x2ED22C, 0x4
.global lbl_803E3910
lbl_803E3910:
	.incbin "baserom.dol", 0x2ED230, 0x4
.global lbl_803E3914
lbl_803E3914:
	.incbin "baserom.dol", 0x2ED234, 0x4
.global lbl_803E3918
lbl_803E3918:
	.incbin "baserom.dol", 0x2ED238, 0x4
.global lbl_803E391C
lbl_803E391C:
	.incbin "baserom.dol", 0x2ED23C, 0x4
.global lbl_803E3920
lbl_803E3920:
	.incbin "baserom.dol", 0x2ED240, 0x1C
.global __RTTI__24TaiKinokoLegEffectAction
__RTTI__24TaiKinokoLegEffectAction:
  .4byte 0x802c875c
  .4byte 0x802c87d0
.global __RTTI__35TaiKinokoTerritoryRunningAwayAction
__RTTI__35TaiKinokoTerritoryRunningAwayAction:
  .4byte 0x802c880c
  .4byte 0x802c8830
  .4byte 0x802c886c
  .4byte 0
  .4byte 0x802c8878
  .4byte 0x802c8888
.global __RTTI__32TaiKinokoDischargingSporesAction
__RTTI__32TaiKinokoDischargingSporesAction:
  .4byte 0x802c8904
  .4byte 0x802c8928
.global __RTTI__29TaiKinokoChargingSporesAction
__RTTI__29TaiKinokoChargingSporesAction:
  .4byte 0x802c8950
  .4byte 0x802c8970
.global __RTTI__26TaiKinokoTurningOverAction
__RTTI__26TaiKinokoTurningOverAction:
  .4byte 0x802c8998
  .4byte 0x802c89b4
  .4byte 0x802c89f0
  .4byte 0
  .4byte 0x802c8a00
  .4byte 0x802c8a0c
.global __RTTI__17TaiKinokoStrategy
__RTTI__17TaiKinokoStrategy:
  .4byte 0x802c89dc
  .4byte 0x802c8a18
.global __RTTI__12TaiNotAction
__RTTI__12TaiNotAction:
  .4byte 0x802c8a54
  .4byte 0x802c8a64
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e3994
  .4byte 0
  .4byte 0x802c8af4
  .4byte 0x802c8b00
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e39ac
  .4byte 0x802c8b0c
  .4byte 0x802c8b20
  .4byte 0x802c8b30
.global __RTTI__19TaiKinokoParameters
__RTTI__19TaiKinokoParameters:
  .4byte 0x802c8ae0
  .4byte 0x802c8b4c
  .4byte 0
  .4byte 0x802c8be4
  .4byte 0
.global __RTTI__23TaiKeySendMessageAction
__RTTI__23TaiKeySendMessageAction:
  .4byte 0x802c8bcc
  .4byte 0x802c8bf0
.global __RTTI__20TaiSendMessageAction
__RTTI__20TaiSendMessageAction:
  .4byte 0x802c8c18
  .4byte 0x802c8c30
.global lbl_803E39E8
lbl_803E39E8:
	.incbin "baserom.dol", 0x2ED308, 0x4
.global lbl_803E39EC
lbl_803E39EC:
	.incbin "baserom.dol", 0x2ED30C, 0x4
.global lbl_803E39F0
lbl_803E39F0:
	.incbin "baserom.dol", 0x2ED310, 0x4
.global lbl_803E39F4
lbl_803E39F4:
	.incbin "baserom.dol", 0x2ED314, 0x4
.global lbl_803E39F8
lbl_803E39F8:
	.incbin "baserom.dol", 0x2ED318, 0x4
.global lbl_803E39FC
lbl_803E39FC:
	.incbin "baserom.dol", 0x2ED31C, 0x4
.global lbl_803E3A00
lbl_803E3A00:
	.incbin "baserom.dol", 0x2ED320, 0x4
.global lbl_803E3A04
lbl_803E3A04:
	.incbin "baserom.dol", 0x2ED324, 0x4
.global lbl_803E3A08
lbl_803E3A08:
	.incbin "baserom.dol", 0x2ED328, 0x4
.global lbl_803E3A0C
lbl_803E3A0C:
	.incbin "baserom.dol", 0x2ED32C, 0x4
.global lbl_803E3A10
lbl_803E3A10:
	.incbin "baserom.dol", 0x2ED330, 0x4
.global lbl_803E3A14
lbl_803E3A14:
	.incbin "baserom.dol", 0x2ED334, 0x4
.global lbl_803E3A18
lbl_803E3A18:
	.incbin "baserom.dol", 0x2ED338, 0x4
.global lbl_803E3A1C
lbl_803E3A1C:
	.incbin "baserom.dol", 0x2ED33C, 0x4
.global lbl_803E3A20
lbl_803E3A20:
	.incbin "baserom.dol", 0x2ED340, 0x4
.global lbl_803E3A24
lbl_803E3A24:
	.incbin "baserom.dol", 0x2ED344, 0xC
.global __RTTI__26TaiMizinkoFlyingAwayAction
__RTTI__26TaiMizinkoFlyingAwayAction:
  .4byte 0x802c8da8
  .4byte 0x802c8dd0
.global __RTTI__23TaiMizinkoWaitingAction
__RTTI__23TaiMizinkoWaitingAction:
  .4byte 0x802c8df8
  .4byte 0x802c8e10
.global __RTTI__25TaiMizinkoDropWaterAction
__RTTI__25TaiMizinkoDropWaterAction:
  .4byte 0x802c8e38
  .4byte 0x802c8e54
.global __RTTI__22TaiMizinkoComingAction
__RTTI__22TaiMizinkoComingAction:
  .4byte 0x802c8e7c
  .4byte 0x802c8e94
.global __RTTI__21TaiMizinkoGoingAction
__RTTI__21TaiMizinkoGoingAction:
  .4byte 0x802c8ebc
  .4byte 0x802c8ed4
.global __RTTI__22TaiMizinkoFadingAction
__RTTI__22TaiMizinkoFadingAction:
  .4byte 0x802c8efc
  .4byte 0x802c8f14
  .4byte 0x802c8f58
  .4byte 0x802c8f68
.global __RTTI__27TaiMizinkoMovingTimerAction
__RTTI__27TaiMizinkoMovingTimerAction:
  .4byte 0x802c8f3c
  .4byte 0x802c8f74
.global __RTTI__24TaiMizinkoCryTimerAction
__RTTI__24TaiMizinkoCryTimerAction:
  .4byte 0x802c8fa4
  .4byte 0x802c8fc0
  .4byte 0x802c9004
  .4byte 0
  .4byte 0x802c9014
  .4byte 0x802c9020
.global __RTTI__18TaiMizinkoStrategy
__RTTI__18TaiMizinkoStrategy:
  .4byte 0x802c8ff0
  .4byte 0x802c902c
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e3a90
  .4byte 0
  .4byte 0x802c9080
  .4byte 0x802c908c
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e3aa8
  .4byte 0x802c9098
  .4byte 0x802c90ac
  .4byte 0x802c90bc
.global __RTTI__20TaiMizinkoParameters
__RTTI__20TaiMizinkoParameters:
  .4byte 0x802c9068
  .4byte 0x802c90d8
.global __RTTI__28TaiMizigenNaviApprouchAction
__RTTI__28TaiMizigenNaviApprouchAction:
  .4byte 0x802c912c
  .4byte 0x802c914c
.global __RTTI__26TaiMizigenGeneratingAction
__RTTI__26TaiMizigenGeneratingAction:
  .4byte 0x802c9174
  .4byte 0x802c9190
.global __RTTI__18TaiMizigenStrategy
__RTTI__18TaiMizigenStrategy:
  .4byte 0x802c91b8
  .4byte 0x802c91cc
.global __RTTI__20TaiMizigenParameters
__RTTI__20TaiMizigenParameters:
  .4byte 0x802c9224
  .4byte 0x802c923c
.global lbl_803E3AE8
lbl_803E3AE8:
	.incbin "baserom.dol", 0x2ED408, 0x4
.global lbl_803E3AEC
lbl_803E3AEC:
	.incbin "baserom.dol", 0x2ED40C, 0x4
.global lbl_803E3AF0
lbl_803E3AF0:
	.incbin "baserom.dol", 0x2ED410, 0x4
.global lbl_803E3AF4
lbl_803E3AF4:
	.incbin "baserom.dol", 0x2ED414, 0x4
.global lbl_803E3AF8
lbl_803E3AF8:
	.incbin "baserom.dol", 0x2ED418, 0x4
.global lbl_803E3AFC
lbl_803E3AFC:
	.incbin "baserom.dol", 0x2ED41C, 0xC
.global __RTTI__34TaiRandomSetAnimationCounterAction
__RTTI__34TaiRandomSetAnimationCounterAction:
  .4byte 0x802c92bc
  .4byte 0x802c92ec
.global __RTTI__23TaiSetFrameMotionAction
__RTTI__23TaiSetFrameMotionAction:
  .4byte 0x802c9314
  .4byte 0x802c932c
.global __RTTI__27TaiFinishStoppingMoveAction
__RTTI__27TaiFinishStoppingMoveAction:
  .4byte 0x802c9354
  .4byte 0x802c9370
.global __RTTI__21TaiStoppingMoveAction
__RTTI__21TaiStoppingMoveAction:
  .4byte 0x802c9398
  .4byte 0x802c93b0
.global __RTTI__27TaiOutsideKeyStopMoveAction
__RTTI__27TaiOutsideKeyStopMoveAction:
  .4byte 0x802c93d8
  .4byte 0x802c93f4
  .4byte 0x802c9434
  .4byte 0x802c9444
.global __RTTI__21TaiSwitchMotionAction
__RTTI__21TaiSwitchMotionAction:
  .4byte 0x802c941c
  .4byte 0x802c9450
.global __RTTI__18TaiCountLoopAction
__RTTI__18TaiCountLoopAction:
  .4byte 0x802c9480
  .4byte 0x802c9494
.global __RTTI__21TaiAnimationKeyAction
__RTTI__21TaiAnimationKeyAction:
  .4byte 0x802c94bc
  .4byte 0x802c94d4
.global __RTTI__21TaiFinishMotionAction
__RTTI__21TaiFinishMotionAction:
  .4byte 0x802c94fc
  .4byte 0x802c9514
  .4byte 0x802c9544
  .4byte 0x802c9560
.global lbl_803E3B60
lbl_803E3B60:
	.incbin "baserom.dol", 0x2ED480, 0x4
.global lbl_803E3B64
lbl_803E3B64:
	.incbin "baserom.dol", 0x2ED484, 0x4
.global lbl_803E3B68
lbl_803E3B68:
	.incbin "baserom.dol", 0x2ED488, 0x4
.global lbl_803E3B6C
lbl_803E3B6C:
	.incbin "baserom.dol", 0x2ED48C, 0x4
.global lbl_803E3B70
lbl_803E3B70:
	.incbin "baserom.dol", 0x2ED490, 0x4
.global lbl_803E3B74
lbl_803E3B74:
	.incbin "baserom.dol", 0x2ED494, 0x4
.global lbl_803E3B78
lbl_803E3B78:
	.incbin "baserom.dol", 0x2ED498, 0xC
.global __RTTI__33TaiHeadOnCollisionAvoidanceAction
__RTTI__33TaiHeadOnCollisionAvoidanceAction:
  .4byte 0x802c95d4
  .4byte 0x802c9604
.global __RTTI__19TaiTargetNestAction
__RTTI__19TaiTargetNestAction:
  .4byte 0x802c962c
  .4byte 0x802c9640
.global __RTTI__32TaiWatchOffTerritoryCenterAction
__RTTI__32TaiWatchOffTerritoryCenterAction:
  .4byte 0x802c9668
  .4byte 0x802c968c
  .4byte 0x802c96cc
  .4byte 0x802c96dc
  .4byte 0x802c96e8
  .4byte 0x802c9704
.global __RTTI__20TaiRunningAwayAction
__RTTI__20TaiRunningAwayAction:
  .4byte 0x802c96b4
  .4byte 0x802c9718
.global __RTTI__37TaiRunningAwayToTargetDirectionAction
__RTTI__37TaiRunningAwayToTargetDirectionAction:
  .4byte 0x802c9754
  .4byte 0x802c977c
.global __RTTI__17TaiRotatingAction
__RTTI__17TaiRotatingAction:
  .4byte 0x802c97b8
  .4byte 0x802c97cc
.global __RTTI__32TaiTurningToTargetPositionAction
__RTTI__32TaiTurningToTargetPositionAction:
  .4byte 0x802c97f4
  .4byte 0x802c9818
.global __RTTI__24TaiOutOfTraceAngleAction
__RTTI__24TaiOutOfTraceAngleAction:
  .4byte 0x802c9854
  .4byte 0x802c9870
.global __RTTI__21TaiTraceTurningAction
__RTTI__21TaiTraceTurningAction:
  .4byte 0x802c9898
  .4byte 0x802c98b0
.global __RTTI__20TaiTurningAwayAction
__RTTI__20TaiTurningAwayAction:
  .4byte 0x802c98ec
  .4byte 0x802c9904
  .4byte 0x802c9950
  .4byte 0
.global __RTTI__16TaiTurningAction
__RTTI__16TaiTurningAction:
  .4byte 0x802c9980
  .4byte 0x802c9994
.global __RTTI__19TaiDirectTurnAction
__RTTI__19TaiDirectTurnAction:
  .4byte 0x802c99d0
  .4byte 0x802c99e4
.global __RTTI__18TaiGoingHomeAction
__RTTI__18TaiGoingHomeAction:
  .4byte 0x802c9a0c
  .4byte 0x802c9a20
.global __RTTI__16TaiTracingAction
__RTTI__16TaiTracingAction:
  .4byte 0x802c9a5c
  .4byte 0x802c9a70
.global __RTTI__29TaiRandomWanderingRouteAction
__RTTI__29TaiRandomWanderingRouteAction:
  .4byte 0x802c9aac
  .4byte 0x802c9acc
.global __RTTI__19TaiImpassableAction
__RTTI__19TaiImpassableAction:
  .4byte 0x802c9b08
  .4byte 0x802c9b1c
.global __RTTI__26TaiClampMinVelocityYAction
__RTTI__26TaiClampMinVelocityYAction:
  .4byte 0x802c9b44
  .4byte 0x802c9b60
.global __RTTI__23TaiClampMinHeightAction
__RTTI__23TaiClampMinHeightAction:
  .4byte 0x802c9b88
  .4byte 0x802c9ba0
.global __RTTI__23TaiClampMaxHeightAction
__RTTI__23TaiClampMaxHeightAction:
  .4byte 0x802c9bc8
  .4byte 0x802c9be0
.global __RTTI__26TaiHorizontalSinWaveAction
__RTTI__26TaiHorizontalSinWaveAction:
  .4byte 0x802c9c08
  .4byte 0x802c9c24
.global __RTTI__19TaiCircleMoveAction
__RTTI__19TaiCircleMoveAction:
  .4byte 0x802c9c4c
  .4byte 0x802c9c60
.global __RTTI__17TaiParabolaAction
__RTTI__17TaiParabolaAction:
  .4byte 0x802c9c88
  .4byte 0x802c9c9c
.global __RTTI__21TaiAccelerationAction
__RTTI__21TaiAccelerationAction:
  .4byte 0x802c9cc4
  .4byte 0x802c9cdc
.global __RTTI__24TaiMakingNextDriveAction
__RTTI__24TaiMakingNextDriveAction:
  .4byte 0x802c9d04
  .4byte 0x802c9d20
.global __RTTI__27TaiMakingNextVelocityAction
__RTTI__27TaiMakingNextVelocityAction:
  .4byte 0x802c9d48
  .4byte 0x802c9d64
.global __RTTI__34TaiMakeAccelerationDirectionAction
__RTTI__34TaiMakeAccelerationDirectionAction:
  .4byte 0x802c9d8c
  .4byte 0x802c9db0
.global __RTTI__30TaiMakeVelocityDirectionAction
__RTTI__30TaiMakeVelocityDirectionAction:
  .4byte 0x802c9dd8
  .4byte 0x802c9df8
.global __RTTI__21TaiFinishFlyingAction
__RTTI__21TaiFinishFlyingAction:
  .4byte 0x802c9e20
  .4byte 0x802c9e38
.global __RTTI__20TaiStartFlyingAction
__RTTI__20TaiStartFlyingAction:
  .4byte 0x802c9e60
  .4byte 0x802c9e78
.global __RTTI__17TaiStopMoveAction
__RTTI__17TaiStopMoveAction:
  .4byte 0x802c9ea0
  .4byte 0x802c9eb4
.global __RTTI__25TaiMoveNestPositionAction
__RTTI__25TaiMoveNestPositionAction:
  .4byte 0x802c9edc
  .4byte 0x802c9ef8
  .4byte 0
.global lbl_803E3C98
lbl_803E3C98:
	.incbin "baserom.dol", 0x2ED5B8, 0x4
.global lbl_803E3C9C
lbl_803E3C9C:
	.incbin "baserom.dol", 0x2ED5BC, 0x4
.global lbl_803E3CA0
lbl_803E3CA0:
	.incbin "baserom.dol", 0x2ED5C0, 0x4
.global lbl_803E3CA4
lbl_803E3CA4:
	.incbin "baserom.dol", 0x2ED5C4, 0x4
.global lbl_803E3CA8
lbl_803E3CA8:
	.incbin "baserom.dol", 0x2ED5C8, 0x4
.global lbl_803E3CAC
lbl_803E3CAC:
	.incbin "baserom.dol", 0x2ED5CC, 0x4
.global lbl_803E3CB0
lbl_803E3CB0:
	.incbin "baserom.dol", 0x2ED5D0, 0x4
.global lbl_803E3CB4
lbl_803E3CB4:
	.incbin "baserom.dol", 0x2ED5D4, 0x4
.global lbl_803E3CB8
lbl_803E3CB8:
	.incbin "baserom.dol", 0x2ED5D8, 0x4
.global lbl_803E3CBC
lbl_803E3CBC:
	.incbin "baserom.dol", 0x2ED5DC, 0xC
.global __RTTI__33TaiNapkidStartDroppingWaterAction
__RTTI__33TaiNapkidStartDroppingWaterAction:
  .4byte 0x802ca088
  .4byte 0x802ca0b8
.global __RTTI__33TaiNapkidFallingWaterEffectAction
__RTTI__33TaiNapkidFallingWaterEffectAction:
  .4byte 0x802ca0e0
  .4byte 0x802ca104
.global __RTTI__27TaiNapkidShockFallingAction
__RTTI__27TaiNapkidShockFallingAction:
  .4byte 0x802ca12c
  .4byte 0x802ca148
.global __RTTI__22TaiNapkidFallingAction
__RTTI__22TaiNapkidFallingAction:
  .4byte 0x802ca170
  .4byte 0x802ca188
.global __RTTI__20TaiNapkidFlickAction
__RTTI__20TaiNapkidFlickAction:
  .4byte 0x802ca1b0
  .4byte 0x802ca1c8
.global __RTTI__27TaiNapkidThrowingPikiAction
__RTTI__27TaiNapkidThrowingPikiAction:
  .4byte 0x802ca1f0
  .4byte 0x802ca20c
.global __RTTI__30TaiNapkidRisingAscendingAction
__RTTI__30TaiNapkidRisingAscendingAction:
  .4byte 0x802ca234
  .4byte 0x802ca254
.global __RTTI__33TaiNapkidTakingOffAscendingAction
__RTTI__33TaiNapkidTakingOffAscendingAction:
  .4byte 0x802ca27c
  .4byte 0x802ca2a0
.global __RTTI__29TaiNapkidCatchAscendingAction
__RTTI__29TaiNapkidCatchAscendingAction:
  .4byte 0x802ca2c8
  .4byte 0x802ca2e8
.global __RTTI__26TaiNapkidCatchFlyingAction
__RTTI__26TaiNapkidCatchFlyingAction:
  .4byte 0x802ca310
  .4byte 0x802ca32c
.global __RTTI__27TaiNapkidCatchTracingAction
__RTTI__27TaiNapkidCatchTracingAction:
  .4byte 0x802ca354
  .4byte 0x802ca370
.global __RTTI__30TaiNapkidCatchDescendingAction
__RTTI__30TaiNapkidCatchDescendingAction:
  .4byte 0x802ca398
  .4byte 0x802ca3b8
  .4byte 0x802ca42c
  .4byte 0
  .4byte 0x802ca438
  .4byte 0x802ca448
.global __RTTI__23TaiNapkidCatchingAction
__RTTI__23TaiNapkidCatchingAction:
  .4byte 0x802ca4a8
  .4byte 0x802ca4c0
.global __RTTI__27TaiNapkidApproachPikiAction
__RTTI__27TaiNapkidApproachPikiAction:
  .4byte 0x802ca4e8
  .4byte 0x802ca504
.global __RTTI__24TaiNapkidAscendingAction
__RTTI__24TaiNapkidAscendingAction:
  .4byte 0x802ca52c
  .4byte 0x802ca548
.global __RTTI__21TaiNapkidFlyingAction
__RTTI__21TaiNapkidFlyingAction:
  .4byte 0x802ca570
  .4byte 0x802ca588
.global __RTTI__23TaiNapkidCirclingAction
__RTTI__23TaiNapkidCirclingAction:
  .4byte 0x802ca5b0
  .4byte 0x802ca5c8
.global __RTTI__29TaiNapkidStraightFlyingAction
__RTTI__29TaiNapkidStraightFlyingAction:
  .4byte 0x802ca5f0
  .4byte 0x802ca610
.global __RTTI__25TaiNapkidShortRangeAction
__RTTI__25TaiNapkidShortRangeAction:
  .4byte 0x802ca638
  .4byte 0x802ca654
.global __RTTI__23TaiNapkidPikiLostAction
__RTTI__23TaiNapkidPikiLostAction:
  .4byte 0x802ca67c
  .4byte 0x802ca694
.global __RTTI__25TaiNapkidTargetPikiAction
__RTTI__25TaiNapkidTargetPikiAction:
  .4byte 0x802ca6bc
  .4byte 0x802ca6d8
  .4byte 0x802ca720
  .4byte 0x802ca730
  .4byte 0x802ca73c
  .4byte 0x802ca758
.global __RTTI__29TaiNapkidWanderingRouteAction
__RTTI__29TaiNapkidWanderingRouteAction:
  .4byte 0x802ca700
  .4byte 0x802ca76c
.global __RTTI__29TekiNapkidShortRangeCondition
__RTTI__29TekiNapkidShortRangeCondition:
  .4byte 0x802ca7a8
  .4byte 0x802ca7c8
.global __RTTI__29TekiNapkidTargetPikiCondition
__RTTI__29TekiNapkidTargetPikiCondition:
  .4byte 0x802ca800
  .4byte 0x802ca820
  .4byte 0x802ca854
  .4byte 0
  .4byte 0x802ca864
  .4byte 0x802ca870
.global __RTTI__17TaiNapkidStrategy
__RTTI__17TaiNapkidStrategy:
  .4byte 0x802ca840
  .4byte 0x802ca87c
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e3dc0
  .4byte 0
  .4byte 0x802ca958
  .4byte 0x802ca964
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e3dd8
  .4byte 0x802ca970
  .4byte 0x802ca984
  .4byte 0x802ca994
.global __RTTI__19TaiNapkidParameters
__RTTI__19TaiNapkidParameters:
  .4byte 0x802ca944
  .4byte 0x802ca9b0
.global lbl_803E3DF8
lbl_803E3DF8:
	.incbin "baserom.dol", 0x2ED718, 0x4
.global lbl_803E3DFC
lbl_803E3DFC:
	.incbin "baserom.dol", 0x2ED71C, 0x4
.global lbl_803E3E00
lbl_803E3E00:
	.incbin "baserom.dol", 0x2ED720, 0x4
.global lbl_803E3E04
lbl_803E3E04:
	.incbin "baserom.dol", 0x2ED724, 0x4
.global lbl_803E3E08
lbl_803E3E08:
	.incbin "baserom.dol", 0x2ED728, 0x4
.global lbl_803E3E0C
lbl_803E3E0C:
	.incbin "baserom.dol", 0x2ED72C, 0x4
.global lbl_803E3E10
lbl_803E3E10:
	.incbin "baserom.dol", 0x2ED730, 0x4
.global lbl_803E3E14
lbl_803E3E14:
	.incbin "baserom.dol", 0x2ED734, 0x4
.global lbl_803E3E18
lbl_803E3E18:
	.incbin "baserom.dol", 0x2ED738, 0x4
.global lbl_803E3E1C
lbl_803E3E1C:
	.incbin "baserom.dol", 0x2ED73C, 0x4
.global lbl_803E3E20
lbl_803E3E20:
	.incbin "baserom.dol", 0x2ED740, 0x4
.global lbl_803E3E24
lbl_803E3E24:
	.incbin "baserom.dol", 0x2ED744, 0x4
.global lbl_803E3E28
lbl_803E3E28:
	.incbin "baserom.dol", 0x2ED748, 0x4
.global lbl_803E3E2C
lbl_803E3E2C:
	.incbin "baserom.dol", 0x2ED74C, 0x4
.global lbl_803E3E30
lbl_803E3E30:
	.incbin "baserom.dol", 0x2ED750, 0x1C
.global __RTTI__25TaiOtimotiLegEffectAction
__RTTI__25TaiOtimotiLegEffectAction:
  .4byte 0x802cab5c
  .4byte 0x802cabd0
.global __RTTI__31TaiOtimotiAttackingEffectAction
__RTTI__31TaiOtimotiAttackingEffectAction:
  .4byte 0x802cac0c
  .4byte 0x802cac2c
.global __RTTI__25TaiOtimotiAttackingAction
__RTTI__25TaiOtimotiAttackingAction:
  .4byte 0x802cac54
  .4byte 0x802cac70
.global __RTTI__24TaiOtimotiBouncingAction
__RTTI__24TaiOtimotiBouncingAction:
  .4byte 0x802cac98
  .4byte 0x802cacb4
  .4byte 0x802cacf0
  .4byte 0
  .4byte 0x802cacfc
  .4byte 0x802cad0c
.global __RTTI__24TaiOtimotiPressingAction
__RTTI__24TaiOtimotiPressingAction:
  .4byte 0x802cad70
  .4byte 0x802cad8c
.global __RTTI__24TaiOtimotiDroppingAction
__RTTI__24TaiOtimotiDroppingAction:
  .4byte 0x802cadb4
  .4byte 0x802cadd0
.global __RTTI__26TaiOtimotiAirWaitingAction
__RTTI__26TaiOtimotiAirWaitingAction:
  .4byte 0x802cadf8
  .4byte 0x802cae14
.global __RTTI__23TaiOtimotiJumpingAction
__RTTI__23TaiOtimotiJumpingAction:
  .4byte 0x802cae3c
  .4byte 0x802cae54
.global __RTTI__26TaiOtimotiFailToJumpAction
__RTTI__26TaiOtimotiFailToJumpAction:
  .4byte 0x802cae7c
  .4byte 0x802cae98
.global __RTTI__21TaiOtimotiFlickAction
__RTTI__21TaiOtimotiFlickAction:
  .4byte 0x802caf0c
  .4byte 0x802caf24
.global __RTTI__34TaiOtimotiStartDroppingWaterAction
__RTTI__34TaiOtimotiStartDroppingWaterAction:
  .4byte 0x802caf4c
  .4byte 0x802caf70
  .4byte 0x802cafac
  .4byte 0
  .4byte 0x802cafbc
  .4byte 0x802cafc8
.global __RTTI__18TaiOtimotiStrategy
__RTTI__18TaiOtimotiStrategy:
  .4byte 0x802caf98
  .4byte 0x802cafd4
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e3ecc
  .4byte 0
  .4byte 0x802cb07c
  .4byte 0x802cb088
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e3ee4
  .4byte 0x802cb094
  .4byte 0x802cb0a8
  .4byte 0x802cb0b8
.global __RTTI__22TaiBlackFrogParameters
__RTTI__22TaiBlackFrogParameters:
  .4byte 0x802cb064
  .4byte 0x802cb0d4
.global __RTTI__20TaiOtimotiParameters
__RTTI__20TaiOtimotiParameters:
  .4byte 0x802cb128
  .4byte 0x802cb140
  .4byte 0
.global lbl_803E3F10
lbl_803E3F10:
	.incbin "baserom.dol", 0x2ED830, 0x4
.global lbl_803E3F14
lbl_803E3F14:
	.incbin "baserom.dol", 0x2ED834, 0x4
.global lbl_803E3F18
lbl_803E3F18:
	.incbin "baserom.dol", 0x2ED838, 0x4
.global lbl_803E3F1C
lbl_803E3F1C:
	.incbin "baserom.dol", 0x2ED83C, 0xC
.global __RTTI__26TaiPalmChangingColorAction
__RTTI__26TaiPalmChangingColorAction:
  .4byte 0x802cb1f0
  .4byte 0x802cb218
.global __RTTI__26TaiPalmSettingPelletAction
__RTTI__26TaiPalmSettingPelletAction:
  .4byte 0x802cb240
  .4byte 0x802cb25c
.global __RTTI__22TaiPalmSunflowerAction
__RTTI__22TaiPalmSunflowerAction:
  .4byte 0x802cb284
  .4byte 0x802cb29c
.global __RTTI__25TaiPalmFlowerDamageAction
__RTTI__25TaiPalmFlowerDamageAction:
  .4byte 0x802cb2c4
  .4byte 0x802cb2e0
.global __RTTI__17TaiPalmGrowAction
__RTTI__17TaiPalmGrowAction:
  .4byte 0x802cb308
  .4byte 0x802cb31c
.global __RTTI__20TaiPalmGrowingAction
__RTTI__20TaiPalmGrowingAction:
  .4byte 0x802cb344
  .4byte 0x802cb35c
  .4byte 0x802cb39c
  .4byte 0x802cb3ac
.global __RTTI__17TaiDamagingAction
__RTTI__17TaiDamagingAction:
  .4byte 0x802cb3b8
  .4byte 0x802cb3cc
.global __RTTI__21TaiPalmDamagingAction
__RTTI__21TaiPalmDamagingAction:
  .4byte 0x802cb384
  .4byte 0x802cb3e0
.global __RTTI__14TaiDyingAction
__RTTI__14TaiDyingAction:
  .4byte 0x802cb42c
  .4byte 0x802cb43c
.global __RTTI__18TaiPalmDyingAction
__RTTI__18TaiPalmDyingAction:
  .4byte 0x802cb418
  .4byte 0x802cb450
.global __RTTI__19TaiPalmMotionAction
__RTTI__19TaiPalmMotionAction:
  .4byte 0x802cb488
  .4byte 0x802cb49c
  .4byte 0x802cb4e0
  .4byte 0
  .4byte 0x802cb4ec
  .4byte 0x802cb4fc
  .4byte 0x802cb584
  .4byte 0
  .4byte 0x802cb594
  .4byte 0x802cb5a0
.global __RTTI__15TaiPalmStrategy
__RTTI__15TaiPalmStrategy:
  .4byte 0x802cb574
  .4byte 0x802cb5ac
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e3fb0
  .4byte 0
  .4byte 0x802cb618
  .4byte 0x802cb624
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e3fc8
  .4byte 0x802cb630
  .4byte 0x802cb644
  .4byte 0x802cb654
.global __RTTI__17TaiPalmParameters
__RTTI__17TaiPalmParameters:
  .4byte 0x802cb604
  .4byte 0x802cb670
  .4byte 0x802cb708
  .4byte 0
.global __RTTI__19TaiDangerLifeAction
__RTTI__19TaiDangerLifeAction:
  .4byte 0x802cb6f4
  .4byte 0x802cb714
.global __RTTI__13TaiWarnAction
__RTTI__13TaiWarnAction:
  .4byte 0x802cb73c
  .4byte 0x802cb74c
.global __RTTI__16TaiPressedAction
__RTTI__16TaiPressedAction:
  .4byte 0x802cb774
  .4byte 0x802cb788
.global __RTTI__21TaiBeingPressedAction
__RTTI__21TaiBeingPressedAction:
  .4byte 0x802cb7b0
  .4byte 0x802cb7c8
.global __RTTI__16TaiSmashedAction_1
__RTTI__16TaiSmashedAction_1:
  .4byte 0x802cb7f0
  .4byte 0x802cb804
.global __RTTI__16TaiStickedAction
__RTTI__16TaiStickedAction:
  .4byte 0x802cb82c
  .4byte 0x802cb840
  .4byte 0x802cb87c
  .4byte 0
  .4byte 0x802cb888
  .4byte 0x802cb898
.global __RTTI__31TaiTargetNearestCollisionAction
__RTTI__31TaiTargetNearestCollisionAction:
  .4byte 0x802cb8dc
  .4byte 0x802cb8fc
.global __RTTI__31TaiTargetNearestAssailantAction
__RTTI__31TaiTargetNearestAssailantAction:
  .4byte 0x802cb924
  .4byte 0x802cb944
  .4byte 0x802cb980
  .4byte 0x802cb990
.global __RTTI__17TaiDamagingAction_1
__RTTI__17TaiDamagingAction_1:
  .4byte 0x802cb96c
  .4byte 0x802cb99c
.global __RTTI__40TaiCounterattackSimultaneousDamageAction
__RTTI__40TaiCounterattackSimultaneousDamageAction:
  .4byte 0x802cb9cc
  .4byte 0x802cb9f8
.global __RTTI__27TaiSimultaneousDamageAction
__RTTI__27TaiSimultaneousDamageAction:
  .4byte 0x802cba20
  .4byte 0x802cba3c
.global __RTTI__15TaiDamageAction
__RTTI__15TaiDamageAction:
  .4byte 0x802cba64
  .4byte 0x802cba74
.global __RTTI__20TaiDamageScaleAction
__RTTI__20TaiDamageScaleAction:
  .4byte 0x802cba9c
  .4byte 0x802cbab4
.global __RTTI__20TaiDamageCountAction
__RTTI__20TaiDamageCountAction:
  .4byte 0x802cbadc
  .4byte 0x802cbaf4
.global __RTTI__25TaiDamageCountResetAction
__RTTI__25TaiDamageCountResetAction:
  .4byte 0x802cbb1c
  .4byte 0x802cbb38
.global __RTTI__14TaiDyingAction_1
__RTTI__14TaiDyingAction_1:
  .4byte 0x802cbb60
  .4byte 0x802cbb70
.global __RTTI__25TaiCreateDeadEffectAction
__RTTI__25TaiCreateDeadEffectAction:
  .4byte 0x802cbba0
  .4byte 0x802cbbbc
.global __RTTI__19TaiSpawnItemsAction
__RTTI__19TaiSpawnItemsAction:
  .4byte 0x802cbbe4
  .4byte 0x802cbbf8
.global __RTTI__19TaiStartDyingAction
__RTTI__19TaiStartDyingAction:
  .4byte 0x802cbc20
  .4byte 0x802cbc34
.global __RTTI__12TaiDyeAction
__RTTI__12TaiDyeAction:
  .4byte 0x802cbc5c
  .4byte 0x802cbc6c
.global __RTTI__19TaiLifeDamageAction
__RTTI__19TaiLifeDamageAction:
  .4byte 0x802cbc94
  .4byte 0x802cbca8
.global __RTTI__17TaiLifeZeroAction
__RTTI__17TaiLifeZeroAction:
  .4byte 0x802cbcd0
  .4byte 0x802cbce4
.global __RTTI__13TaiDeadAction
__RTTI__13TaiDeadAction:
  .4byte 0x802cbd0c
  .4byte 0x802cbd1c
.global lbl_803E40C0
lbl_803E40C0:
	.incbin "baserom.dol", 0x2ED9E0, 0x4
.global lbl_803E40C4
lbl_803E40C4:
	.incbin "baserom.dol", 0x2ED9E4, 0x4
.global lbl_803E40C8
lbl_803E40C8:
	.incbin "baserom.dol", 0x2ED9E8, 0x4
.global lbl_803E40CC
lbl_803E40CC:
	.incbin "baserom.dol", 0x2ED9EC, 0x1C
.global __RTTI__35TaiSwallowMissAttackingEffectAction
__RTTI__35TaiSwallowMissAttackingEffectAction:
  .4byte 0x802cbdf8
  .4byte 0x802cbe74
.global __RTTI__25TaiSwallowLegEffectAction
__RTTI__25TaiSwallowLegEffectAction:
  .4byte 0x802cbeb0
  .4byte 0x802cbecc
.global __RTTI__22TaiSwallowNoticeAction
__RTTI__22TaiSwallowNoticeAction:
  .4byte 0x802cbf08
  .4byte 0x802cbf20
.global __RTTI__21TaiSwallowSnoreAction
__RTTI__21TaiSwallowSnoreAction:
  .4byte 0x802cbf48
  .4byte 0x802cbf60
.global __RTTI__31TaiSwallowSwallowingFlickAction
__RTTI__31TaiSwallowSwallowingFlickAction:
  .4byte 0x802cbf88
  .4byte 0x802cbfa8
  .4byte 0x802cbfe4
  .4byte 0
  .4byte 0x802cbff0
  .4byte 0x802cc000
  .4byte 0x802cc080
  .4byte 0x802cc090
.global __RTTI__24TaiSwallowFlickingAction
__RTTI__24TaiSwallowFlickingAction:
  .4byte 0x802cc064
  .4byte 0x802cc09c
  .4byte 0x802cc130
  .4byte 0x802cc14c
.global __RTTI__23TaiSwallowTurningAction
__RTTI__23TaiSwallowTurningAction:
  .4byte 0x802cc118
  .4byte 0x802cc160
.global __RTTI__30TaiSwallowReceiveMessageAction
__RTTI__30TaiSwallowReceiveMessageAction:
  .4byte 0x802cc19c
  .4byte 0x802cc1bc
  .4byte 0x802cc1f8
  .4byte 0
  .4byte 0x802cc208
  .4byte 0x802cc214
.global __RTTI__18TaiSwallowStrategy
__RTTI__18TaiSwallowStrategy:
  .4byte 0x802cc1e4
  .4byte 0x802cc220
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e4160
  .4byte 0
  .4byte 0x802cc2cc
  .4byte 0x802cc2d8
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e4178
  .4byte 0x802cc2e4
  .4byte 0x802cc2f8
  .4byte 0x802cc308
.global __RTTI__25TaiBlackSwallowParameters
__RTTI__25TaiBlackSwallowParameters:
  .4byte 0x802cc2b0
  .4byte 0x802cc324
.global __RTTI__20TaiSwallowParameters
__RTTI__20TaiSwallowParameters:
  .4byte 0x802cc378
  .4byte 0x802cc390
.global lbl_803E41A0
lbl_803E41A0:
	.incbin "baserom.dol", 0x2EDAC0, 0x4
.global lbl_803E41A4
lbl_803E41A4:
	.incbin "baserom.dol", 0x2EDAC4, 0x4
.global lbl_803E41A8
lbl_803E41A8:
	.incbin "baserom.dol", 0x2EDAC8, 0xC
.global __RTTI__26TaiPearlTresureSoundAction
__RTTI__26TaiPearlTresureSoundAction:
  .4byte 0x802cc428
  .4byte 0x802cc450
  .4byte 0x802cc48c
  .4byte 0
  .4byte 0x802cc49c
  .4byte 0x802cc4a8
.global __RTTI__16TaiPearlStrategy
__RTTI__16TaiPearlStrategy:
  .4byte 0x802cc478
  .4byte 0x802cc4b4
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e41d4
  .4byte 0
  .4byte 0x802cc508
  .4byte 0x802cc514
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e41ec
  .4byte 0x802cc520
  .4byte 0x802cc534
  .4byte 0x802cc544
.global __RTTI__21TaiRocpearlParameters
__RTTI__21TaiRocpearlParameters:
  .4byte 0x802cc4f0
  .4byte 0x802cc560
.global __RTTI__18TaiPearlParameters
__RTTI__18TaiPearlParameters:
  .4byte 0x802cc5b4
  .4byte 0x802cc5c8
  .4byte 0x802cc668
  .4byte 0
  .4byte 0x802cc674
  .4byte 0x802cc684
.global __RTTI__17TaiShellEatAction
__RTTI__17TaiShellEatAction:
  .4byte 0x802cc6e4
  .4byte 0x802cc6f8
.global __RTTI__28TaiShellNaviPikiInsideAction
__RTTI__28TaiShellNaviPikiInsideAction:
  .4byte 0x802cc738
  .4byte 0x802cc758
.global __RTTI__30TaiShellSaveItemPositionAction
__RTTI__30TaiShellSaveItemPositionAction:
  .4byte 0x802cc780
  .4byte 0x802cc7a0
.global __RTTI__25TaiShellSetPositionAction
__RTTI__25TaiShellSetPositionAction:
  .4byte 0x802cc7c8
  .4byte 0x802cc7e4
.global __RTTI__16TaiShellStrategy
__RTTI__16TaiShellStrategy:
  .4byte 0x802cc80c
  .4byte 0x802cc820
.global __RTTI__18TaiShellParameters
__RTTI__18TaiShellParameters:
  .4byte 0x802cc8b0
  .4byte 0x802cc8c4
  .4byte 0
  .4byte 0x802cc954
  .4byte 0
  .4byte 0x802cc960
  .4byte 0x802cc970
.global __RTTI__22TaiStartingTimerAction
__RTTI__22TaiStartingTimerAction:
  .4byte 0x802cc93c
  .4byte 0x802cc97c
.global __RTTI__21TaiTimerElapsedAction
__RTTI__21TaiTimerElapsedAction:
  .4byte 0x802cc9ac
  .4byte 0x802cc9c4
.global __RTTI__19TaiResetTimerAction
__RTTI__19TaiResetTimerAction:
  .4byte 0x802cc9ec
  .4byte 0x802cca00
  .4byte 0x802cca84
  .4byte 0
  .4byte 0x802cca90
  .4byte 0x802ccaa0
.global __RTTI__20TaiWaitTurningAction
__RTTI__20TaiWaitTurningAction:
  .4byte 0x802cca6c
  .4byte 0x802ccaac
  .4byte 0x54656b69
  .4byte 0
.global __RTTI__10PelletView_1
__RTTI__10PelletView_1:
  .4byte 0x802ccaec
  .4byte 0
  .4byte 0x802ccaf8
  .4byte 0
  .4byte 0x802ccb0c
  .4byte 0
  .4byte 0x802ccb18
  .4byte 0
  .4byte 0x802ccb28
  .4byte 0x802ccb34
  .4byte 0x4254656b
  .4byte 0x69000000
  .4byte 0x803e42c8
  .4byte 0x802ccb48
  .4byte 0x4e54656b
  .4byte 0x69000000
  .4byte 0x803e42d8
  .4byte 0x802ccb74
  .4byte 0x5954656b
  .4byte 0x69000000
  .4byte 0x803e42e8
  .4byte 0x802ccba8
.global __RTTI__4Teki
__RTTI__4Teki:
  .4byte 0x803e4298
  .4byte 0x802ccbe4
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e4300
  .4byte 0
  .4byte 0x802cce84
  .4byte 0x802cce90
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e4318
  .4byte 0x802cce9c
.global __RTTI__20TekiAnimationManager
__RTTI__20TekiAnimationManager:
  .4byte lbl_802CCE6C
  .4byte 0x802cceb0
.global lbl_803E4330
lbl_803E4330:
	.incbin "baserom.dol", 0x2EDC50, 0x4
.global lbl_803E4334
lbl_803E4334:
	.incbin "baserom.dol", 0x2EDC54, 0x4
.global lbl_803E4338
lbl_803E4338:
	.incbin "baserom.dol", 0x2EDC58, 0x4
.global lbl_803E433C
lbl_803E433C:
	.incbin "baserom.dol", 0x2EDC5C, 0x4
.global lbl_803E4340
lbl_803E4340:
	.incbin "baserom.dol", 0x2EDC60, 0x4
.global lbl_803E4344
lbl_803E4344:
	.incbin "baserom.dol", 0x2EDC64, 0x4
.global lbl_803E4348
lbl_803E4348:
	.incbin "baserom.dol", 0x2EDC68, 0x4
.global TEKI_OPTION_VISIBLE__5BTeki
TEKI_OPTION_VISIBLE__5BTeki:
	.incbin "baserom.dol", 0x2EDC6C, 0x4
.global TEKI_OPTION_SHADOW_VISIBLE__5BTeki
TEKI_OPTION_SHADOW_VISIBLE__5BTeki:
	.incbin "baserom.dol", 0x2EDC70, 0x4
.global TEKI_OPTION_LIFE_GAUGE_VISIBLE__5BTeki
TEKI_OPTION_LIFE_GAUGE_VISIBLE__5BTeki:
	.incbin "baserom.dol", 0x2EDC74, 0x4
.global TEKI_OPTION_ATARI__5BTeki
TEKI_OPTION_ATARI__5BTeki:
	.incbin "baserom.dol", 0x2EDC78, 0x4
.global TEKI_OPTION_ALIVE__5BTeki
TEKI_OPTION_ALIVE__5BTeki:
	.incbin "baserom.dol", 0x2EDC7C, 0x4
.global TEKI_OPTION_ORGANIC__5BTeki
TEKI_OPTION_ORGANIC__5BTeki:
	.incbin "baserom.dol", 0x2EDC80, 0x4
.global TEKI_OPTION_MANUAL_ANIMATION__5BTeki
TEKI_OPTION_MANUAL_ANIMATION__5BTeki:
	.incbin "baserom.dol", 0x2EDC84, 0x4
.global TEKI_OPTION_GRAVITATABLE__5BTeki
TEKI_OPTION_GRAVITATABLE__5BTeki:
	.incbin "baserom.dol", 0x2EDC88, 0x4
.global TEKI_OPTION_INVINCIBLE__5BTeki
TEKI_OPTION_INVINCIBLE__5BTeki:
	.incbin "baserom.dol", 0x2EDC8C, 0x4
.global TEKI_OPTION_PRESSED__5BTeki
TEKI_OPTION_PRESSED__5BTeki:
	.incbin "baserom.dol", 0x2EDC90, 0x4
.global TEKI_OPTION_DRAWED__5BTeki
TEKI_OPTION_DRAWED__5BTeki:
	.incbin "baserom.dol", 0x2EDC94, 0x4
.global TEKI_OPTION_SHAPE_VISIBLE__5BTeki
TEKI_OPTION_SHAPE_VISIBLE__5BTeki:
	.incbin "baserom.dol", 0x2EDC98, 0x4
.global TEKI_OPTION_DAMAGE_COUNTABLE__5BTeki
TEKI_OPTION_DAMAGE_COUNTABLE__5BTeki:
	.incbin "baserom.dol", 0x2EDC9C, 0x4
.global ANIMATION_KEY_OPTION_FINISHED__5BTeki
ANIMATION_KEY_OPTION_FINISHED__5BTeki:
	.incbin "baserom.dol", 0x2EDCA0, 0x4
.global ANIMATION_KEY_OPTION_ACTION_0__5BTeki
ANIMATION_KEY_OPTION_ACTION_0__5BTeki:
	.incbin "baserom.dol", 0x2EDCA4, 0x4
.global ANIMATION_KEY_OPTION_ACTION_1__5BTeki
ANIMATION_KEY_OPTION_ACTION_1__5BTeki:
	.incbin "baserom.dol", 0x2EDCA8, 0x4
.global ANIMATION_KEY_OPTION_ACTION_2__5BTeki
ANIMATION_KEY_OPTION_ACTION_2__5BTeki:
	.incbin "baserom.dol", 0x2EDCAC, 0x4
.global ANIMATION_KEY_OPTION_LOOPSTART__5BTeki
ANIMATION_KEY_OPTION_LOOPSTART__5BTeki:
	.incbin "baserom.dol", 0x2EDCB0, 0x4
.global ANIMATION_KEY_OPTION_LOOPEND__5BTeki
ANIMATION_KEY_OPTION_LOOPEND__5BTeki:
	.incbin "baserom.dol", 0x2EDCB4, 0x4
.global lbl_803E4398
lbl_803E4398:
	.incbin "baserom.dol", 0x2EDCB8, 0x4
.global lbl_803E439C
lbl_803E439C:
	.incbin "baserom.dol", 0x2EDCBC, 0x4
.global lbl_803E43A0
lbl_803E43A0:
	.incbin "baserom.dol", 0x2EDCC0, 0x4
.global lbl_803E43A4
lbl_803E43A4:
	.incbin "baserom.dol", 0x2EDCC4, 0x4
.global lbl_803E43A8
lbl_803E43A8:
	.incbin "baserom.dol", 0x2EDCC8, 0x4
.global lbl_803E43AC
lbl_803E43AC:
	.incbin "baserom.dol", 0x2EDCCC, 0x4
.global lbl_803E43B0
lbl_803E43B0:
	.incbin "baserom.dol", 0x2EDCD0, 0x4
.global lbl_803E43B4
lbl_803E43B4:
	.incbin "baserom.dol", 0x2EDCD4, 0x4
.global lbl_803E43B8
lbl_803E43B8:
	.incbin "baserom.dol", 0x2EDCD8, 0x4
.global lbl_803E43BC
lbl_803E43BC:
	.incbin "baserom.dol", 0x2EDCDC, 0x4
.global lbl_803E43C0
lbl_803E43C0:
	.incbin "baserom.dol", 0x2EDCE0, 0x4
.global lbl_803E43C4
lbl_803E43C4:
	.incbin "baserom.dol", 0x2EDCE4, 0x4
.global lbl_803E43C8
lbl_803E43C8:
	.incbin "baserom.dol", 0x2EDCE8, 0x4
.global lbl_803E43CC
lbl_803E43CC:
	.incbin "baserom.dol", 0x2EDCEC, 0x4
.global lbl_803E43D0
lbl_803E43D0:
	.incbin "baserom.dol", 0x2EDCF0, 0x4
.global lbl_803E43D4
lbl_803E43D4:
	.incbin "baserom.dol", 0x2EDCF4, 0x4
.global lbl_803E43D8
lbl_803E43D8:
	.incbin "baserom.dol", 0x2EDCF8, 0x4
.global lbl_803E43DC
lbl_803E43DC:
	.incbin "baserom.dol", 0x2EDCFC, 0x4
.global lbl_803E43E0
lbl_803E43E0:
	.incbin "baserom.dol", 0x2EDD00, 0x4
.global lbl_803E43E4
lbl_803E43E4:
	.incbin "baserom.dol", 0x2EDD04, 0x4
.global lbl_803E43E8
lbl_803E43E8:
	.incbin "baserom.dol", 0x2EDD08, 0x4
.global lbl_803E43EC
lbl_803E43EC:
	.incbin "baserom.dol", 0x2EDD0C, 0x4
.global lbl_803E43F0
lbl_803E43F0:
	.incbin "baserom.dol", 0x2EDD10, 0x4
.global lbl_803E43F4
lbl_803E43F4:
	.incbin "baserom.dol", 0x2EDD14, 0x4
.global lbl_803E43F8
lbl_803E43F8:
	.incbin "baserom.dol", 0x2EDD18, 0x4
.global lbl_803E43FC
lbl_803E43FC:
	.incbin "baserom.dol", 0x2EDD1C, 0x4
.global lbl_803E4400
lbl_803E4400:
	.incbin "baserom.dol", 0x2EDD20, 0x4
.global lbl_803E4404
lbl_803E4404:
	.incbin "baserom.dol", 0x2EDD24, 0x4
.global lbl_803E4408
lbl_803E4408:
	.incbin "baserom.dol", 0x2EDD28, 0x4
.global lbl_803E440C
lbl_803E440C:
	.incbin "baserom.dol", 0x2EDD2C, 0x4
.global lbl_803E4410
lbl_803E4410:
	.incbin "baserom.dol", 0x2EDD30, 0x4
.global lbl_803E4414
lbl_803E4414:
	.incbin "baserom.dol", 0x2EDD34, 0x4
.global lbl_803E4418
lbl_803E4418:
	.incbin "baserom.dol", 0x2EDD38, 0x4
.global lbl_803E441C
lbl_803E441C:
	.incbin "baserom.dol", 0x2EDD3C, 0x1C
.global __RTTI__11NVector3fIO_2
__RTTI__11NVector3fIO_2:
  .4byte 0x802cd070
  .4byte 0
.global __RTTI__10PelletView_2
__RTTI__10PelletView_2:
  .4byte 0x802cd0a8
  .4byte 0
  .4byte 0x802cd0e8
  .4byte 0
  .4byte 0x4254656b
  .4byte 0x69000000
  .4byte 0x802cd108
  .4byte 0
  .4byte 0x802cd114
  .4byte 0
  .4byte 0x802cd124
  .4byte 0x802cd130
  .4byte 0x803e4450
  .4byte 0x802cd144
  .4byte 0x802cd3a8
  .4byte 0
  .4byte 0x802cd3b4
  .4byte 0x802cd3c4
.global __RTTI__18TekiAngleCondition
__RTTI__18TekiAngleCondition:
  .4byte 0x802cd394
  .4byte 0x802cd3d0
.global __RTTI__18TekiLowerCondition
__RTTI__18TekiLowerCondition:
  .4byte 0x802cd470
  .4byte 0x802cd484
.global __RTTI__26TekiVisibleHeightCondition
__RTTI__26TekiVisibleHeightCondition:
  .4byte 0x802cd4a4
  .4byte 0x802cd4c0
.global __RTTI__20TekiVisibleCondition
__RTTI__20TekiVisibleCondition:
  .4byte 0x802cd4e0
  .4byte 0x802cd4f8
.global __RTTI__23TekiAttackableCondition
__RTTI__23TekiAttackableCondition:
  .4byte 0x802cd518
  .4byte 0x802cd530
.global __RTTI__23TekiLowerRangeCondition
__RTTI__23TekiLowerRangeCondition:
  .4byte 0x802cd550
  .4byte 0x802cd568
.global __RTTI__20TekiStickerCondition
__RTTI__20TekiStickerCondition:
  .4byte 0x802cd588
  .4byte 0x802cd5a0
.global __RTTI__27TekiSphereDistanceCondition
__RTTI__27TekiSphereDistanceCondition:
  .4byte 0x802cd5c0
  .4byte 0x802cd5dc
.global __RTTI__21TekiDistanceCondition
__RTTI__21TekiDistanceCondition:
  .4byte 0x802cd5fc
  .4byte 0x802cd614
.global __RTTI__28TekiCreaturePointerCondition
__RTTI__28TekiCreaturePointerCondition:
  .4byte 0x802cd634
  .4byte 0x802cd654
.global __RTTI__24TekiRecognitionCondition
__RTTI__24TekiRecognitionCondition:
  .4byte 0x802cd674
  .4byte 0x802cd690
.global __RTTI__21TekiStickingCondition
__RTTI__21TekiStickingCondition:
  .4byte 0x802cd6b0
  .4byte 0x802cd6c8
.global __RTTI__35TekiPositionSphereDistanceCondition
__RTTI__35TekiPositionSphereDistanceCondition:
  .4byte 0x802cd6e8
  .4byte 0x802cd70c
.global __RTTI__35TekiPositionCircleDistanceCondition
__RTTI__35TekiPositionCircleDistanceCondition:
  .4byte 0x802cd72c
  .4byte 0x802cd750
.global __RTTI__29TekiPositionDistanceCondition
__RTTI__29TekiPositionDistanceCondition:
  .4byte 0x802cd770
  .4byte 0x802cd790
.global __RTTI__19TekiPelletCondition
__RTTI__19TekiPelletCondition:
  .4byte 0x802cd7b0
  .4byte 0x802cd7c4
.global __RTTI__21TekiNaviPikiCondition
__RTTI__21TekiNaviPikiCondition:
  .4byte 0x802cd7e4
  .4byte 0x802cd7fc
.global __RTTI__17TekiNaviCondition
__RTTI__17TekiNaviCondition:
  .4byte 0x802cd81c
  .4byte 0x802cd830
.global __RTTI__17TekiFreeCondition
__RTTI__17TekiFreeCondition:
  .4byte 0x802cd850
  .4byte 0x802cd864
.global __RTTI__17TekiTypeCondition
__RTTI__17TekiTypeCondition:
  .4byte 0x802cd884
  .4byte 0x802cd898
.global __RTTI__18TekiStateCondition
__RTTI__18TekiStateCondition:
  .4byte 0x802cd8b8
  .4byte 0x802cd8cc
.global __RTTI__22TekiPikiStateCondition
__RTTI__22TekiPikiStateCondition:
  .4byte 0x802cd8ec
  .4byte 0x802cd904
  .4byte 0x802cd960
  .4byte 0
.global __RTTI__17InteractHitEffect
__RTTI__17InteractHitEffect:
  .4byte 0x802cd94c
  .4byte 0x802cd96c
.global __RTTI__12InteractBomb
__RTTI__12InteractBomb:
  .4byte 0x802cd9d0
  .4byte 0x802cd9e0
.global lbl_803E4550
lbl_803E4550:
	.incbin "baserom.dol", 0x2EDE70, 0x104
.global lbl_803E4654
lbl_803E4654:
	.incbin "baserom.dol", 0x2EDF74, 0x4
.global lbl_803E4658
lbl_803E4658:
	.incbin "baserom.dol", 0x2EDF78, 0x50
.global __RTTI__7TekiMgr
__RTTI__7TekiMgr:
  .4byte 0x803e4660
  .4byte 0x802cdc64
  .4byte 0x4e54656b
  .4byte 0x69000000
.global __RTTI__10PelletView_3
__RTTI__10PelletView_3:
  .4byte 0x802cdd3c
  .4byte 0
  .4byte 0x802cdd48
  .4byte 0
  .4byte 0x802cdd5c
  .4byte 0
  .4byte 0x802cdd68
  .4byte 0
  .4byte 0x802cdd78
  .4byte 0x802cdd84
  .4byte 0x4254656b
  .4byte 0x69000000
  .4byte 0x803e46e0
  .4byte 0x802cdd98
  .4byte 0x803e46b0
  .4byte 0x802cddc4
.global lbl_803E46F8
lbl_803E46F8:
	.incbin "baserom.dol", 0x2EE018, 0x8
.global lbl_803E4700
lbl_803E4700:
	.incbin "baserom.dol", 0x2EE020, 0x8
.global lbl_803E4708
lbl_803E4708:
	.incbin "baserom.dol", 0x2EE028, 0x8
.global lbl_803E4710
lbl_803E4710:
	.incbin "baserom.dol", 0x2EE030, 0x38
.global lbl_803E4748
lbl_803E4748:
	.incbin "baserom.dol", 0x2EE068, 0x8
.global lbl_803E4750
lbl_803E4750:
	.incbin "baserom.dol", 0x2EE070, 0x4
.global lbl_803E4754
lbl_803E4754:
	.incbin "baserom.dol", 0x2EE074, 0x4
.global lbl_803E4758
lbl_803E4758:
	.incbin "baserom.dol", 0x2EE078, 0x4
.global lbl_803E475C
lbl_803E475C:
	.incbin "baserom.dol", 0x2EE07C, 0x4
.global lbl_803E4760
lbl_803E4760:
	.incbin "baserom.dol", 0x2EE080, 0x4
.global lbl_803E4764
lbl_803E4764:
	.incbin "baserom.dol", 0x2EE084, 0x4
.global __RTTI__15TekiPersonality
__RTTI__15TekiPersonality:
  .4byte 0x802ce68c
  .4byte 0
  .4byte 0x802ce6d4
  .4byte 0
  .4byte 0x802ce750
  .4byte 0
  .4byte 0x47656e42
  .4byte 0x61736500
  .4byte 0x803e4780
  .4byte 0x802ce75c
  .4byte 0x802ce768
  .4byte 0x802ce774
.global __RTTI__13GenObjectBoss
__RTTI__13GenObjectBoss:
  .4byte 0x802ce740
  .4byte 0x802ce788
  .4byte 0x426f7373
  .4byte 0
.global lbl_803E47A8
lbl_803E47A8:
	.incbin "baserom.dol", 0x2EE0C8, 0x4
.global lbl_803E47AC
lbl_803E47AC:
	.incbin "baserom.dol", 0x2EE0CC, 0x4
.global lbl_803E47B0
lbl_803E47B0:
	.incbin "baserom.dol", 0x2EE0D0, 0x4
.global lbl_803E47B4
lbl_803E47B4:
	.incbin "baserom.dol", 0x2EE0D4, 0x4
.global lbl_803E47B8
lbl_803E47B8:
	.incbin "baserom.dol", 0x2EE0D8, 0x4
.global lbl_803E47BC
lbl_803E47BC:
	.incbin "baserom.dol", 0x2EE0DC, 0x4
.global lbl_803E47C0
lbl_803E47C0:
	.incbin "baserom.dol", 0x2EE0E0, 0x4
.global lbl_803E47C4
lbl_803E47C4:
	.incbin "baserom.dol", 0x2EE0E4, 0x4
.global lbl_803E47C8
lbl_803E47C8:
	.incbin "baserom.dol", 0x2EE0E8, 0x4
.global lbl_803E47CC
lbl_803E47CC:
	.incbin "baserom.dol", 0x2EE0EC, 0x4
.global lbl_803E47D0
lbl_803E47D0:
	.incbin "baserom.dol", 0x2EE0F0, 0x4
.global lbl_803E47D4
lbl_803E47D4:
	.incbin "baserom.dol", 0x2EE0F4, 0x4
.global lbl_803E47D8
lbl_803E47D8:
	.incbin "baserom.dol", 0x2EE0F8, 0x4
.global lbl_803E47DC
lbl_803E47DC:
	.incbin "baserom.dol", 0x2EE0FC, 0x4
.global lbl_803E47E0
lbl_803E47E0:
	.incbin "baserom.dol", 0x2EE100, 0x4
.global lbl_803E47E4
lbl_803E47E4:
	.incbin "baserom.dol", 0x2EE104, 0x4
.global lbl_803E47E8
lbl_803E47E8:
	.incbin "baserom.dol", 0x2EE108, 0x4
.global lbl_803E47EC
lbl_803E47EC:
	.incbin "baserom.dol", 0x2EE10C, 0x4
.global lbl_803E47F0
lbl_803E47F0:
	.incbin "baserom.dol", 0x2EE110, 0x4
.global lbl_803E47F4
lbl_803E47F4:
	.incbin "baserom.dol", 0x2EE114, 0x4
.global lbl_803E47F8
lbl_803E47F8:
	.incbin "baserom.dol", 0x2EE118, 0x4
.global lbl_803E47FC
lbl_803E47FC:
	.incbin "baserom.dol", 0x2EE11C, 0x4
.global lbl_803E4800
lbl_803E4800:
	.incbin "baserom.dol", 0x2EE120, 0x4
.global lbl_803E4804
lbl_803E4804:
	.incbin "baserom.dol", 0x2EE124, 0x4
.global lbl_803E4808
lbl_803E4808:
	.incbin "baserom.dol", 0x2EE128, 0x4
.global lbl_803E480C
lbl_803E480C:
	.incbin "baserom.dol", 0x2EE12C, 0x4
.global lbl_803E4810
lbl_803E4810:
	.incbin "baserom.dol", 0x2EE130, 0x4
.global lbl_803E4814
lbl_803E4814:
	.incbin "baserom.dol", 0x2EE134, 0x4
.global lbl_803E4818
lbl_803E4818:
	.incbin "baserom.dol", 0x2EE138, 0x4
.global lbl_803E481C
lbl_803E481C:
	.incbin "baserom.dol", 0x2EE13C, 0x4
.global lbl_803E4820
lbl_803E4820:
	.incbin "baserom.dol", 0x2EE140, 0x4
.global lbl_803E4824
lbl_803E4824:
	.incbin "baserom.dol", 0x2EE144, 0x4
.global lbl_803E4828
lbl_803E4828:
	.incbin "baserom.dol", 0x2EE148, 0x4
.global lbl_803E482C
lbl_803E482C:
	.incbin "baserom.dol", 0x2EE14C, 0x4
.global lbl_803E4830
lbl_803E4830:
	.incbin "baserom.dol", 0x2EE150, 0x4
.global lbl_803E4834
lbl_803E4834:
	.incbin "baserom.dol", 0x2EE154, 0x4
.global lbl_803E4838
lbl_803E4838:
	.incbin "baserom.dol", 0x2EE158, 0x4
.global lbl_803E483C
lbl_803E483C:
	.incbin "baserom.dol", 0x2EE15C, 0x4
.global lbl_803E4840
lbl_803E4840:
	.incbin "baserom.dol", 0x2EE160, 0x68
.global __RTTI__20BossAnimationManager
__RTTI__20BossAnimationManager:
  .4byte lbl_802CEA9C
  .4byte 0x802ceae0
  .4byte 0x802ceb64
  .4byte 0
.global __RTTI__15CndBossCollKill
__RTTI__15CndBossCollKill:
  .4byte 0x802ceb54
  .4byte 0x802ceb70
.global __RTTI__17CndStickMouthKill
__RTTI__17CndStickMouthKill:
  .4byte 0x802ceb88
  .4byte 0x802ceb9c
.global __RTTI__16CndStickBossKill
__RTTI__16CndStickBossKill:
  .4byte 0x802cebb4
  .4byte 0x802cebc8
.global __RTTI__12CndBossFlick
__RTTI__12CndBossFlick:
  .4byte 0x802cebe0
  .4byte 0x802cebf0
.global __RTTI__10CndIsAlive
__RTTI__10CndIsAlive:
  .4byte 0x802cec08
  .4byte 0x802cec14
  .4byte 0x426f7373
  .4byte 0x4d677200
.global lbl_803E48E8
lbl_803E48E8:
	.incbin "baserom.dol", 0x2EE208, 0x8
.global lbl_803E48F0
lbl_803E48F0:
	.incbin "baserom.dol", 0x2EE210, 0x8
.global lbl_803E48F8
lbl_803E48F8:
	.incbin "baserom.dol", 0x2EE218, 0x8
.global lbl_803E4900
lbl_803E4900:
	.incbin "baserom.dol", 0x2EE220, 0x8
.global lbl_803E4908
lbl_803E4908:
	.incbin "baserom.dol", 0x2EE228, 0x8
.global lbl_803E4910
lbl_803E4910:
	.incbin "baserom.dol", 0x2EE230, 0x8
.global lbl_803E4918
lbl_803E4918:
	.incbin "baserom.dol", 0x2EE238, 0x8
.global lbl_803E4920
lbl_803E4920:
	.incbin "baserom.dol", 0x2EE240, 0x8
.global lbl_803E4928
lbl_803E4928:
	.incbin "baserom.dol", 0x2EE248, 0x4
.global lbl_803E492C
lbl_803E492C:
	.incbin "baserom.dol", 0x2EE24C, 0x20
.global __RTTI__8BossNode
__RTTI__8BossNode:
  .4byte 0x802ceff4
  .4byte 0x802cf00c
  .4byte 0x802cf04c
  .4byte 0
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e495c
  .4byte 0x802cf070
  .4byte 0x802cf084
  .4byte 0x802cf090
.global __RTTI__7BossMgr
__RTTI__7BossMgr:
  .4byte 0x803e48e0
  .4byte 0x802cf0b4
  .4byte 0
  .4byte 0x53706964
  .4byte 0x65720000
.global lbl_803E4988
lbl_803E4988:
	.incbin "baserom.dol", 0x2EE2A8, 0x4
.global lbl_803E498C
lbl_803E498C:
	.incbin "baserom.dol", 0x2EE2AC, 0x4
.global lbl_803E4990
lbl_803E4990:
	.incbin "baserom.dol", 0x2EE2B0, 0x4
.global lbl_803E4994
lbl_803E4994:
	.incbin "baserom.dol", 0x2EE2B4, 0x4
.global lbl_803E4998
lbl_803E4998:
	.incbin "baserom.dol", 0x2EE2B8, 0x4
.global lbl_803E499C
lbl_803E499C:
	.incbin "baserom.dol", 0x2EE2BC, 0x4
.global lbl_803E49A0
lbl_803E49A0:
	.incbin "baserom.dol", 0x2EE2C0, 0x4
.global lbl_803E49A4
lbl_803E49A4:
	.incbin "baserom.dol", 0x2EE2C4, 0x4
.global lbl_803E49A8
lbl_803E49A8:
	.incbin "baserom.dol", 0x2EE2C8, 0x4
.global lbl_803E49AC
lbl_803E49AC:
	.incbin "baserom.dol", 0x2EE2CC, 0x4
.global lbl_803E49B0
lbl_803E49B0:
	.incbin "baserom.dol", 0x2EE2D0, 0x4
.global lbl_803E49B4
lbl_803E49B4:
	.incbin "baserom.dol", 0x2EE2D4, 0x4
.global lbl_803E49B8
lbl_803E49B8:
	.incbin "baserom.dol", 0x2EE2D8, 0x4
.global lbl_803E49BC
lbl_803E49BC:
	.incbin "baserom.dol", 0x2EE2DC, 0x4
.global lbl_803E49C0
lbl_803E49C0:
	.incbin "baserom.dol", 0x2EE2E0, 0x4
.global lbl_803E49C4
lbl_803E49C4:
	.incbin "baserom.dol", 0x2EE2E4, 0x4
.global lbl_803E49C8
lbl_803E49C8:
	.incbin "baserom.dol", 0x2EE2E8, 0x4
.global lbl_803E49CC
lbl_803E49CC:
	.incbin "baserom.dol", 0x2EE2EC, 0x4
.global lbl_803E49D0
lbl_803E49D0:
	.incbin "baserom.dol", 0x2EE2F0, 0x4
.global lbl_803E49D4
lbl_803E49D4:
	.incbin "baserom.dol", 0x2EE2F4, 0x4
.global lbl_803E49D8
lbl_803E49D8:
	.incbin "baserom.dol", 0x2EE2F8, 0x4
.global lbl_803E49DC
lbl_803E49DC:
	.incbin "baserom.dol", 0x2EE2FC, 0x4
.global lbl_803E49E0
lbl_803E49E0:
	.incbin "baserom.dol", 0x2EE300, 0x4
.global lbl_803E49E4
lbl_803E49E4:
	.incbin "baserom.dol", 0x2EE304, 0x4
.global lbl_803E49E8
lbl_803E49E8:
	.incbin "baserom.dol", 0x2EE308, 0x4
.global lbl_803E49EC
lbl_803E49EC:
	.incbin "baserom.dol", 0x2EE30C, 0x4
.global lbl_803E49F0
lbl_803E49F0:
	.incbin "baserom.dol", 0x2EE310, 0x4
.global lbl_803E49F4
lbl_803E49F4:
	.incbin "baserom.dol", 0x2EE314, 0x4
.global lbl_803E49F8
lbl_803E49F8:
	.incbin "baserom.dol", 0x2EE318, 0x4
.global lbl_803E49FC
lbl_803E49FC:
	.incbin "baserom.dol", 0x2EE31C, 0x4
.global lbl_803E4A00
lbl_803E4A00:
	.incbin "baserom.dol", 0x2EE320, 0x4
.global lbl_803E4A04
lbl_803E4A04:
	.incbin "baserom.dol", 0x2EE324, 0x4
.global lbl_803E4A08
lbl_803E4A08:
	.incbin "baserom.dol", 0x2EE328, 0x4
.global lbl_803E4A0C
lbl_803E4A0C:
	.incbin "baserom.dol", 0x2EE32C, 0x4
.global lbl_803E4A10
lbl_803E4A10:
	.incbin "baserom.dol", 0x2EE330, 0x4
.global lbl_803E4A14
lbl_803E4A14:
	.incbin "baserom.dol", 0x2EE334, 0x4
.global lbl_803E4A18
lbl_803E4A18:
	.incbin "baserom.dol", 0x2EE338, 0x4
.global lbl_803E4A1C
lbl_803E4A1C:
	.incbin "baserom.dol", 0x2EE33C, 0x4
.global lbl_803E4A20
lbl_803E4A20:
	.incbin "baserom.dol", 0x2EE340, 0x4
.global lbl_803E4A24
lbl_803E4A24:
	.incbin "baserom.dol", 0x2EE344, 0x4
.global lbl_803E4A28
lbl_803E4A28:
	.incbin "baserom.dol", 0x2EE348, 0x4
.global lbl_803E4A2C
lbl_803E4A2C:
	.incbin "baserom.dol", 0x2EE34C, 0x4
.global lbl_803E4A30
lbl_803E4A30:
	.incbin "baserom.dol", 0x2EE350, 0x4
.global lbl_803E4A34
lbl_803E4A34:
	.incbin "baserom.dol", 0x2EE354, 0x4
.global lbl_803E4A38
lbl_803E4A38:
	.incbin "baserom.dol", 0x2EE358, 0x4
.global lbl_803E4A3C
lbl_803E4A3C:
	.incbin "baserom.dol", 0x2EE35C, 0x4
.global lbl_803E4A40
lbl_803E4A40:
	.incbin "baserom.dol", 0x2EE360, 0x4
.global lbl_803E4A44
lbl_803E4A44:
	.incbin "baserom.dol", 0x2EE364, 0x4
.global lbl_803E4A48
lbl_803E4A48:
	.incbin "baserom.dol", 0x2EE368, 0x4
.global lbl_803E4A4C
lbl_803E4A4C:
	.incbin "baserom.dol", 0x2EE36C, 0x4
.global lbl_803E4A50
lbl_803E4A50:
	.incbin "baserom.dol", 0x2EE370, 0x4
.global lbl_803E4A54
lbl_803E4A54:
	.incbin "baserom.dol", 0x2EE374, 0x4
.global lbl_803E4A58
lbl_803E4A58:
	.incbin "baserom.dol", 0x2EE378, 0x4
.global lbl_803E4A5C
lbl_803E4A5C:
	.incbin "baserom.dol", 0x2EE37C, 0x2C
.global __RTTI__12SpiderDrawer
__RTTI__12SpiderDrawer:
  .4byte 0x802cf188
  .4byte 0x802cf1b8
  .4byte 0x802cf204
  .4byte 0
  .4byte 0x802cf210
  .4byte 0
  .4byte 0x802cf220
  .4byte 0x802cf22c
  .4byte 0x426f7373
  .4byte 0
  .4byte 0x803e4aa8
  .4byte 0x802cf240
.global __RTTI__6Spider
__RTTI__6Spider:
  .4byte 0x803e4980
  .4byte 0x802cf25c
  .4byte 0x802cf3b0
  .4byte 0
  .4byte 0x802cf414
  .4byte 0
  .4byte 0x802cf424
  .4byte 0x802cf430
.global __RTTI__10SpiderProp
__RTTI__10SpiderProp:
  .4byte 0x802cf408
  .4byte 0x802cf43c
  .4byte 0x802cf4ec
  .4byte 0
.global __RTTI__8SpiderAi
__RTTI__8SpiderAi:
  .4byte 0x802cf4bc
  .4byte 0x802cf500
.global lbl_803E4AF0
lbl_803E4AF0:
	.incbin "baserom.dol", 0x2EE410, 0x4
.global lbl_803E4AF4
lbl_803E4AF4:
	.incbin "baserom.dol", 0x2EE414, 0x4
.global lbl_803E4AF8
lbl_803E4AF8:
	.incbin "baserom.dol", 0x2EE418, 0x4
.global lbl_803E4AFC
lbl_803E4AFC:
	.incbin "baserom.dol", 0x2EE41C, 0x4
.global lbl_803E4B00
lbl_803E4B00:
	.incbin "baserom.dol", 0x2EE420, 0x4
.global lbl_803E4B04
lbl_803E4B04:
	.incbin "baserom.dol", 0x2EE424, 0x4
.global lbl_803E4B08
lbl_803E4B08:
	.incbin "baserom.dol", 0x2EE428, 0x4
.global lbl_803E4B0C
lbl_803E4B0C:
	.incbin "baserom.dol", 0x2EE42C, 0x4
.global lbl_803E4B10
lbl_803E4B10:
	.incbin "baserom.dol", 0x2EE430, 0x4
.global lbl_803E4B14
lbl_803E4B14:
	.incbin "baserom.dol", 0x2EE434, 0x4
.global lbl_803E4B18
lbl_803E4B18:
	.incbin "baserom.dol", 0x2EE438, 0x4
.global lbl_803E4B1C
lbl_803E4B1C:
	.incbin "baserom.dol", 0x2EE43C, 0x4
.global lbl_803E4B20
lbl_803E4B20:
	.incbin "baserom.dol", 0x2EE440, 0x4
.global lbl_803E4B24
lbl_803E4B24:
	.incbin "baserom.dol", 0x2EE444, 0x4
.global lbl_803E4B28
lbl_803E4B28:
	.incbin "baserom.dol", 0x2EE448, 0x4
.global lbl_803E4B2C
lbl_803E4B2C:
	.incbin "baserom.dol", 0x2EE44C, 0x4
.global lbl_803E4B30
lbl_803E4B30:
	.incbin "baserom.dol", 0x2EE450, 0x4
.global lbl_803E4B34
lbl_803E4B34:
	.incbin "baserom.dol", 0x2EE454, 0x4
.global lbl_803E4B38
lbl_803E4B38:
	.incbin "baserom.dol", 0x2EE458, 0x4
.global lbl_803E4B3C
lbl_803E4B3C:
	.incbin "baserom.dol", 0x2EE45C, 0x4
.global lbl_803E4B40
lbl_803E4B40:
	.incbin "baserom.dol", 0x2EE460, 0x4
.global lbl_803E4B44
lbl_803E4B44:
	.incbin "baserom.dol", 0x2EE464, 0xC
.global __RTTI__30SpiderGenHalfDeadCallBackJoint
__RTTI__30SpiderGenHalfDeadCallBackJoint:
  .4byte 0x802cf5d0
  .4byte 0x802cf61c
.global __RTTI__23SpiderGenPerishCallBack
__RTTI__23SpiderGenPerishCallBack:
  .4byte 0x802cf634
  .4byte 0x802cf64c
.global __RTTI__23SpiderGenRippleCallBack
__RTTI__23SpiderGenRippleCallBack:
  .4byte 0x802cf664
  .4byte 0x802cf67c
  .4byte 0x536e616b
  .4byte 0x65000000
.global lbl_803E4B70
lbl_803E4B70:
	.incbin "baserom.dol", 0x2EE490, 0x4
.global lbl_803E4B74
lbl_803E4B74:
	.incbin "baserom.dol", 0x2EE494, 0x4
.global lbl_803E4B78
lbl_803E4B78:
	.incbin "baserom.dol", 0x2EE498, 0x4
.global lbl_803E4B7C
lbl_803E4B7C:
	.incbin "baserom.dol", 0x2EE49C, 0x4
.global lbl_803E4B80
lbl_803E4B80:
	.incbin "baserom.dol", 0x2EE4A0, 0x4
.global lbl_803E4B84
lbl_803E4B84:
	.incbin "baserom.dol", 0x2EE4A4, 0x4
.global lbl_803E4B88
lbl_803E4B88:
	.incbin "baserom.dol", 0x2EE4A8, 0x4
.global lbl_803E4B8C
lbl_803E4B8C:
	.incbin "baserom.dol", 0x2EE4AC, 0x4
.global lbl_803E4B90
lbl_803E4B90:
	.incbin "baserom.dol", 0x2EE4B0, 0x4
.global lbl_803E4B94
lbl_803E4B94:
	.incbin "baserom.dol", 0x2EE4B4, 0x4
.global lbl_803E4B98
lbl_803E4B98:
	.incbin "baserom.dol", 0x2EE4B8, 0x4
.global lbl_803E4B9C
lbl_803E4B9C:
	.incbin "baserom.dol", 0x2EE4BC, 0x4
.global lbl_803E4BA0
lbl_803E4BA0:
	.incbin "baserom.dol", 0x2EE4C0, 0x4
.global lbl_803E4BA4
lbl_803E4BA4:
	.incbin "baserom.dol", 0x2EE4C4, 0x4
.global lbl_803E4BA8
lbl_803E4BA8:
	.incbin "baserom.dol", 0x2EE4C8, 0x4
.global lbl_803E4BAC
lbl_803E4BAC:
	.incbin "baserom.dol", 0x2EE4CC, 0x4
.global lbl_803E4BB0
lbl_803E4BB0:
	.incbin "baserom.dol", 0x2EE4D0, 0x4
.global lbl_803E4BB4
lbl_803E4BB4:
	.incbin "baserom.dol", 0x2EE4D4, 0x4
.global lbl_803E4BB8
lbl_803E4BB8:
	.incbin "baserom.dol", 0x2EE4D8, 0x4
.global lbl_803E4BBC
lbl_803E4BBC:
	.incbin "baserom.dol", 0x2EE4DC, 0x4
.global lbl_803E4BC0
lbl_803E4BC0:
	.incbin "baserom.dol", 0x2EE4E0, 0x4
.global lbl_803E4BC4
lbl_803E4BC4:
	.incbin "baserom.dol", 0x2EE4E4, 0x4
.global lbl_803E4BC8
lbl_803E4BC8:
	.incbin "baserom.dol", 0x2EE4E8, 0x4
.global lbl_803E4BCC
lbl_803E4BCC:
	.incbin "baserom.dol", 0x2EE4EC, 0x4
.global lbl_803E4BD0
lbl_803E4BD0:
	.incbin "baserom.dol", 0x2EE4F0, 0x4
.global lbl_803E4BD4
lbl_803E4BD4:
	.incbin "baserom.dol", 0x2EE4F4, 0x4
.global lbl_803E4BD8
lbl_803E4BD8:
	.incbin "baserom.dol", 0x2EE4F8, 0x4
.global lbl_803E4BDC
lbl_803E4BDC:
	.incbin "baserom.dol", 0x2EE4FC, 0x4
.global lbl_803E4BE0
lbl_803E4BE0:
	.incbin "baserom.dol", 0x2EE500, 0x4
.global lbl_803E4BE4
lbl_803E4BE4:
	.incbin "baserom.dol", 0x2EE504, 0x4
.global lbl_803E4BE8
lbl_803E4BE8:
	.incbin "baserom.dol", 0x2EE508, 0x4
.global lbl_803E4BEC
lbl_803E4BEC:
	.incbin "baserom.dol", 0x2EE50C, 0x4
.global lbl_803E4BF0
lbl_803E4BF0:
	.incbin "baserom.dol", 0x2EE510, 0x4
.global lbl_803E4BF4
lbl_803E4BF4:
	.incbin "baserom.dol", 0x2EE514, 0x4
.global lbl_803E4BF8
lbl_803E4BF8:
	.incbin "baserom.dol", 0x2EE518, 0x4
.global lbl_803E4BFC
lbl_803E4BFC:
	.incbin "baserom.dol", 0x2EE51C, 0x4
.global lbl_803E4C00
lbl_803E4C00:
	.incbin "baserom.dol", 0x2EE520, 0x4
.global lbl_803E4C04
lbl_803E4C04:
	.incbin "baserom.dol", 0x2EE524, 0x4
.global lbl_803E4C08
lbl_803E4C08:
	.incbin "baserom.dol", 0x2EE528, 0x4
.global lbl_803E4C0C
lbl_803E4C0C:
	.incbin "baserom.dol", 0x2EE52C, 0x4
.global lbl_803E4C10
lbl_803E4C10:
	.incbin "baserom.dol", 0x2EE530, 0x4
.global lbl_803E4C14
lbl_803E4C14:
	.incbin "baserom.dol", 0x2EE534, 0x4
.global lbl_803E4C18
lbl_803E4C18:
	.incbin "baserom.dol", 0x2EE538, 0x4
.global lbl_803E4C1C
lbl_803E4C1C:
	.incbin "baserom.dol", 0x2EE53C, 0x4
.global lbl_803E4C20
lbl_803E4C20:
	.incbin "baserom.dol", 0x2EE540, 0x4
.global lbl_803E4C24
lbl_803E4C24:
	.incbin "baserom.dol", 0x2EE544, 0x4
.global lbl_803E4C28
lbl_803E4C28:
	.incbin "baserom.dol", 0x2EE548, 0x4
.global lbl_803E4C2C
lbl_803E4C2C:
	.incbin "baserom.dol", 0x2EE54C, 0x2C
.global __RTTI__5Snake
__RTTI__5Snake:
  .4byte 0x803e4b68
  .4byte 0x802cf710
.global __RTTI__15CollPartUpdater
__RTTI__15CollPartUpdater:
  .4byte 0x802cf874
  .4byte 0
.global __RTTI__Q25Snake18BoundSphereUpdater
__RTTI__Q25Snake18BoundSphereUpdater:
  .4byte 0x802cf858
  .4byte 0x802cf884
  .4byte 0x802cf8bc
  .4byte 0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e4c78
  .4byte 0
  .4byte lbl_802CF6AC
  .4byte 0x802cf920
  .4byte 0x802cf92c
  .4byte 0
  .4byte 0x802cf93c
  .4byte 0x802cf948
.global __RTTI__9SnakeProp
__RTTI__9SnakeProp:
  .4byte 0x802cf914
  .4byte 0x802cf954
  .4byte 0x536e616b
  .4byte 0x65416900
.global lbl_803E4CB0
lbl_803E4CB0:
	.incbin "baserom.dol", 0x2EE5D0, 0x4
.global lbl_803E4CB4
lbl_803E4CB4:
	.incbin "baserom.dol", 0x2EE5D4, 0x4
.global lbl_803E4CB8
lbl_803E4CB8:
	.incbin "baserom.dol", 0x2EE5D8, 0x4
.global lbl_803E4CBC
lbl_803E4CBC:
	.incbin "baserom.dol", 0x2EE5DC, 0x4
.global lbl_803E4CC0
lbl_803E4CC0:
	.incbin "baserom.dol", 0x2EE5E0, 0xC
.global __RTTI__7SnakeAi
__RTTI__7SnakeAi:
  .4byte 0x803e4ca8
  .4byte 0x802cfa54
  .4byte 0
.global lbl_803E4CD8
lbl_803E4CD8:
	.incbin "baserom.dol", 0x2EE5F8, 0x4
.global lbl_803E4CDC
lbl_803E4CDC:
	.incbin "baserom.dol", 0x2EE5FC, 0x4
.global lbl_803E4CE0
lbl_803E4CE0:
	.incbin "baserom.dol", 0x2EE600, 0x4
.global lbl_803E4CE4
lbl_803E4CE4:
	.incbin "baserom.dol", 0x2EE604, 0x4
.global lbl_803E4CE8
lbl_803E4CE8:
	.incbin "baserom.dol", 0x2EE608, 0x4
.global lbl_803E4CEC
lbl_803E4CEC:
	.incbin "baserom.dol", 0x2EE60C, 0x4
.global lbl_803E4CF0
lbl_803E4CF0:
	.incbin "baserom.dol", 0x2EE610, 0x4
.global lbl_803E4CF4
lbl_803E4CF4:
	.incbin "baserom.dol", 0x2EE614, 0x4
.global lbl_803E4CF8
lbl_803E4CF8:
	.incbin "baserom.dol", 0x2EE618, 0x4
.global lbl_803E4CFC
lbl_803E4CFC:
	.incbin "baserom.dol", 0x2EE61C, 0x4
.global lbl_803E4D00
lbl_803E4D00:
	.incbin "baserom.dol", 0x2EE620, 0x4
.global lbl_803E4D04
lbl_803E4D04:
	.incbin "baserom.dol", 0x2EE624, 0x4
.global lbl_803E4D08
lbl_803E4D08:
	.incbin "baserom.dol", 0x2EE628, 0x4
.global lbl_803E4D0C
lbl_803E4D0C:
	.incbin "baserom.dol", 0x2EE62C, 0x4
.global lbl_803E4D10
lbl_803E4D10:
	.incbin "baserom.dol", 0x2EE630, 0x4
.global lbl_803E4D14
lbl_803E4D14:
	.incbin "baserom.dol", 0x2EE634, 0xC
.global __RTTI__26SnakeGenBodyRotateCallBack
__RTTI__26SnakeGenBodyRotateCallBack:
  .4byte 0x802cfa94
  .4byte 0x802cfadc
.global __RTTI__28SnakeGenBodyOnGroundCallBack
__RTTI__28SnakeGenBodyOnGroundCallBack:
  .4byte 0x802cfaf4
  .4byte 0x802cfb14
.global lbl_803E4D30
lbl_803E4D30:
	.incbin "baserom.dol", 0x2EE650, 0x4
.global lbl_803E4D34
lbl_803E4D34:
	.incbin "baserom.dol", 0x2EE654, 0x4
.global lbl_803E4D38
lbl_803E4D38:
	.incbin "baserom.dol", 0x2EE658, 0x4
.global lbl_803E4D3C
lbl_803E4D3C:
	.incbin "baserom.dol", 0x2EE65C, 0x4
.global lbl_803E4D40
lbl_803E4D40:
	.incbin "baserom.dol", 0x2EE660, 0x4
.global lbl_803E4D44
lbl_803E4D44:
	.incbin "baserom.dol", 0x2EE664, 0xC
.global lbl_803E4D50
lbl_803E4D50:
	.incbin "baserom.dol", 0x2EE670, 0x4
.global lbl_803E4D54
lbl_803E4D54:
	.incbin "baserom.dol", 0x2EE674, 0x4
.global lbl_803E4D58
lbl_803E4D58:
	.incbin "baserom.dol", 0x2EE678, 0x4
.global lbl_803E4D5C
lbl_803E4D5C:
	.incbin "baserom.dol", 0x2EE67C, 0x4
.global lbl_803E4D60
lbl_803E4D60:
	.incbin "baserom.dol", 0x2EE680, 0x4
.global lbl_803E4D64
lbl_803E4D64:
	.incbin "baserom.dol", 0x2EE684, 0x4
.global lbl_803E4D68
lbl_803E4D68:
	.incbin "baserom.dol", 0x2EE688, 0x4
.global lbl_803E4D6C
lbl_803E4D6C:
	.incbin "baserom.dol", 0x2EE68C, 0x4
.global lbl_803E4D70
lbl_803E4D70:
	.incbin "baserom.dol", 0x2EE690, 0x4
.global lbl_803E4D74
lbl_803E4D74:
	.incbin "baserom.dol", 0x2EE694, 0x4
.global lbl_803E4D78
lbl_803E4D78:
	.incbin "baserom.dol", 0x2EE698, 0x4
.global lbl_803E4D7C
lbl_803E4D7C:
	.incbin "baserom.dol", 0x2EE69C, 0x4
.global lbl_803E4D80
lbl_803E4D80:
	.incbin "baserom.dol", 0x2EE6A0, 0x4
.global lbl_803E4D84
lbl_803E4D84:
	.incbin "baserom.dol", 0x2EE6A4, 0x4
.global lbl_803E4D88
lbl_803E4D88:
	.incbin "baserom.dol", 0x2EE6A8, 0x4
.global lbl_803E4D8C
lbl_803E4D8C:
	.incbin "baserom.dol", 0x2EE6AC, 0x4
.global lbl_803E4D90
lbl_803E4D90:
	.incbin "baserom.dol", 0x2EE6B0, 0x4
.global lbl_803E4D94
lbl_803E4D94:
	.incbin "baserom.dol", 0x2EE6B4, 0x4
.global lbl_803E4D98
lbl_803E4D98:
	.incbin "baserom.dol", 0x2EE6B8, 0x4
.global lbl_803E4D9C
lbl_803E4D9C:
	.incbin "baserom.dol", 0x2EE6BC, 0x4
.global lbl_803E4DA0
lbl_803E4DA0:
	.incbin "baserom.dol", 0x2EE6C0, 0x4
.global lbl_803E4DA4
lbl_803E4DA4:
	.incbin "baserom.dol", 0x2EE6C4, 0x4
.global lbl_803E4DA8
lbl_803E4DA8:
	.incbin "baserom.dol", 0x2EE6C8, 0x4
.global lbl_803E4DAC
lbl_803E4DAC:
	.incbin "baserom.dol", 0x2EE6CC, 0x4
.global lbl_803E4DB0
lbl_803E4DB0:
	.incbin "baserom.dol", 0x2EE6D0, 0x4
.global lbl_803E4DB4
lbl_803E4DB4:
	.incbin "baserom.dol", 0x2EE6D4, 0x4
.global lbl_803E4DB8
lbl_803E4DB8:
	.incbin "baserom.dol", 0x2EE6D8, 0x4
.global lbl_803E4DBC
lbl_803E4DBC:
	.incbin "baserom.dol", 0x2EE6DC, 0x2C
.global __RTTI__5Slime
__RTTI__5Slime:
  .4byte 0x803e4d48
  .4byte 0x802cfbe0
.global __RTTI__15CollPartUpdater_1
__RTTI__15CollPartUpdater_1:
  .4byte 0x802cfd44
  .4byte 0
.global __RTTI__Q25Slime20CollideSphereUpdater
__RTTI__Q25Slime20CollideSphereUpdater:
  .4byte 0x802cfd28
  .4byte 0x802cfd54
.global __RTTI__Q25Slime17TubeSphereUpdater
__RTTI__Q25Slime17TubeSphereUpdater:
  .4byte 0x802cfd70
  .4byte 0x802cfd8c
.global __RTTI__Q25Slime18BoundSphereUpdater
__RTTI__Q25Slime18BoundSphereUpdater:
  .4byte 0x802cfda8
  .4byte 0x802cfdc4
  .4byte 0x802cfdfc
  .4byte 0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e4e18
  .4byte 0
  .4byte lbl_802CFB44
  .4byte 0x802cfe60
  .4byte 0x802cfe6c
  .4byte 0
  .4byte 0x802cfe7c
  .4byte 0x802cfe88
.global __RTTI__9SlimeProp
__RTTI__9SlimeProp:
  .4byte 0x802cfe54
  .4byte 0x802cfe94
.global lbl_803E4E48
lbl_803E4E48:
	.incbin "baserom.dol", 0x2EE768, 0x4
.global lbl_803E4E4C
lbl_803E4E4C:
	.incbin "baserom.dol", 0x2EE76C, 0x4
.global lbl_803E4E50
lbl_803E4E50:
	.incbin "baserom.dol", 0x2EE770, 0x4
.global lbl_803E4E54
lbl_803E4E54:
	.incbin "baserom.dol", 0x2EE774, 0x4
.global lbl_803E4E58
lbl_803E4E58:
	.incbin "baserom.dol", 0x2EE778, 0x4
.global lbl_803E4E5C
lbl_803E4E5C:
	.incbin "baserom.dol", 0x2EE77C, 0x4
.global lbl_803E4E60
lbl_803E4E60:
	.incbin "baserom.dol", 0x2EE780, 0x4
.global lbl_803E4E64
lbl_803E4E64:
	.incbin "baserom.dol", 0x2EE784, 0x4
.global lbl_803E4E68
lbl_803E4E68:
	.incbin "baserom.dol", 0x2EE788, 0x4
.global lbl_803E4E6C
lbl_803E4E6C:
	.incbin "baserom.dol", 0x2EE78C, 0x4
.global lbl_803E4E70
lbl_803E4E70:
	.incbin "baserom.dol", 0x2EE790, 0x4
.global lbl_803E4E74
lbl_803E4E74:
	.incbin "baserom.dol", 0x2EE794, 0x4
.global lbl_803E4E78
lbl_803E4E78:
	.incbin "baserom.dol", 0x2EE798, 0x4
.global lbl_803E4E7C
lbl_803E4E7C:
	.incbin "baserom.dol", 0x2EE79C, 0x4
.global lbl_803E4E80
lbl_803E4E80:
	.incbin "baserom.dol", 0x2EE7A0, 0x4
.global lbl_803E4E84
lbl_803E4E84:
	.incbin "baserom.dol", 0x2EE7A4, 0x4
.global lbl_803E4E88
lbl_803E4E88:
	.incbin "baserom.dol", 0x2EE7A8, 0x4
.global lbl_803E4E8C
lbl_803E4E8C:
	.incbin "baserom.dol", 0x2EE7AC, 0x4
.global lbl_803E4E90
lbl_803E4E90:
	.incbin "baserom.dol", 0x2EE7B0, 0x8
.global lbl_803E4E98
lbl_803E4E98:
	.incbin "baserom.dol", 0x2EE7B8, 0x4
.global lbl_803E4E9C
lbl_803E4E9C:
	.incbin "baserom.dol", 0x2EE7BC, 0x4
.global lbl_803E4EA0
lbl_803E4EA0:
	.incbin "baserom.dol", 0x2EE7C0, 0x4
.global lbl_803E4EA4
lbl_803E4EA4:
	.incbin "baserom.dol", 0x2EE7C4, 0x4
.global lbl_803E4EA8
lbl_803E4EA8:
	.incbin "baserom.dol", 0x2EE7C8, 0x4
.global lbl_803E4EAC
lbl_803E4EAC:
	.incbin "baserom.dol", 0x2EE7CC, 0x4
.global lbl_803E4EB0
lbl_803E4EB0:
	.incbin "baserom.dol", 0x2EE7D0, 0x4
.global lbl_803E4EB4
lbl_803E4EB4:
	.incbin "baserom.dol", 0x2EE7D4, 0x1C
.global __RTTI__13SlimeCreature
__RTTI__13SlimeCreature:
  .4byte 0x802cff2c
  .4byte 0x802cff78
  .4byte 0x4b696e67
  .4byte 0
.global lbl_803E4EE0
lbl_803E4EE0:
	.incbin "baserom.dol", 0x2EE800, 0x4
.global lbl_803E4EE4
lbl_803E4EE4:
	.incbin "baserom.dol", 0x2EE804, 0x4
.global lbl_803E4EE8
lbl_803E4EE8:
	.incbin "baserom.dol", 0x2EE808, 0x4
.global lbl_803E4EEC
lbl_803E4EEC:
	.incbin "baserom.dol", 0x2EE80C, 0x4
.global lbl_803E4EF0
lbl_803E4EF0:
	.incbin "baserom.dol", 0x2EE810, 0x4
.global lbl_803E4EF4
lbl_803E4EF4:
	.incbin "baserom.dol", 0x2EE814, 0x4
.global lbl_803E4EF8
lbl_803E4EF8:
	.incbin "baserom.dol", 0x2EE818, 0x4
.global lbl_803E4EFC
lbl_803E4EFC:
	.incbin "baserom.dol", 0x2EE81C, 0x4
.global lbl_803E4F00
lbl_803E4F00:
	.incbin "baserom.dol", 0x2EE820, 0x4
.global lbl_803E4F04
lbl_803E4F04:
	.incbin "baserom.dol", 0x2EE824, 0x4
.global lbl_803E4F08
lbl_803E4F08:
	.incbin "baserom.dol", 0x2EE828, 0x4
.global lbl_803E4F0C
lbl_803E4F0C:
	.incbin "baserom.dol", 0x2EE82C, 0x4
.global lbl_803E4F10
lbl_803E4F10:
	.incbin "baserom.dol", 0x2EE830, 0x4
.global lbl_803E4F14
lbl_803E4F14:
	.incbin "baserom.dol", 0x2EE834, 0x4
.global lbl_803E4F18
lbl_803E4F18:
	.incbin "baserom.dol", 0x2EE838, 0x4
.global lbl_803E4F1C
lbl_803E4F1C:
	.incbin "baserom.dol", 0x2EE83C, 0x4
.global lbl_803E4F20
lbl_803E4F20:
	.incbin "baserom.dol", 0x2EE840, 0x4
.global lbl_803E4F24
lbl_803E4F24:
	.incbin "baserom.dol", 0x2EE844, 0x4
.global lbl_803E4F28
lbl_803E4F28:
	.incbin "baserom.dol", 0x2EE848, 0x4
.global lbl_803E4F2C
lbl_803E4F2C:
	.incbin "baserom.dol", 0x2EE84C, 0x4
.global lbl_803E4F30
lbl_803E4F30:
	.incbin "baserom.dol", 0x2EE850, 0x4
.global lbl_803E4F34
lbl_803E4F34:
	.incbin "baserom.dol", 0x2EE854, 0x4
.global lbl_803E4F38
lbl_803E4F38:
	.incbin "baserom.dol", 0x2EE858, 0x4
.global lbl_803E4F3C
lbl_803E4F3C:
	.incbin "baserom.dol", 0x2EE85C, 0x4
.global lbl_803E4F40
lbl_803E4F40:
	.incbin "baserom.dol", 0x2EE860, 0x4
.global lbl_803E4F44
lbl_803E4F44:
	.incbin "baserom.dol", 0x2EE864, 0x4
.global lbl_803E4F48
lbl_803E4F48:
	.incbin "baserom.dol", 0x2EE868, 0x4
.global lbl_803E4F4C
lbl_803E4F4C:
	.incbin "baserom.dol", 0x2EE86C, 0x4
.global lbl_803E4F50
lbl_803E4F50:
	.incbin "baserom.dol", 0x2EE870, 0x4
.global lbl_803E4F54
lbl_803E4F54:
	.incbin "baserom.dol", 0x2EE874, 0x4
.global lbl_803E4F58
lbl_803E4F58:
	.incbin "baserom.dol", 0x2EE878, 0x4
.global lbl_803E4F5C
lbl_803E4F5C:
	.incbin "baserom.dol", 0x2EE87C, 0x4
.global lbl_803E4F60
lbl_803E4F60:
	.incbin "baserom.dol", 0x2EE880, 0x4
.global lbl_803E4F64
lbl_803E4F64:
	.incbin "baserom.dol", 0x2EE884, 0x4
.global lbl_803E4F68
lbl_803E4F68:
	.incbin "baserom.dol", 0x2EE888, 0x4
.global lbl_803E4F6C
lbl_803E4F6C:
	.incbin "baserom.dol", 0x2EE88C, 0x4
.global lbl_803E4F70
lbl_803E4F70:
	.incbin "baserom.dol", 0x2EE890, 0x4
.global lbl_803E4F74
lbl_803E4F74:
	.incbin "baserom.dol", 0x2EE894, 0x4
.global lbl_803E4F78
lbl_803E4F78:
	.incbin "baserom.dol", 0x2EE898, 0x4
.global lbl_803E4F7C
lbl_803E4F7C:
	.incbin "baserom.dol", 0x2EE89C, 0x4
.global lbl_803E4F80
lbl_803E4F80:
	.incbin "baserom.dol", 0x2EE8A0, 0x4
.global lbl_803E4F84
lbl_803E4F84:
	.incbin "baserom.dol", 0x2EE8A4, 0x4
.global lbl_803E4F88
lbl_803E4F88:
	.incbin "baserom.dol", 0x2EE8A8, 0x2C
.global __RTTI__10KingDrawer
__RTTI__10KingDrawer:
  .4byte 0x802d00c0
  .4byte 0x802d00ec
  .4byte 0x802d0138
  .4byte 0
  .4byte 0x802d0144
  .4byte 0
  .4byte 0x802d0154
  .4byte 0x802d0160
  .4byte 0x426f7373
  .4byte 0
  .4byte 0x803e4fd4
  .4byte 0x802d0174
.global __RTTI__4King
__RTTI__4King:
  .4byte 0x803e4ed8
  .4byte 0x802d0190
  .4byte 0x802d02e4
  .4byte 0
  .4byte 0x802d0348
  .4byte 0
  .4byte 0x802d0358
  .4byte 0x802d0364
.global __RTTI__8KingProp
__RTTI__8KingProp:
  .4byte 0x802d033c
  .4byte 0x802d0370
  .4byte 0
  .4byte 0x4b696e67
  .4byte 0x41690000
.global lbl_803E5018
lbl_803E5018:
	.incbin "baserom.dol", 0x2EE938, 0x4
.global lbl_803E501C
lbl_803E501C:
	.incbin "baserom.dol", 0x2EE93C, 0x4
.global lbl_803E5020
lbl_803E5020:
	.incbin "baserom.dol", 0x2EE940, 0xC
.global __RTTI__6KingAi
__RTTI__6KingAi:
  .4byte 0x803e5010
  .4byte 0x802d0508
  .4byte 0
.global lbl_803E5038
lbl_803E5038:
	.incbin "baserom.dol", 0x2EE958, 0x4
.global lbl_803E503C
lbl_803E503C:
	.incbin "baserom.dol", 0x2EE95C, 0x4
.global lbl_803E5040
lbl_803E5040:
	.incbin "baserom.dol", 0x2EE960, 0x4
.global lbl_803E5044
lbl_803E5044:
	.incbin "baserom.dol", 0x2EE964, 0x4
.global lbl_803E5048
lbl_803E5048:
	.incbin "baserom.dol", 0x2EE968, 0x4
.global lbl_803E504C
lbl_803E504C:
	.incbin "baserom.dol", 0x2EE96C, 0x4
.global lbl_803E5050
lbl_803E5050:
	.incbin "baserom.dol", 0x2EE970, 0x4
.global lbl_803E5054
lbl_803E5054:
	.incbin "baserom.dol", 0x2EE974, 0x4
.global lbl_803E5058
lbl_803E5058:
	.incbin "baserom.dol", 0x2EE978, 0x4
.global lbl_803E505C
lbl_803E505C:
	.incbin "baserom.dol", 0x2EE97C, 0x4
.global lbl_803E5060
lbl_803E5060:
	.incbin "baserom.dol", 0x2EE980, 0x4
.global lbl_803E5064
lbl_803E5064:
	.incbin "baserom.dol", 0x2EE984, 0x4
.global lbl_803E5068
lbl_803E5068:
	.incbin "baserom.dol", 0x2EE988, 0x4
.global lbl_803E506C
lbl_803E506C:
	.incbin "baserom.dol", 0x2EE98C, 0x4
.global lbl_803E5070
lbl_803E5070:
	.incbin "baserom.dol", 0x2EE990, 0x4
.global lbl_803E5074
lbl_803E5074:
	.incbin "baserom.dol", 0x2EE994, 0x4
.global lbl_803E5078
lbl_803E5078:
	.incbin "baserom.dol", 0x2EE998, 0x4
.global lbl_803E507C
lbl_803E507C:
	.incbin "baserom.dol", 0x2EE99C, 0x4
.global lbl_803E5080
lbl_803E5080:
	.incbin "baserom.dol", 0x2EE9A0, 0x4
.global lbl_803E5084
lbl_803E5084:
	.incbin "baserom.dol", 0x2EE9A4, 0x4
.global lbl_803E5088
lbl_803E5088:
	.incbin "baserom.dol", 0x2EE9A8, 0x4
.global lbl_803E508C
lbl_803E508C:
	.incbin "baserom.dol", 0x2EE9AC, 0x4
.global lbl_803E5090
lbl_803E5090:
	.incbin "baserom.dol", 0x2EE9B0, 0x4
.global lbl_803E5094
lbl_803E5094:
	.incbin "baserom.dol", 0x2EE9B4, 0x4
.global lbl_803E5098
lbl_803E5098:
	.incbin "baserom.dol", 0x2EE9B8, 0x4
.global lbl_803E509C
lbl_803E509C:
	.incbin "baserom.dol", 0x2EE9BC, 0x4
.global lbl_803E50A0
lbl_803E50A0:
	.incbin "baserom.dol", 0x2EE9C0, 0x4
.global lbl_803E50A4
lbl_803E50A4:
	.incbin "baserom.dol", 0x2EE9C4, 0x4
.global lbl_803E50A8
lbl_803E50A8:
	.incbin "baserom.dol", 0x2EE9C8, 0x4
.global lbl_803E50AC
lbl_803E50AC:
	.incbin "baserom.dol", 0x2EE9CC, 0x4
.global lbl_803E50B0
lbl_803E50B0:
	.incbin "baserom.dol", 0x2EE9D0, 0x4
.global lbl_803E50B4
lbl_803E50B4:
	.incbin "baserom.dol", 0x2EE9D4, 0x4
.global lbl_803E50B8
lbl_803E50B8:
	.incbin "baserom.dol", 0x2EE9D8, 0x4
.global lbl_803E50BC
lbl_803E50BC:
	.incbin "baserom.dol", 0x2EE9DC, 0x4
.global lbl_803E50C0
lbl_803E50C0:
	.incbin "baserom.dol", 0x2EE9E0, 0x4
.global lbl_803E50C4
lbl_803E50C4:
	.incbin "baserom.dol", 0x2EE9E4, 0x4
.global lbl_803E50C8
lbl_803E50C8:
	.incbin "baserom.dol", 0x2EE9E8, 0x4
.global lbl_803E50CC
lbl_803E50CC:
	.incbin "baserom.dol", 0x2EE9EC, 0x4
.global lbl_803E50D0
lbl_803E50D0:
	.incbin "baserom.dol", 0x2EE9F0, 0x4
.global lbl_803E50D4
lbl_803E50D4:
	.incbin "baserom.dol", 0x2EE9F4, 0x4
.global lbl_803E50D8
lbl_803E50D8:
	.incbin "baserom.dol", 0x2EE9F8, 0x4
.global lbl_803E50DC
lbl_803E50DC:
	.incbin "baserom.dol", 0x2EE9FC, 0x4
.global lbl_803E50E0
lbl_803E50E0:
	.incbin "baserom.dol", 0x2EEA00, 0x4
.global lbl_803E50E4
lbl_803E50E4:
	.incbin "baserom.dol", 0x2EEA04, 0x4
.global lbl_803E50E8
lbl_803E50E8:
	.incbin "baserom.dol", 0x2EEA08, 0x4
.global lbl_803E50EC
lbl_803E50EC:
	.incbin "baserom.dol", 0x2EEA0C, 0x4
.global lbl_803E50F0
lbl_803E50F0:
	.incbin "baserom.dol", 0x2EEA10, 0x4
.global lbl_803E50F4
lbl_803E50F4:
	.incbin "baserom.dol", 0x2EEA14, 0x4
.global lbl_803E50F8
lbl_803E50F8:
	.incbin "baserom.dol", 0x2EEA18, 0x4
.global lbl_803E50FC
lbl_803E50FC:
	.incbin "baserom.dol", 0x2EEA1C, 0x4
.global lbl_803E5100
lbl_803E5100:
	.incbin "baserom.dol", 0x2EEA20, 0x4
.global lbl_803E5104
lbl_803E5104:
	.incbin "baserom.dol", 0x2EEA24, 0x4
.global lbl_803E5108
lbl_803E5108:
	.incbin "baserom.dol", 0x2EEA28, 0x4
.global lbl_803E510C
lbl_803E510C:
	.incbin "baserom.dol", 0x2EEA2C, 0x4
.global lbl_803E5110
lbl_803E5110:
	.incbin "baserom.dol", 0x2EEA30, 0x4
.global lbl_803E5114
lbl_803E5114:
	.incbin "baserom.dol", 0x2EEA34, 0x4
.global lbl_803E5118
lbl_803E5118:
	.incbin "baserom.dol", 0x2EEA38, 0x4
.global lbl_803E511C
lbl_803E511C:
	.incbin "baserom.dol", 0x2EEA3C, 0x4
.global lbl_803E5120
lbl_803E5120:
	.incbin "baserom.dol", 0x2EEA40, 0xC
.global __RTTI__21KingGenSalivaCallBack
__RTTI__21KingGenSalivaCallBack:
  .4byte 0x802d054c
  .4byte 0x802d0590
.global __RTTI__21KingGenRippleCallBack
__RTTI__21KingGenRippleCallBack:
  .4byte 0x802d05a8
  .4byte 0x802d05c0
  .4byte 0x802d05fc
  .4byte 0
.global __RTTI__32KingGenSpitPartsParticleCallBack
__RTTI__32KingGenSpitPartsParticleCallBack:
  .4byte 0x802d05d8
  .4byte 0x802d063c
.global __RTTI__25KingGenDamageStarCallBack
__RTTI__25KingGenDamageStarCallBack:
  .4byte 0x802d0654
  .4byte 0x802d0670
.global __RTTI__29KingGenSalivaParticleCallBack
__RTTI__29KingGenSalivaParticleCallBack:
  .4byte 0x802d0688
  .4byte 0x802d06a8
.global __RTTI__27KingGenSpreadSalivaCallBack
__RTTI__27KingGenSpreadSalivaCallBack:
  .4byte 0x802d06cc
  .4byte 0x802d06e8
  .4byte 0
  .4byte 0x4b6f6761
  .4byte 0x6e650000
.global lbl_803E5170
lbl_803E5170:
	.incbin "baserom.dol", 0x2EEA90, 0x4
.global lbl_803E5174
lbl_803E5174:
	.incbin "baserom.dol", 0x2EEA94, 0x4
.global lbl_803E5178
lbl_803E5178:
	.incbin "baserom.dol", 0x2EEA98, 0x4
.global lbl_803E517C
lbl_803E517C:
	.incbin "baserom.dol", 0x2EEA9C, 0x4
.global lbl_803E5180
lbl_803E5180:
	.incbin "baserom.dol", 0x2EEAA0, 0x4
.global lbl_803E5184
lbl_803E5184:
	.incbin "baserom.dol", 0x2EEAA4, 0x4
.global lbl_803E5188
lbl_803E5188:
	.incbin "baserom.dol", 0x2EEAA8, 0x4
.global lbl_803E518C
lbl_803E518C:
	.incbin "baserom.dol", 0x2EEAAC, 0x4
.global lbl_803E5190
lbl_803E5190:
	.incbin "baserom.dol", 0x2EEAB0, 0x4
.global lbl_803E5194
lbl_803E5194:
	.incbin "baserom.dol", 0x2EEAB4, 0x4
.global lbl_803E5198
lbl_803E5198:
	.incbin "baserom.dol", 0x2EEAB8, 0x4
.global lbl_803E519C
lbl_803E519C:
	.incbin "baserom.dol", 0x2EEABC, 0x4
.global lbl_803E51A0
lbl_803E51A0:
	.incbin "baserom.dol", 0x2EEAC0, 0x4
.global lbl_803E51A4
lbl_803E51A4:
	.incbin "baserom.dol", 0x2EEAC4, 0x4
.global lbl_803E51A8
lbl_803E51A8:
	.incbin "baserom.dol", 0x2EEAC8, 0x2C
.global __RTTI__6Kogane
__RTTI__6Kogane:
  .4byte 0x803e5168
  .4byte 0x802d0780
  .4byte 0x802d08d4
  .4byte 0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e51e4
  .4byte 0
  .4byte lbl_802D071C
  .4byte 0x802d090c
  .4byte 0x802d0918
  .4byte 0
  .4byte 0x802d0928
  .4byte 0x802d0934
.global __RTTI__10KoganeProp
__RTTI__10KoganeProp:
  .4byte 0x802d0900
  .4byte 0x802d0940
  .4byte 0
.global koganeSE
koganeSE:
	.incbin "baserom.dol", 0x2EEB38, 0x8
.global lbl_803E5220
lbl_803E5220:
	.incbin "baserom.dol", 0x2EEB40, 0x4
.global lbl_803E5224
lbl_803E5224:
	.incbin "baserom.dol", 0x2EEB44, 0x4
.global lbl_803E5228
lbl_803E5228:
	.incbin "baserom.dol", 0x2EEB48, 0x4
.global lbl_803E522C
lbl_803E522C:
	.incbin "baserom.dol", 0x2EEB4C, 0x4
.global lbl_803E5230
lbl_803E5230:
	.incbin "baserom.dol", 0x2EEB50, 0x4
.global lbl_803E5234
lbl_803E5234:
	.incbin "baserom.dol", 0x2EEB54, 0x4
.global lbl_803E5238
lbl_803E5238:
	.incbin "baserom.dol", 0x2EEB58, 0x4
.global lbl_803E523C
lbl_803E523C:
	.incbin "baserom.dol", 0x2EEB5C, 0x4
.global lbl_803E5240
lbl_803E5240:
	.incbin "baserom.dol", 0x2EEB60, 0x4
.global lbl_803E5244
lbl_803E5244:
	.incbin "baserom.dol", 0x2EEB64, 0x4
.global lbl_803E5248
lbl_803E5248:
	.incbin "baserom.dol", 0x2EEB68, 0x4
.global lbl_803E524C
lbl_803E524C:
	.incbin "baserom.dol", 0x2EEB6C, 0x4
.global lbl_803E5250
lbl_803E5250:
	.incbin "baserom.dol", 0x2EEB70, 0x4
.global lbl_803E5254
lbl_803E5254:
	.incbin "baserom.dol", 0x2EEB74, 0x4
.global lbl_803E5258
lbl_803E5258:
	.incbin "baserom.dol", 0x2EEB78, 0x4
.global lbl_803E525C
lbl_803E525C:
	.incbin "baserom.dol", 0x2EEB7C, 0x4
.global lbl_803E5260
lbl_803E5260:
	.incbin "baserom.dol", 0x2EEB80, 0x4
.global lbl_803E5264
lbl_803E5264:
	.incbin "baserom.dol", 0x2EEB84, 0x4
.global lbl_803E5268
lbl_803E5268:
	.incbin "baserom.dol", 0x2EEB88, 0x4
.global lbl_803E526C
lbl_803E526C:
	.incbin "baserom.dol", 0x2EEB8C, 0x4
.global lbl_803E5270
lbl_803E5270:
	.incbin "baserom.dol", 0x2EEB90, 0x4
.global lbl_803E5274
lbl_803E5274:
	.incbin "baserom.dol", 0x2EEB94, 0x4
.global lbl_803E5278
lbl_803E5278:
	.incbin "baserom.dol", 0x2EEB98, 0x4
.global lbl_803E527C
lbl_803E527C:
	.incbin "baserom.dol", 0x2EEB9C, 0x4
.global lbl_803E5280
lbl_803E5280:
	.incbin "baserom.dol", 0x2EEBA0, 0x4
.global lbl_803E5284
lbl_803E5284:
	.incbin "baserom.dol", 0x2EEBA4, 0x4
.global lbl_803E5288
lbl_803E5288:
	.incbin "baserom.dol", 0x2EEBA8, 0x4
.global lbl_803E528C
lbl_803E528C:
	.incbin "baserom.dol", 0x2EEBAC, 0x4
.global lbl_803E5290
lbl_803E5290:
	.incbin "baserom.dol", 0x2EEBB0, 0x4
.global lbl_803E5294
lbl_803E5294:
	.incbin "baserom.dol", 0x2EEBB4, 0x4
.global lbl_803E5298
lbl_803E5298:
	.incbin "baserom.dol", 0x2EEBB8, 0x4
.global lbl_803E529C
lbl_803E529C:
	.incbin "baserom.dol", 0x2EEBBC, 0x4
.global lbl_803E52A0
lbl_803E52A0:
	.incbin "baserom.dol", 0x2EEBC0, 0xC
.global __RTTI__8KoganeAi
__RTTI__8KoganeAi:
  .4byte 0x802d09b0
  .4byte 0x802d09ec
  .4byte 0x802d0a1c
  .4byte 0
.global __RTTI__23KoganeGenRippleCallBack
__RTTI__23KoganeGenRippleCallBack:
  .4byte 0x802d0a04
  .4byte 0x802d0a48
  .4byte 0
  .4byte 0x506f6d00
.global lbl_803E52CC
lbl_803E52CC:
	.incbin "baserom.dol", 0x2EEBEC, 0x4
.global lbl_803E52D0
lbl_803E52D0:
	.incbin "baserom.dol", 0x2EEBF0, 0x4
.global lbl_803E52D4
lbl_803E52D4:
	.incbin "baserom.dol", 0x2EEBF4, 0x4
.global lbl_803E52D8
lbl_803E52D8:
	.incbin "baserom.dol", 0x2EEBF8, 0x4
.global lbl_803E52DC
lbl_803E52DC:
	.incbin "baserom.dol", 0x2EEBFC, 0x4
.global lbl_803E52E0
lbl_803E52E0:
	.incbin "baserom.dol", 0x2EEC00, 0x4
.global lbl_803E52E4
lbl_803E52E4:
	.incbin "baserom.dol", 0x2EEC04, 0x4
.global lbl_803E52E8
lbl_803E52E8:
	.incbin "baserom.dol", 0x2EEC08, 0x4
.global lbl_803E52EC
lbl_803E52EC:
	.incbin "baserom.dol", 0x2EEC0C, 0x4
.global lbl_803E52F0
lbl_803E52F0:
	.incbin "baserom.dol", 0x2EEC10, 0x4
.global lbl_803E52F4
lbl_803E52F4:
	.incbin "baserom.dol", 0x2EEC14, 0x4
.global lbl_803E52F8
lbl_803E52F8:
	.incbin "baserom.dol", 0x2EEC18, 0x2C
.global __RTTI__3Pom
__RTTI__3Pom:
  .4byte 0x803e52c8
  .4byte 0x802d0adc
  .4byte 0x802d0c30
  .4byte 0
  .4byte 0x506f6d50
  .4byte 0x726f7000
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e533c
  .4byte 0
  .4byte lbl_802D0A78
  .4byte 0x802d0c88
  .4byte 0x802d0c94
  .4byte 0
  .4byte 0x802d0ca4
  .4byte 0x802d0cb0
.global __RTTI__7PomProp
__RTTI__7PomProp:
  .4byte 0x803e5334
  .4byte 0x802d0cbc
  .4byte 0
  .4byte 0x506f6d41
  .4byte 0x69000000
.global lbl_803E5378
lbl_803E5378:
	.incbin "baserom.dol", 0x2EEC98, 0xC
.global __RTTI__5PomAi
__RTTI__5PomAi:
  .4byte 0x803e5370
  .4byte 0x802d0d88
  .4byte 0x802d0db8
  .4byte 0
.global __RTTI__22PomGenOpenStarCallBack
__RTTI__22PomGenOpenStarCallBack:
  .4byte 0x802d0da0
  .4byte 0x802d0de4
  .4byte 0
  .4byte 0x802d0e40
  .4byte 0
  .4byte 0x802d0e4c
  .4byte 0
  .4byte 0x802d0e5c
  .4byte 0x802d0e68
  .4byte 0x426f7373
  .4byte 0
  .4byte 0x803e53b8
  .4byte 0x802d0e7c
.global __RTTI__8KingBack
__RTTI__8KingBack:
  .4byte 0x802d0e28
  .4byte 0x802d0e98
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e53d0
  .4byte 0
  .4byte lbl_802D0E34
  .4byte 0x802d0ff0
  .4byte 0x802d0ffc
  .4byte 0
  .4byte 0x802d100c
  .4byte 0x802d1018
.global __RTTI__12KingBackProp
__RTTI__12KingBackProp:
  .4byte 0x802d0fe0
  .4byte 0x802d1024
  .4byte 0x4e75636c
  .4byte 0x65757300
.global lbl_803E5408
lbl_803E5408:
	.incbin "baserom.dol", 0x2EED28, 0x4
.global lbl_803E540C
lbl_803E540C:
	.incbin "baserom.dol", 0x2EED2C, 0x4
.global lbl_803E5410
lbl_803E5410:
	.incbin "baserom.dol", 0x2EED30, 0x2C
.global __RTTI__7Nucleus
__RTTI__7Nucleus:
  .4byte 0x803e5400
  .4byte 0x802d10f0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e5444
  .4byte 0
  .4byte lbl_802D108C
  .4byte 0x802d1244
  .4byte 0x802d1250
  .4byte 0
  .4byte 0x802d1260
  .4byte 0x802d126c
.global __RTTI__11NucleusProp
__RTTI__11NucleusProp:
  .4byte 0x802d1238
  .4byte 0x802d1278
  .4byte 0
  .4byte 0x802d12f4
  .4byte 0
.global __RTTI__9NucleusAi
__RTTI__9NucleusAi:
  .4byte 0x802d12e8
  .4byte 0x802d1308
.global lbl_803E5488
lbl_803E5488:
	.incbin "baserom.dol", 0x2EEDA8, 0x4
.global lbl_803E548C
lbl_803E548C:
	.incbin "baserom.dol", 0x2EEDAC, 0x4
.global lbl_803E5490
lbl_803E5490:
	.incbin "baserom.dol", 0x2EEDB0, 0x2C
.global __RTTI__11CoreNucleus
__RTTI__11CoreNucleus:
  .4byte 0x802d1340
  .4byte 0x802d13b0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e54c4
  .4byte 0
  .4byte lbl_802D134C
  .4byte 0x802d1508
  .4byte 0x802d1514
  .4byte 0
  .4byte 0x802d1524
  .4byte 0x802d1530
.global __RTTI__15CoreNucleusProp
__RTTI__15CoreNucleusProp:
  .4byte 0x802d14f8
  .4byte 0x802d153c
  .4byte 0
.global lbl_803E54F8
lbl_803E54F8:
	.incbin "baserom.dol", 0x2EEE18, 0xC
.global __RTTI__13CoreNucleusAi
__RTTI__13CoreNucleusAi:
  .4byte 0x802d15ac
  .4byte 0x802d15d0
  .4byte 0
  .4byte 0x4d697a75
  .4byte 0
  .4byte 0x802d1610
  .4byte 0
  .4byte 0x802d161c
  .4byte 0
  .4byte 0x802d162c
  .4byte 0x802d1638
  .4byte 0x426f7373
  .4byte 0
  .4byte 0x803e5530
  .4byte 0x802d164c
.global __RTTI__4Mizu
__RTTI__4Mizu:
  .4byte 0x803e5510
  .4byte 0x802d1668
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e5548
  .4byte 0
  .4byte lbl_802D1604
  .4byte 0x802d17bc
  .4byte 0x802d17c8
  .4byte 0
  .4byte 0x802d17d8
  .4byte 0x802d17e4
.global __RTTI__8MizuProp
__RTTI__8MizuProp:
  .4byte 0x802d17b0
  .4byte 0x802d17f0
  .4byte 0x4d697a75
  .4byte 0x41690000
.global lbl_803E5580
lbl_803E5580:
	.incbin "baserom.dol", 0x2EEEA0, 0x4
.global lbl_803E5584
lbl_803E5584:
	.incbin "baserom.dol", 0x2EEEA4, 0x4
.global lbl_803E5588
lbl_803E5588:
	.incbin "baserom.dol", 0x2EEEA8, 0x4
.global lbl_803E558C
lbl_803E558C:
	.incbin "baserom.dol", 0x2EEEAC, 0xC
.global __RTTI__6MizuAi
__RTTI__6MizuAi:
  .4byte 0x803e5578
  .4byte 0x802d18a8
  .4byte 0x802d18dc
  .4byte 0
.global __RTTI__25MizuGenSpringPuffCallBack
__RTTI__25MizuGenSpringPuffCallBack:
  .4byte 0x802d18c0
  .4byte 0x802d1908
.global rumblePoint_00
rumblePoint_00:
	.incbin "baserom.dol", 0x2EEED0, 0x4
.global rumblePoint_01
rumblePoint_01:
	.incbin "baserom.dol", 0x2EEED4, 0x4
.global rumblePoint_02
rumblePoint_02:
	.incbin "baserom.dol", 0x2EEED8, 0x4
.global rumblePoint_03
rumblePoint_03:
	.incbin "baserom.dol", 0x2EEEDC, 0x4
.global rumblePoint_04
rumblePoint_04:
	.incbin "baserom.dol", 0x2EEEE0, 0x4
.global rumblePoint_05
rumblePoint_05:
	.incbin "baserom.dol", 0x2EEEE4, 0x4
.global rumblePoint_06
rumblePoint_06:
	.incbin "baserom.dol", 0x2EEEE8, 0x4
.global rumblePoint_07
rumblePoint_07:
	.incbin "baserom.dol", 0x2EEEEC, 0x4
.global rumblePoint_08
rumblePoint_08:
	.incbin "baserom.dol", 0x2EEEF0, 0x4
.global rumblePoint_09
rumblePoint_09:
	.incbin "baserom.dol", 0x2EEEF4, 0x4
.global rumblePoint_10
rumblePoint_10:
	.incbin "baserom.dol", 0x2EEEF8, 0x4
.global rumblePoint_11
rumblePoint_11:
	.incbin "baserom.dol", 0x2EEEFC, 0x4
.global rumblePoint_12
rumblePoint_12:
	.incbin "baserom.dol", 0x2EEF00, 0x4
.global rumblePoint_13
rumblePoint_13:
	.incbin "baserom.dol", 0x2EEF04, 0x4
.global rumblePoint_14
rumblePoint_14:
	.incbin "baserom.dol", 0x2EEF08, 0x4
.global rumblePoint_15
rumblePoint_15:
	.incbin "baserom.dol", 0x2EEF0C, 0x4
.global rumblePoint_16
rumblePoint_16:
	.incbin "baserom.dol", 0x2EEF10, 0x4
.global rumblePoint_17
rumblePoint_17:
	.incbin "baserom.dol", 0x2EEF14, 0x4
.global rumblePoint_18
rumblePoint_18:
	.incbin "baserom.dol", 0x2EEF18, 0x4
.global rumblePoint_19
rumblePoint_19:
	.incbin "baserom.dol", 0x2EEF1C, 0x4
.global lbl_803E5600
lbl_803E5600:
	.incbin "baserom.dol", 0x2EEF20, 0x8
.global lbl_803E5608
lbl_803E5608:
	.incbin "baserom.dol", 0x2EEF28, 0x4
.global lbl_803E560C
lbl_803E560C:
	.incbin "baserom.dol", 0x2EEF2C, 0x4
.global lbl_803E5610
lbl_803E5610:
	.incbin "baserom.dol", 0x2EEF30, 0x4
.global lbl_803E5614
lbl_803E5614:
	.incbin "baserom.dol", 0x2EEF34, 0x4
.global lbl_803E5618
lbl_803E5618:
	.incbin "baserom.dol", 0x2EEF38, 0x4
.global lbl_803E561C
lbl_803E561C:
	.incbin "baserom.dol", 0x2EEF3C, 0x4
.global lbl_803E5620
lbl_803E5620:
	.incbin "baserom.dol", 0x2EEF40, 0x4
.global lbl_803E5624
lbl_803E5624:
	.incbin "baserom.dol", 0x2EEF44, 0x40
.global __RTTI__Q23zen13OgTestSection
__RTTI__Q23zen13OgTestSection:
  .4byte 0x802d25e8
  .4byte 0x802d2644
.global __RTTI__Q23zen12OgTestScreen
__RTTI__Q23zen12OgTestScreen:
  .4byte 0x802d26d0
  .4byte 0x802d26e4
  .4byte 0
.global lbl_803E5678
lbl_803E5678:
	.incbin "baserom.dol", 0x2EEF98, 0x8
.global lbl_803E5680
lbl_803E5680:
	.incbin "baserom.dol", 0x2EEFA0, 0x4
.global lbl_803E5684
lbl_803E5684:
	.incbin "baserom.dol", 0x2EEFA4, 0x8
.global lbl_803E568C
lbl_803E568C:
	.incbin "baserom.dol", 0x2EEFAC, 0x4
.global lbl_803E5690
lbl_803E5690:
	.incbin "baserom.dol", 0x2EEFB0, 0x4
.global lbl_803E5694
lbl_803E5694:
	.incbin "baserom.dol", 0x2EEFB4, 0x8
.global lbl_803E569C
lbl_803E569C:
	.incbin "baserom.dol", 0x2EEFBC, 0x4
.global lbl_803E56A0
lbl_803E56A0:
	.incbin "baserom.dol", 0x2EEFC0, 0x4
.global lbl_803E56A4
lbl_803E56A4:
	.incbin "baserom.dol", 0x2EEFC4, 0x4
.global lbl_803E56A8
lbl_803E56A8:
	.incbin "baserom.dol", 0x2EEFC8, 0x4
.global lbl_803E56AC
lbl_803E56AC:
	.incbin "baserom.dol", 0x2EEFCC, 0x4
.global lbl_803E56B0
lbl_803E56B0:
	.incbin "baserom.dol", 0x2EEFD0, 0x4
.global lbl_803E56B4
lbl_803E56B4:
	.incbin "baserom.dol", 0x2EEFD4, 0x4
.global lbl_803E56B8
lbl_803E56B8:
	.incbin "baserom.dol", 0x2EEFD8, 0x4
.global lbl_803E56BC
lbl_803E56BC:
	.incbin "baserom.dol", 0x2EEFDC, 0x4
.global lbl_803E56C0
lbl_803E56C0:
	.incbin "baserom.dol", 0x2EEFE0, 0x4
.global lbl_803E56C4
lbl_803E56C4:
	.incbin "baserom.dol", 0x2EEFE4, 0x4
.global lbl_803E56C8
lbl_803E56C8:
	.incbin "baserom.dol", 0x2EEFE8, 0x4
.global lbl_803E56CC
lbl_803E56CC:
	.incbin "baserom.dol", 0x2EEFEC, 0x4
.global lbl_803E56D0
lbl_803E56D0:
	.incbin "baserom.dol", 0x2EEFF0, 0x4
.global lbl_803E56D4
lbl_803E56D4:
	.incbin "baserom.dol", 0x2EEFF4, 0x4
.global lbl_803E56D8
lbl_803E56D8:
	.incbin "baserom.dol", 0x2EEFF8, 0x4
.global lbl_803E56DC
lbl_803E56DC:
	.incbin "baserom.dol", 0x2EEFFC, 0x4
.global lbl_803E56E0
lbl_803E56E0:
	.incbin "baserom.dol", 0x2EF000, 0x4
.global lbl_803E56E4
lbl_803E56E4:
	.incbin "baserom.dol", 0x2EF004, 0x4
.global lbl_803E56E8
lbl_803E56E8:
	.incbin "baserom.dol", 0x2EF008, 0x4
.global lbl_803E56EC
lbl_803E56EC:
	.incbin "baserom.dol", 0x2EF00C, 0x4
.global lbl_803E56F0
lbl_803E56F0:
	.incbin "baserom.dol", 0x2EF010, 0xC
.global __RTTI__Q23zen12FigureTex$$0i$$1
__RTTI__Q23zen12FigureTex$$0i$$1:
  .4byte 0x802d2f44
  .4byte 0x802d2f58
  .4byte 0x802d2f64
  .4byte 0
  .4byte 0x802d2f78
  .4byte 0
  .4byte 0x802d2f94
  .4byte 0x802d2fa4
.global __RTTI__Q23zen20NumberPicCallBack$$0i$$1
__RTTI__Q23zen20NumberPicCallBack$$0i$$1:
  .4byte 0x802d2f18
  .4byte 0x802d2fb8
  .4byte 0
.global lbl_803E5728
lbl_803E5728:
	.incbin "baserom.dol", 0x2EF048, 0xC
.global bloFile_Oniyon__3zen
bloFile_Oniyon__3zen:
	.incbin "baserom.dol", 0x2EF054, 0x8
.global bloFile_FoundPikmin__3zen
bloFile_FoundPikmin__3zen:
	.incbin "baserom.dol", 0x2EF05C, 0x8
.global bloFile_PullHint__3zen
bloFile_PullHint__3zen:
	.incbin "baserom.dol", 0x2EF064, 0x8
.global bloFile_ControlHint__3zen
bloFile_ControlHint__3zen:
	.incbin "baserom.dol", 0x2EF06C, 0x8
.global bloFile_Pelette__3zen
bloFile_Pelette__3zen:
	.incbin "baserom.dol", 0x2EF074, 0x8
.global bloFile_FoundEngine__3zen
bloFile_FoundEngine__3zen:
	.incbin "baserom.dol", 0x2EF07C, 0x8
.global bloFile_GetEngine__3zen
bloFile_GetEngine__3zen:
	.incbin "baserom.dol", 0x2EF084, 0x8
.global bloFile_RirikuDemo__3zen
bloFile_RirikuDemo__3zen:
	.incbin "baserom.dol", 0x2EF08C, 0x8
.global bloFile_Camera__3zen
bloFile_Camera__3zen:
	.incbin "baserom.dol", 0x2EF094, 0x8
.global bloFile_OnyonInOut__3zen
bloFile_OnyonInOut__3zen:
	.incbin "baserom.dol", 0x2EF09C, 0x8
.global bloFile_Zenmetu__3zen
bloFile_Zenmetu__3zen:
	.incbin "baserom.dol", 0x2EF0A4, 0x8
.global bloFile_YellowPikmin__3zen
bloFile_YellowPikmin__3zen:
	.incbin "baserom.dol", 0x2EF0AC, 0x8
.global bloFile_BluePikmin__3zen
bloFile_BluePikmin__3zen:
	.incbin "baserom.dol", 0x2EF0B4, 0x8
.global bloFile_FoundBomb__3zen
bloFile_FoundBomb__3zen:
	.incbin "baserom.dol", 0x2EF0BC, 0x8
.global bloFile_GetParts__3zen
bloFile_GetParts__3zen:
	.incbin "baserom.dol", 0x2EF0C4, 0x8
.global bloFile_PowerUp__3zen
bloFile_PowerUp__3zen:
	.incbin "baserom.dol", 0x2EF0CC, 0x8
.global bloFile_DayEnd__3zen
bloFile_DayEnd__3zen:
	.incbin "baserom.dol", 0x2EF0D4, 0x8
.global bloFile_Limit100__3zen
bloFile_Limit100__3zen:
	.incbin "baserom.dol", 0x2EF0DC, 0x8
.global bloFile_Mitu__3zen
bloFile_Mitu__3zen:
	.incbin "baserom.dol", 0x2EF0E4, 0x8
.global bloFile_Rute__3zen
bloFile_Rute__3zen:
	.incbin "baserom.dol", 0x2EF0EC, 0x8
.global bloFile_APunchUFO__3zen
bloFile_APunchUFO__3zen:
	.incbin "baserom.dol", 0x2EF0F4, 0x8
.global bloFile_LifeUp__3zen
bloFile_LifeUp__3zen:
	.incbin "baserom.dol", 0x2EF0FC, 0x8
.global bloFile_HitUFO__3zen
bloFile_HitUFO__3zen:
	.incbin "baserom.dol", 0x2EF104, 0x8
.global bloFile_FinishUFO__3zen
bloFile_FinishUFO__3zen:
	.incbin "baserom.dol", 0x2EF10C, 0x8
.global bloFile_BadEnding__3zen
bloFile_BadEnding__3zen:
	.incbin "baserom.dol", 0x2EF114, 0x8
.global bloFile_HappyEnding__3zen
bloFile_HappyEnding__3zen:
	.incbin "baserom.dol", 0x2EF11C, 0x8
.global bloFile_PartsGetOnly_ust1__3zen
bloFile_PartsGetOnly_ust1__3zen:
	.incbin "baserom.dol", 0x2EF124, 0x8
.global bloFile_PartsGetOnly_ust2__3zen
bloFile_PartsGetOnly_ust2__3zen:
	.incbin "baserom.dol", 0x2EF12C, 0x8
.global bloFile_PartsGetOnly_ust3__3zen
bloFile_PartsGetOnly_ust3__3zen:
	.incbin "baserom.dol", 0x2EF134, 0x8
.global bloFile_PartsGetOnly_ust4__3zen
bloFile_PartsGetOnly_ust4__3zen:
	.incbin "baserom.dol", 0x2EF13C, 0x8
.global bloFile_PartsGetOnly_ust5__3zen
bloFile_PartsGetOnly_ust5__3zen:
	.incbin "baserom.dol", 0x2EF144, 0x8
.global bloFile_PartsGetOnly_uf01__3zen
bloFile_PartsGetOnly_uf01__3zen:
	.incbin "baserom.dol", 0x2EF14C, 0x8
.global bloFile_PartsGetOnly_uf02__3zen
bloFile_PartsGetOnly_uf02__3zen:
	.incbin "baserom.dol", 0x2EF154, 0x8
.global bloFile_PartsGetOnly_uf03__3zen
bloFile_PartsGetOnly_uf03__3zen:
	.incbin "baserom.dol", 0x2EF15C, 0x8
.global bloFile_PartsGetOnly_uf04__3zen
bloFile_PartsGetOnly_uf04__3zen:
	.incbin "baserom.dol", 0x2EF164, 0x8
.global bloFile_PartsGetOnly_uf05__3zen
bloFile_PartsGetOnly_uf05__3zen:
	.incbin "baserom.dol", 0x2EF16C, 0x8
.global bloFile_PartsGetOnly_uf06__3zen
bloFile_PartsGetOnly_uf06__3zen:
	.incbin "baserom.dol", 0x2EF174, 0x8
.global bloFile_PartsGetOnly_uf07__3zen
bloFile_PartsGetOnly_uf07__3zen:
	.incbin "baserom.dol", 0x2EF17C, 0x8
.global bloFile_PartsGetOnly_uf08__3zen
bloFile_PartsGetOnly_uf08__3zen:
	.incbin "baserom.dol", 0x2EF184, 0x8
.global bloFile_PartsGetOnly_uf09__3zen
bloFile_PartsGetOnly_uf09__3zen:
	.incbin "baserom.dol", 0x2EF18C, 0x8
.global bloFile_PartsGetOnly_uf10__3zen
bloFile_PartsGetOnly_uf10__3zen:
	.incbin "baserom.dol", 0x2EF194, 0x8
.global bloFile_PartsGetOnly_uf11__3zen
bloFile_PartsGetOnly_uf11__3zen:
	.incbin "baserom.dol", 0x2EF19C, 0x8
.global bloFile_PartsGetOnly_un01__3zen
bloFile_PartsGetOnly_un01__3zen:
	.incbin "baserom.dol", 0x2EF1A4, 0x8
.global bloFile_PartsGetOnly_un02__3zen
bloFile_PartsGetOnly_un02__3zen:
	.incbin "baserom.dol", 0x2EF1AC, 0x8
.global bloFile_PartsGetOnly_un03__3zen
bloFile_PartsGetOnly_un03__3zen:
	.incbin "baserom.dol", 0x2EF1B4, 0x8
.global bloFile_PartsGetOnly_un04__3zen
bloFile_PartsGetOnly_un04__3zen:
	.incbin "baserom.dol", 0x2EF1BC, 0x8
.global bloFile_PartsGetOnly_un05__3zen
bloFile_PartsGetOnly_un05__3zen:
	.incbin "baserom.dol", 0x2EF1C4, 0x8
.global bloFile_PartsGetOnly_un06__3zen
bloFile_PartsGetOnly_un06__3zen:
	.incbin "baserom.dol", 0x2EF1CC, 0x8
.global bloFile_PartsGetOnly_un07__3zen
bloFile_PartsGetOnly_un07__3zen:
	.incbin "baserom.dol", 0x2EF1D4, 0x8
.global bloFile_PartsGetOnly_un08__3zen
bloFile_PartsGetOnly_un08__3zen:
	.incbin "baserom.dol", 0x2EF1DC, 0x8
.global bloFile_PartsGetOnly_un09__3zen
bloFile_PartsGetOnly_un09__3zen:
	.incbin "baserom.dol", 0x2EF1E4, 0x8
.global bloFile_PartsGetOnly_un10__3zen
bloFile_PartsGetOnly_un10__3zen:
	.incbin "baserom.dol", 0x2EF1EC, 0x8
.global bloFile_PartsGetOnly_un11__3zen
bloFile_PartsGetOnly_un11__3zen:
	.incbin "baserom.dol", 0x2EF1F4, 0x8
.global bloFile_PartsGetOnly_un12__3zen
bloFile_PartsGetOnly_un12__3zen:
	.incbin "baserom.dol", 0x2EF1FC, 0x8
.global bloFile_PartsGetOnly_un13__3zen
bloFile_PartsGetOnly_un13__3zen:
	.incbin "baserom.dol", 0x2EF204, 0x8
.global bloFile_PartsGetOnly_un14__3zen
bloFile_PartsGetOnly_un14__3zen:
	.incbin "baserom.dol", 0x2EF20C, 0x8
.global bloFile_PartsInfo_ust1__3zen
bloFile_PartsInfo_ust1__3zen:
	.incbin "baserom.dol", 0x2EF214, 0x8
.global bloFile_PartsInfo_ust2__3zen
bloFile_PartsInfo_ust2__3zen:
	.incbin "baserom.dol", 0x2EF21C, 0x8
.global bloFile_PartsInfo_ust3__3zen
bloFile_PartsInfo_ust3__3zen:
	.incbin "baserom.dol", 0x2EF224, 0x8
.global bloFile_PartsInfo_ust4__3zen
bloFile_PartsInfo_ust4__3zen:
	.incbin "baserom.dol", 0x2EF22C, 0x8
.global bloFile_PartsInfo_ust5__3zen
bloFile_PartsInfo_ust5__3zen:
	.incbin "baserom.dol", 0x2EF234, 0x8
.global bloFile_PartsInfo_uf01__3zen
bloFile_PartsInfo_uf01__3zen:
	.incbin "baserom.dol", 0x2EF23C, 0x8
.global bloFile_PartsInfo_uf02__3zen
bloFile_PartsInfo_uf02__3zen:
	.incbin "baserom.dol", 0x2EF244, 0x8
.global bloFile_PartsInfo_uf03__3zen
bloFile_PartsInfo_uf03__3zen:
	.incbin "baserom.dol", 0x2EF24C, 0x8
.global bloFile_PartsInfo_uf04__3zen
bloFile_PartsInfo_uf04__3zen:
	.incbin "baserom.dol", 0x2EF254, 0x8
.global bloFile_PartsInfo_uf05__3zen
bloFile_PartsInfo_uf05__3zen:
	.incbin "baserom.dol", 0x2EF25C, 0x8
.global bloFile_PartsInfo_uf06__3zen
bloFile_PartsInfo_uf06__3zen:
	.incbin "baserom.dol", 0x2EF264, 0x8
.global bloFile_PartsInfo_uf07__3zen
bloFile_PartsInfo_uf07__3zen:
	.incbin "baserom.dol", 0x2EF26C, 0x8
.global bloFile_PartsInfo_uf08__3zen
bloFile_PartsInfo_uf08__3zen:
	.incbin "baserom.dol", 0x2EF274, 0x8
.global bloFile_PartsInfo_uf09__3zen
bloFile_PartsInfo_uf09__3zen:
	.incbin "baserom.dol", 0x2EF27C, 0x8
.global bloFile_PartsInfo_uf10__3zen
bloFile_PartsInfo_uf10__3zen:
	.incbin "baserom.dol", 0x2EF284, 0x8
.global bloFile_PartsInfo_uf11__3zen
bloFile_PartsInfo_uf11__3zen:
	.incbin "baserom.dol", 0x2EF28C, 0x8
.global bloFile_PartsInfo_un01__3zen
bloFile_PartsInfo_un01__3zen:
	.incbin "baserom.dol", 0x2EF294, 0x8
.global bloFile_PartsInfo_un02__3zen
bloFile_PartsInfo_un02__3zen:
	.incbin "baserom.dol", 0x2EF29C, 0x8
.global bloFile_PartsInfo_un03__3zen
bloFile_PartsInfo_un03__3zen:
	.incbin "baserom.dol", 0x2EF2A4, 0x8
.global bloFile_PartsInfo_un04__3zen
bloFile_PartsInfo_un04__3zen:
	.incbin "baserom.dol", 0x2EF2AC, 0x8
.global bloFile_PartsInfo_un05__3zen
bloFile_PartsInfo_un05__3zen:
	.incbin "baserom.dol", 0x2EF2B4, 0x8
.global bloFile_PartsInfo_un06__3zen
bloFile_PartsInfo_un06__3zen:
	.incbin "baserom.dol", 0x2EF2BC, 0x8
.global bloFile_PartsInfo_un07__3zen
bloFile_PartsInfo_un07__3zen:
	.incbin "baserom.dol", 0x2EF2C4, 0x8
.global bloFile_PartsInfo_un08__3zen
bloFile_PartsInfo_un08__3zen:
	.incbin "baserom.dol", 0x2EF2CC, 0x8
.global bloFile_PartsInfo_un09__3zen
bloFile_PartsInfo_un09__3zen:
	.incbin "baserom.dol", 0x2EF2D4, 0x8
.global bloFile_PartsInfo_un10__3zen
bloFile_PartsInfo_un10__3zen:
	.incbin "baserom.dol", 0x2EF2DC, 0x8
.global bloFile_PartsInfo_un11__3zen
bloFile_PartsInfo_un11__3zen:
	.incbin "baserom.dol", 0x2EF2E4, 0x8
.global bloFile_PartsInfo_un12__3zen
bloFile_PartsInfo_un12__3zen:
	.incbin "baserom.dol", 0x2EF2EC, 0x8
.global bloFile_PartsInfo_un13__3zen
bloFile_PartsInfo_un13__3zen:
	.incbin "baserom.dol", 0x2EF2F4, 0x8
.global bloFile_PartsInfo_un14__3zen
bloFile_PartsInfo_un14__3zen:
	.incbin "baserom.dol", 0x2EF2FC, 0x8
.global bloFile_Test__3zen
bloFile_Test__3zen:
	.incbin "baserom.dol", 0x2EF304, 0x14
.global lbl_803E59F8
lbl_803E59F8:
	.incbin "baserom.dol", 0x2EF318, 0x4
.global lbl_803E59FC
lbl_803E59FC:
	.incbin "baserom.dol", 0x2EF31C, 0x4
.global lbl_803E5A00
lbl_803E5A00:
	.incbin "baserom.dol", 0x2EF320, 0x4
.global lbl_803E5A04
lbl_803E5A04:
	.incbin "baserom.dol", 0x2EF324, 0x4
.global lbl_803E5A08
lbl_803E5A08:
	.incbin "baserom.dol", 0x2EF328, 0x4
.global lbl_803E5A0C
lbl_803E5A0C:
	.incbin "baserom.dol", 0x2EF32C, 0x4
.global lbl_803E5A10
lbl_803E5A10:
	.incbin "baserom.dol", 0x2EF330, 0x4
.global lbl_803E5A14
lbl_803E5A14:
	.incbin "baserom.dol", 0x2EF334, 0x4
.global lbl_803E5A18
lbl_803E5A18:
	.incbin "baserom.dol", 0x2EF338, 0x4
.global lbl_803E5A1C
lbl_803E5A1C:
	.incbin "baserom.dol", 0x2EF33C, 0x4
.global lbl_803E5A20
lbl_803E5A20:
	.incbin "baserom.dol", 0x2EF340, 0x4
.global lbl_803E5A24
lbl_803E5A24:
	.incbin "baserom.dol", 0x2EF344, 0x4
.global lbl_803E5A28
lbl_803E5A28:
	.incbin "baserom.dol", 0x2EF348, 0x4
.global lbl_803E5A2C
lbl_803E5A2C:
	.incbin "baserom.dol", 0x2EF34C, 0x4
.global lbl_803E5A30
lbl_803E5A30:
	.incbin "baserom.dol", 0x2EF350, 0x4
.global lbl_803E5A34
lbl_803E5A34:
	.incbin "baserom.dol", 0x2EF354, 0x4
.global lbl_803E5A38
lbl_803E5A38:
	.incbin "baserom.dol", 0x2EF358, 0x8
.global lbl_803E5A40
lbl_803E5A40:
	.incbin "baserom.dol", 0x2EF360, 0x4
.global lbl_803E5A44
lbl_803E5A44:
	.incbin "baserom.dol", 0x2EF364, 0x4
.global lbl_803E5A48
lbl_803E5A48:
	.incbin "baserom.dol", 0x2EF368, 0x4
.global lbl_803E5A4C
lbl_803E5A4C:
	.incbin "baserom.dol", 0x2EF36C, 0x4
.global lbl_803E5A50
lbl_803E5A50:
	.incbin "baserom.dol", 0x2EF370, 0x8
.global lbl_803E5A58
lbl_803E5A58:
	.incbin "baserom.dol", 0x2EF378, 0x4
.global lbl_803E5A5C
lbl_803E5A5C:
	.incbin "baserom.dol", 0x2EF37C, 0x8
.global lbl_803E5A64
lbl_803E5A64:
	.incbin "baserom.dol", 0x2EF384, 0x8
.global lbl_803E5A6C
lbl_803E5A6C:
	.incbin "baserom.dol", 0x2EF38C, 0x8
.global lbl_803E5A74
lbl_803E5A74:
	.incbin "baserom.dol", 0x2EF394, 0x8
.global lbl_803E5A7C
lbl_803E5A7C:
	.incbin "baserom.dol", 0x2EF39C, 0x8
.global lbl_803E5A84
lbl_803E5A84:
	.incbin "baserom.dol", 0x2EF3A4, 0x8
.global lbl_803E5A8C
lbl_803E5A8C:
	.incbin "baserom.dol", 0x2EF3AC, 0xC
.global lbl_803E5A98
lbl_803E5A98:
	.incbin "baserom.dol", 0x2EF3B8, 0x4
.global lbl_803E5A9C
lbl_803E5A9C:
	.incbin "baserom.dol", 0x2EF3BC, 0x4
.global lbl_803E5AA0
lbl_803E5AA0:
	.incbin "baserom.dol", 0x2EF3C0, 0x8
.global bloFiles_default_Diary__3zen
bloFiles_default_Diary__3zen:
	.incbin "baserom.dol", 0x2EF3C8, 0x8
.global bloFiles_Diary__3zen
bloFiles_Diary__3zen:
	.incbin "baserom.dol", 0x2EF3D0, 0x8
.global lbl_803E5AB8
lbl_803E5AB8:
	.incbin "baserom.dol", 0x2EF3D8, 0x4
.global lbl_803E5ABC
lbl_803E5ABC:
	.incbin "baserom.dol", 0x2EF3DC, 0x4
.global lbl_803E5AC0
lbl_803E5AC0:
	.incbin "baserom.dol", 0x2EF3E0, 0x4
.global lbl_803E5AC4
lbl_803E5AC4:
	.incbin "baserom.dol", 0x2EF3E4, 0x4
.global lbl_803E5AC8
lbl_803E5AC8:
	.incbin "baserom.dol", 0x2EF3E8, 0x8
.global lbl_803E5AD0
lbl_803E5AD0:
	.incbin "baserom.dol", 0x2EF3F0, 0x8
.global lbl_803E5AD8
lbl_803E5AD8:
	.incbin "baserom.dol", 0x2EF3F8, 0x8
.global lbl_803E5AE0
lbl_803E5AE0:
	.incbin "baserom.dol", 0x2EF400, 0x8
.global lbl_803E5AE8
lbl_803E5AE8:
	.incbin "baserom.dol", 0x2EF408, 0x4
.global lbl_803E5AEC
lbl_803E5AEC:
	.incbin "baserom.dol", 0x2EF40C, 0x4
.global lbl_803E5AF0
lbl_803E5AF0:
	.incbin "baserom.dol", 0x2EF410, 0x4
.global lbl_803E5AF4
lbl_803E5AF4:
	.incbin "baserom.dol", 0x2EF414, 0x4
.global lbl_803E5AF8
lbl_803E5AF8:
	.incbin "baserom.dol", 0x2EF418, 0x4
.global lbl_803E5AFC
lbl_803E5AFC:
	.incbin "baserom.dol", 0x2EF41C, 0x4
.global lbl_803E5B00
lbl_803E5B00:
	.incbin "baserom.dol", 0x2EF420, 0x4
.global lbl_803E5B04
lbl_803E5B04:
	.incbin "baserom.dol", 0x2EF424, 0x4
.global lbl_803E5B08
lbl_803E5B08:
	.incbin "baserom.dol", 0x2EF428, 0x4
.global lbl_803E5B0C
lbl_803E5B0C:
	.incbin "baserom.dol", 0x2EF42C, 0x4
.global lbl_803E5B10
lbl_803E5B10:
	.incbin "baserom.dol", 0x2EF430, 0x8
.global lbl_803E5B18
lbl_803E5B18:
	.incbin "baserom.dol", 0x2EF438, 0x8
.global lbl_803E5B20
lbl_803E5B20:
	.incbin "baserom.dol", 0x2EF440, 0x8
.global lbl_803E5B28
lbl_803E5B28:
	.incbin "baserom.dol", 0x2EF448, 0x8
.global lbl_803E5B30
lbl_803E5B30:
	.incbin "baserom.dol", 0x2EF450, 0x8
.global lbl_803E5B38
lbl_803E5B38:
	.incbin "baserom.dol", 0x2EF458, 0x4
.global lbl_803E5B3C
lbl_803E5B3C:
	.incbin "baserom.dol", 0x2EF45C, 0x4
.global lbl_803E5B40
lbl_803E5B40:
	.incbin "baserom.dol", 0x2EF460, 0x4
.global lbl_803E5B44
lbl_803E5B44:
	.incbin "baserom.dol", 0x2EF464, 0x4
.global lbl_803E5B48
lbl_803E5B48:
	.incbin "baserom.dol", 0x2EF468, 0x4
.global lbl_803E5B4C
lbl_803E5B4C:
	.incbin "baserom.dol", 0x2EF46C, 0x4
.global lbl_803E5B50
lbl_803E5B50:
	.incbin "baserom.dol", 0x2EF470, 0x4
.global lbl_803E5B54
lbl_803E5B54:
	.incbin "baserom.dol", 0x2EF474, 0x4
.global lbl_803E5B58
lbl_803E5B58:
	.incbin "baserom.dol", 0x2EF478, 0x4
.global lbl_803E5B5C
lbl_803E5B5C:
	.incbin "baserom.dol", 0x2EF47C, 0x1C
.global __RTTI__Q23zen17TextColorCallBack
__RTTI__Q23zen17TextColorCallBack:
  .4byte 0x802d626c
  .4byte 0x802d62d8
.global lbl_803E5B80
lbl_803E5B80:
	.incbin "baserom.dol", 0x2EF4A0, 0x4
.global lbl_803E5B84
lbl_803E5B84:
	.incbin "baserom.dol", 0x2EF4A4, 0x4
.global lbl_803E5B88
lbl_803E5B88:
	.incbin "baserom.dol", 0x2EF4A8, 0x4
.global lbl_803E5B8C
lbl_803E5B8C:
	.incbin "baserom.dol", 0x2EF4AC, 0x4
.global lbl_803E5B90
lbl_803E5B90:
	.incbin "baserom.dol", 0x2EF4B0, 0x4
.global lbl_803E5B94
lbl_803E5B94:
	.incbin "baserom.dol", 0x2EF4B4, 0x4
.global lbl_803E5B98
lbl_803E5B98:
	.incbin "baserom.dol", 0x2EF4B8, 0x4
.global lbl_803E5B9C
lbl_803E5B9C:
	.incbin "baserom.dol", 0x2EF4BC, 0x4
.global lbl_803E5BA0
lbl_803E5BA0:
	.incbin "baserom.dol", 0x2EF4C0, 0x4
.global lbl_803E5BA4
lbl_803E5BA4:
	.incbin "baserom.dol", 0x2EF4C4, 0x8
.global lbl_803E5BAC
lbl_803E5BAC:
	.incbin "baserom.dol", 0x2EF4CC, 0x4
.global lbl_803E5BB0
lbl_803E5BB0:
	.incbin "baserom.dol", 0x2EF4D0, 0x4
.global lbl_803E5BB4
lbl_803E5BB4:
	.incbin "baserom.dol", 0x2EF4D4, 0x20
.global __RTTI__Q23zen7zenList
__RTTI__Q23zen7zenList:
  .4byte 0x802d6574
  .4byte 0
.global __RTTI__Q23zen17particleGenerator
__RTTI__Q23zen17particleGenerator:
  .4byte 0x802d655c
  .4byte 0x802d6584
.global __RTTI__12GameModeBase
__RTTI__12GameModeBase:
  .4byte 0x802d65b0
  .4byte 0
.global __RTTI__12CMresultMode
__RTTI__12CMresultMode:
  .4byte 0x802d65a0
  .4byte 0x802d65c0
.global __RTTI__11HurryUpMode
__RTTI__11HurryUpMode:
  .4byte 0x802d65dc
  .4byte 0x802d65e8
.global __RTTI__12GameInfoMode
__RTTI__12GameInfoMode:
  .4byte 0x802d6604
  .4byte 0x802d6614
.global __RTTI__15ProgressiveMode
__RTTI__15ProgressiveMode:
  .4byte 0x802d6630
  .4byte 0x802d6640
.global __RTTI__13CountDownMode
__RTTI__13CountDownMode:
  .4byte 0x802d665c
  .4byte 0x802d666c
.global __RTTI__12GameOverMode
__RTTI__12GameOverMode:
  .4byte 0x802d6688
  .4byte 0x802d6698
.global __RTTI__13ContainerMode
__RTTI__13ContainerMode:
  .4byte 0x802d66b4
  .4byte 0x802d66c4
.global __RTTI__11WMPauseMode
__RTTI__11WMPauseMode:
  .4byte 0x802d66e0
  .4byte 0x802d66ec
.global __RTTI__12WorldMapMode
__RTTI__12WorldMapMode:
  .4byte 0x802d6708
  .4byte 0x802d6718
.global __RTTI__18CMcourseSelectMode
__RTTI__18CMcourseSelectMode:
  .4byte 0x802d6734
  .4byte 0x802d6748
.global __RTTI__11HiScoreMode
__RTTI__11HiScoreMode:
  .4byte 0x802d6764
  .4byte 0x802d6770
.global __RTTI__12UfoPartsMode
__RTTI__12UfoPartsMode:
  .4byte 0x802d678c
  .4byte 0x802d679c
.global __RTTI__11SaveMesMode
__RTTI__11SaveMesMode:
  .4byte 0x802d67b8
  .4byte 0x802d67c4
.global __RTTI__15SaveFailureMode
__RTTI__15SaveFailureMode:
  .4byte 0x802d67e0
  .4byte 0x802d67f0
.global __RTTI__15FinalResultMode
__RTTI__15FinalResultMode:
  .4byte 0x802d680c
  .4byte 0x802d681c
.global __RTTI__18IDelegate1$$0R4Menu$$1_5
__RTTI__18IDelegate1$$0R4Menu$$1_5:
  .4byte 0x802d6874
  .4byte 0
.global __RTTI__41Delegate1$$021GameCourseClearScreen$$4R4Menu$$1
__RTTI__41Delegate1$$021GameCourseClearScreen$$4R4Menu$$1:
  .4byte 0x802d6848
  .4byte 0x802d6888
  .4byte 0x802d68f8
  .4byte 0
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e5c7c
  .4byte 0x802d6950
.global __RTTI__21GameCourseClearScreen
__RTTI__21GameCourseClearScreen:
  .4byte 0x802d6380
  .4byte 0x802d6964
  .4byte 0x53656374
  .4byte 0x696f6e00
  .4byte 0x803e5c94
  .4byte 0x802d69b0
.global __RTTI__22GameCourseClearSection
__RTTI__22GameCourseClearSection:
  .4byte 0x802d6334
  .4byte 0x802d69cc
  .4byte 0
.global lbl_803E5CB0
lbl_803E5CB0:
	.incbin "baserom.dol", 0x2EF5D0, 0x40
.global __RTTI__21GameStageClearSection
__RTTI__21GameStageClearSection:
  .4byte 0x802d6a6c
  .4byte 0x802d6b00
.global lbl_803E5CF8
lbl_803E5CF8:
	.incbin "baserom.dol", 0x2EF618, 0x40
.global __RTTI__18GameCreditsSection
__RTTI__18GameCreditsSection:
  .4byte 0x802d6ba0
  .4byte 0x802d6c30
.global lbl_803E5D40
lbl_803E5D40:
	.incbin "baserom.dol", 0x2EF660, 0x4
.global lbl_803E5D44
lbl_803E5D44:
	.incbin "baserom.dol", 0x2EF664, 0x4
.global lbl_803E5D48
lbl_803E5D48:
	.incbin "baserom.dol", 0x2EF668, 0x4
.global lbl_803E5D4C
lbl_803E5D4C:
	.incbin "baserom.dol", 0x2EF66C, 0x4
.global lbl_803E5D50
lbl_803E5D50:
	.incbin "baserom.dol", 0x2EF670, 0x4
.global lbl_803E5D54
lbl_803E5D54:
	.incbin "baserom.dol", 0x2EF674, 0x4
.global lbl_803E5D58
lbl_803E5D58:
	.incbin "baserom.dol", 0x2EF678, 0x4
.global lbl_803E5D5C
lbl_803E5D5C:
	.incbin "baserom.dol", 0x2EF67C, 0x4
.global lbl_803E5D60
lbl_803E5D60:
	.incbin "baserom.dol", 0x2EF680, 0x4
.global lbl_803E5D64
lbl_803E5D64:
	.incbin "baserom.dol", 0x2EF684, 0x4
.global lbl_803E5D68
lbl_803E5D68:
	.incbin "baserom.dol", 0x2EF688, 0x4
.global lbl_803E5D6C
lbl_803E5D6C:
	.incbin "baserom.dol", 0x2EF68C, 0x4
.global lbl_803E5D70
lbl_803E5D70:
	.incbin "baserom.dol", 0x2EF690, 0x4
.global lbl_803E5D74
lbl_803E5D74:
	.incbin "baserom.dol", 0x2EF694, 0x4
.global lbl_803E5D78
lbl_803E5D78:
	.incbin "baserom.dol", 0x2EF698, 0x4
.global lbl_803E5D7C
lbl_803E5D7C:
	.incbin "baserom.dol", 0x2EF69C, 0x4
.global lbl_803E5D80
lbl_803E5D80:
	.incbin "baserom.dol", 0x2EF6A0, 0x4
.global lbl_803E5D84
lbl_803E5D84:
	.incbin "baserom.dol", 0x2EF6A4, 0x4
.global lbl_803E5D88
lbl_803E5D88:
	.incbin "baserom.dol", 0x2EF6A8, 0x4
.global lbl_803E5D8C
lbl_803E5D8C:
	.incbin "baserom.dol", 0x2EF6AC, 0x20
.global __RTTI__10EffShpInst
__RTTI__10EffShpInst:
  .4byte 0x802da478
  .4byte 0x802da49c
.global __RTTI__9EffectMgr
__RTTI__9EffectMgr:
  .4byte 0x802da4e0
  .4byte 0x802da4ec
.global __RTTI__26EffectGeometryRegistration
__RTTI__26EffectGeometryRegistration:
  .4byte 0x802da510
  .4byte 0
.global __RTTI__11EffectShape
__RTTI__11EffectShape:
  .4byte 0x802da538
  .4byte 0x802da544
.global __RTTI__26EffectParticleRegistration
__RTTI__26EffectParticleRegistration:
  .4byte 0x802da568
  .4byte 0
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e5dd4
  .4byte 0x802da5a0
.global __RTTI__12SmokeEmitter
__RTTI__12SmokeEmitter:
  .4byte 0x802da590
  .4byte 0x802da5b4
  .4byte 0
  .4byte 0
  .4byte 0
  .4byte 0
  .4byte 0
.global lpsCoord
lpsCoord:
	.incbin "baserom.dol", 0x2EF720, 0x8
.global lbl_803E5E08
lbl_803E5E08:
	.incbin "baserom.dol", 0x2EF728, 0x4
.global lbl_803E5E0C
lbl_803E5E0C:
	.incbin "baserom.dol", 0x2EF72C, 0x4
.global lbl_803E5E10
lbl_803E5E10:
	.incbin "baserom.dol", 0x2EF730, 0x4
.global lbl_803E5E14
lbl_803E5E14:
	.incbin "baserom.dol", 0x2EF734, 0x4
.global lbl_803E5E18
lbl_803E5E18:
	.incbin "baserom.dol", 0x2EF738, 0x4
.global lbl_803E5E1C
lbl_803E5E1C:
	.incbin "baserom.dol", 0x2EF73C, 0x4
.global __RTTI__Q23zen7zenList_1
__RTTI__Q23zen7zenList_1:
  .4byte 0x802da74c
  .4byte 0
.global __RTTI__Q23zen7PCRData
__RTTI__Q23zen7PCRData:
  .4byte 0x802da73c
  .4byte 0x802da75c
.global DEFAULT_FRAME_RATE__Q23zen15particleManager
DEFAULT_FRAME_RATE__Q23zen15particleManager:
	.incbin "baserom.dol", 0x2EF750, 0x8
.global lbl_803E5E38
lbl_803E5E38:
	.incbin "baserom.dol", 0x2EF758, 0x4
.global lbl_803E5E3C
lbl_803E5E3C:
	.incbin "baserom.dol", 0x2EF75C, 0x4
.global lbl_803E5E40
lbl_803E5E40:
	.incbin "baserom.dol", 0x2EF760, 0x4
.global lbl_803E5E44
lbl_803E5E44:
	.incbin "baserom.dol", 0x2EF764, 0x4
.global lbl_803E5E48
lbl_803E5E48:
	.incbin "baserom.dol", 0x2EF768, 0x4
.global lbl_803E5E4C
lbl_803E5E4C:
	.incbin "baserom.dol", 0x2EF76C, 0x4
.global lbl_803E5E50
lbl_803E5E50:
	.incbin "baserom.dol", 0x2EF770, 0x4
.global lbl_803E5E54
lbl_803E5E54:
	.incbin "baserom.dol", 0x2EF774, 0x4
.global lbl_803E5E58
lbl_803E5E58:
	.incbin "baserom.dol", 0x2EF778, 0x4
.global lbl_803E5E5C
lbl_803E5E5C:
	.incbin "baserom.dol", 0x2EF77C, 0x4
.global lbl_803E5E60
lbl_803E5E60:
	.incbin "baserom.dol", 0x2EF780, 0x4
.global lbl_803E5E64
lbl_803E5E64:
	.incbin "baserom.dol", 0x2EF784, 0x4
.global __RTTI__Q23zen7zenList_2
__RTTI__Q23zen7zenList_2:
  .4byte 0x802dd7e0
  .4byte 0
.global __RTTI__Q23zen15particleMdlBase
__RTTI__Q23zen15particleMdlBase:
  .4byte 0x802dd7f0
  .4byte 0x802dd808
.global __RTTI__Q23zen11particleMdl
__RTTI__Q23zen11particleMdl:
  .4byte 0x802dd7cc
  .4byte 0x802dd814
.global __RTTI__Q23zen16particleChildMdl
__RTTI__Q23zen16particleChildMdl:
  .4byte 0x802dd858
  .4byte 0x802dd870
.global lbl_803E5E88
lbl_803E5E88:
	.incbin "baserom.dol", 0x2EF7A8, 0x4
.global lbl_803E5E8C
lbl_803E5E8C:
	.incbin "baserom.dol", 0x2EF7AC, 0x4
.global lbl_803E5E90
lbl_803E5E90:
	.incbin "baserom.dol", 0x2EF7B0, 0x4
.global lbl_803E5E94
lbl_803E5E94:
	.incbin "baserom.dol", 0x2EF7B4, 0x4
.global lbl_803E5E98
lbl_803E5E98:
	.incbin "baserom.dol", 0x2EF7B8, 0x4
.global lbl_803E5E9C
lbl_803E5E9C:
	.incbin "baserom.dol", 0x2EF7BC, 0x4
.global lbl_803E5EA0
lbl_803E5EA0:
	.incbin "baserom.dol", 0x2EF7C0, 0x4
.global lbl_803E5EA4
lbl_803E5EA4:
	.incbin "baserom.dol", 0x2EF7C4, 0x4
.global lbl_803E5EA8
lbl_803E5EA8:
	.incbin "baserom.dol", 0x2EF7C8, 0x4
.global lbl_803E5EAC
lbl_803E5EAC:
	.incbin "baserom.dol", 0x2EF7CC, 0x4
.global lbl_803E5EB0
lbl_803E5EB0:
	.incbin "baserom.dol", 0x2EF7D0, 0x4
.global lbl_803E5EB4
lbl_803E5EB4:
	.incbin "baserom.dol", 0x2EF7D4, 0x4
.global lbl_803E5EB8
lbl_803E5EB8:
	.incbin "baserom.dol", 0x2EF7D8, 0x4
.global lbl_803E5EBC
lbl_803E5EBC:
	.incbin "baserom.dol", 0x2EF7DC, 0xC
.global __RTTI__10PelletView_4
__RTTI__10PelletView_4:
  .4byte 0x802dd8ec
  .4byte 0
  .4byte 0x802dd8f8
  .4byte 0
  .4byte 0x802dd90c
  .4byte 0
  .4byte 0x802dd918
  .4byte 0
  .4byte 0x802dd928
  .4byte 0x802dd934
  .4byte 0x4254656b
  .4byte 0x69000000
  .4byte 0x803e5ef0
  .4byte 0x802dd948
  .4byte 0x4e54656b
  .4byte 0x69000000
  .4byte 0x803e5f00
  .4byte 0x802dd974
  .4byte 0x803e5ec0
  .4byte 0x802dd9a8
  .4byte 0x802ddc1c
  .4byte 0
.global lbl_803E5F20
lbl_803E5F20:
	.incbin "baserom.dol", 0x2EF840, 0x4
.global lbl_803E5F24
lbl_803E5F24:
	.incbin "baserom.dol", 0x2EF844, 0x4
.global lbl_803E5F28
lbl_803E5F28:
	.incbin "baserom.dol", 0x2EF848, 0x4
.global lbl_803E5F2C
lbl_803E5F2C:
	.incbin "baserom.dol", 0x2EF84C, 0x4
.global lbl_803E5F30
lbl_803E5F30:
	.incbin "baserom.dol", 0x2EF850, 0x4
.global lbl_803E5F34
lbl_803E5F34:
	.incbin "baserom.dol", 0x2EF854, 0x4
.global lbl_803E5F38
lbl_803E5F38:
	.incbin "baserom.dol", 0x2EF858, 0x4
.global lbl_803E5F3C
lbl_803E5F3C:
	.incbin "baserom.dol", 0x2EF85C, 0x4
.global lbl_803E5F40
lbl_803E5F40:
	.incbin "baserom.dol", 0x2EF860, 0x4
.global lbl_803E5F44
lbl_803E5F44:
	.incbin "baserom.dol", 0x2EF864, 0x4
.global lbl_803E5F48
lbl_803E5F48:
	.incbin "baserom.dol", 0x2EF868, 0x4
.global lbl_803E5F4C
lbl_803E5F4C:
	.incbin "baserom.dol", 0x2EF86C, 0x4
.global lbl_803E5F50
lbl_803E5F50:
	.incbin "baserom.dol", 0x2EF870, 0x4
.global lbl_803E5F54
lbl_803E5F54:
	.incbin "baserom.dol", 0x2EF874, 0xC
.global __RTTI__16TAItankAnimation
__RTTI__16TAItankAnimation:
  .4byte 0x802dde0c
  .4byte 0x802dde30
  .4byte 0x802dde58
  .4byte 0
  .4byte 0x802dde68
  .4byte 0x802dde74
.global __RTTI__15TAItankStrategy
__RTTI__15TAItankStrategy:
  .4byte 0x802dde48
  .4byte 0x802dde80
  .4byte 0x802ddecc
  .4byte 0
.global __RTTI__14TAIAnoReaction
__RTTI__14TAIAnoReaction:
  .4byte 0x802ddebc
  .4byte 0x802dded8
.global __RTTI__12TAIAinitTank
__RTTI__12TAIAinitTank:
  .4byte 0x802ddf00
  .4byte 0x802ddf10
.global __RTTI__20TAIAoutsideTerritory
__RTTI__20TAIAoutsideTerritory:
  .4byte 0x802ddf38
  .4byte 0x802ddf50
  .4byte 0x802ddf8c
  .4byte 0x802ddf98
  .4byte 0x802ddfa4
  .4byte 0x802ddfb4
.global __RTTI__16TAIAflickingTank
__RTTI__16TAIAflickingTank:
  .4byte 0x802ddf78
  .4byte 0x802ddfc8
  .4byte 0x802de01c
  .4byte 0x802de030
.global __RTTI__14TAIAfireBreath
__RTTI__14TAIAfireBreath:
  .4byte 0x802de03c
  .4byte 0x802de04c
.global __RTTI__18TAIAfireBreathTank
__RTTI__18TAIAfireBreathTank:
  .4byte 0x802de008
  .4byte 0x802de060
.global __RTTI__Q23zen17CallBack1$$0R4Teki$$1
__RTTI__Q23zen17CallBack1$$0R4Teki$$1:
  .4byte 0x802de0ac
  .4byte 0
.global __RTTI__10FireEffect
__RTTI__10FireEffect:
  .4byte 0x802de0a0
  .4byte 0x802de0c4
.global __RTTI__12TAIAstepBack
__RTTI__12TAIAstepBack:
  .4byte 0x802de0fc
  .4byte 0x802de10c
.global __RTTI__16TAIAstepBackTank
__RTTI__16TAIAstepBackTank:
  .4byte 0x802de0e8
  .4byte 0x802de120
.global __RTTI__22TAIAjudgeOptionalRange
__RTTI__22TAIAjudgeOptionalRange:
  .4byte 0x802de17c
  .4byte 0x802de194
.global __RTTI__24TAIAoutsideOptionalRange
__RTTI__24TAIAoutsideOptionalRange:
  .4byte 0x802de1a0
  .4byte 0x802de1bc
.global __RTTI__28TAIAoutsideOptionalRangeTank
__RTTI__28TAIAoutsideOptionalRangeTank:
  .4byte 0x802de15c
  .4byte 0x802de1d0
.global __RTTI__20TAIAattackableTarget
__RTTI__20TAIAattackableTarget:
  .4byte 0x802de230
  .4byte 0x802de248
.global __RTTI__25TAIAattackableAngleTarget
__RTTI__25TAIAattackableAngleTarget:
  .4byte 0x802de214
  .4byte 0x802de254
.global __RTTI__16TAIAturnToTarget
__RTTI__16TAIAturnToTarget:
  .4byte 0x802de298
  .4byte 0x802de2ac
.global __RTTI__10TAIApatrol
__RTTI__10TAIApatrol:
  .4byte 0x802de2c0
  .4byte 0x802de2cc
.global __RTTI__14TAIApatrolTank
__RTTI__14TAIApatrolTank:
  .4byte 0x802de288
  .4byte 0x802de2e8
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e6030
  .4byte 0
  .4byte 0x802de360
  .4byte 0x802de36c
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e6048
  .4byte 0x802de378
  .4byte 0x802de38c
  .4byte 0x802de39c
.global __RTTI__17TAItankParameters
__RTTI__17TAItankParameters:
  .4byte 0x802de34c
  .4byte 0x802de3b8
  .4byte 0x802de430
  .4byte 0
.global __RTTI__32TAIeffectAttackEventCallBackTank
__RTTI__32TAIeffectAttackEventCallBackTank:
  .4byte 0x802de40c
  .4byte 0x802de450
.global lbl_803E6078
lbl_803E6078:
	.incbin "baserom.dol", 0x2EF998, 0x4
.global lbl_803E607C
lbl_803E607C:
	.incbin "baserom.dol", 0x2EF99C, 0x4
.global lbl_803E6080
lbl_803E6080:
	.incbin "baserom.dol", 0x2EF9A0, 0x4
.global lbl_803E6084
lbl_803E6084:
	.incbin "baserom.dol", 0x2EF9A4, 0x4
.global lbl_803E6088
lbl_803E6088:
	.incbin "baserom.dol", 0x2EF9A8, 0x4
.global lbl_803E608C
lbl_803E608C:
	.incbin "baserom.dol", 0x2EF9AC, 0x4
.global lbl_803E6090
lbl_803E6090:
	.incbin "baserom.dol", 0x2EF9B0, 0x4
.global lbl_803E6094
lbl_803E6094:
	.incbin "baserom.dol", 0x2EF9B4, 0x4
.global lbl_803E6098
lbl_803E6098:
	.incbin "baserom.dol", 0x2EF9B8, 0x4
.global lbl_803E609C
lbl_803E609C:
	.incbin "baserom.dol", 0x2EF9BC, 0xC
.global __RTTI__15TAImarAnimation
__RTTI__15TAImarAnimation:
  .4byte 0x802de71c
  .4byte 0x802de73c
  .4byte 0x802de764
  .4byte 0
  .4byte 0x802de774
  .4byte 0x802de780
.global __RTTI__14TAImarStrategy
__RTTI__14TAImarStrategy:
  .4byte 0x802de754
  .4byte 0x802de78c
  .4byte 0x802de7d4
  .4byte 0
.global __RTTI__11TAIAinitMar
__RTTI__11TAIAinitMar:
  .4byte 0x802de7c8
  .4byte 0x802de7e0
.global __RTTI__13TAIAwatchNavi
__RTTI__13TAIAwatchNavi:
  .4byte 0x802de808
  .4byte 0x802de818
.global __RTTI__14FlyingDistance
__RTTI__14FlyingDistance:
  .4byte 0x802de864
  .4byte 0
  .4byte 0x802de874
  .4byte 0x802de888
.global __RTTI__16TAIAflyingToGoal
__RTTI__16TAIAflyingToGoal:
  .4byte 0x802de894
  .4byte 0x802de8a8
.global __RTTI__29TAIAflyingDistanceInTerritory
__RTTI__29TAIAflyingDistanceInTerritory:
  .4byte 0x802de8bc
  .4byte 0x802de8dc
.global __RTTI__32TAIAflyingDistanceInTerritoryMar
__RTTI__32TAIAflyingDistanceInTerritoryMar:
  .4byte 0x802de840
  .4byte 0x802de900
.global __RTTI__14TAIAfireBreath_1
__RTTI__14TAIAfireBreath_1:
  .4byte 0x802de9b4
  .4byte 0x802de9c4
.global __RTTI__17TAIAfireBreathMar
__RTTI__17TAIAfireBreathMar:
  .4byte 0x802de9a0
  .4byte 0x802de9d8
.global __RTTI__Q23zen17CallBack1$$0R4Teki$$1_1
__RTTI__Q23zen17CallBack1$$0R4Teki$$1_1:
  .4byte 0x802dea28
  .4byte 0
.global __RTTI__12BreathEffect
__RTTI__12BreathEffect:
  .4byte 0x802dea18
  .4byte 0x802dea40
.global __RTTI__18TAIAflyingDistance
__RTTI__18TAIAflyingDistance:
  .4byte 0x802dea7c
  .4byte 0x802dea90
.global __RTTI__21TAIAflyingDistanceMar
__RTTI__21TAIAflyingDistanceMar:
  .4byte 0x802dea64
  .4byte 0x802deaa4
  .4byte 0x802deb10
  .4byte 0x802deb24
.global __RTTI__19TAIAtimerTakeOffMar
__RTTI__19TAIAtimerTakeOffMar:
  .4byte 0x802deafc
  .4byte 0x802deb30
.global __RTTI__11TAIAtakeOff
__RTTI__11TAIAtakeOff:
  .4byte 0x802deb94
  .4byte 0x802deba0
.global __RTTI__14TAIAtakeOffMar
__RTTI__14TAIAtakeOffMar:
  .4byte 0x802deb84
  .4byte 0x802debb4
.global __RTTI__16TAIAstickingPiki
__RTTI__16TAIAstickingPiki:
  .4byte 0x802dec3c
  .4byte 0x802dec50
.global __RTTI__19TAIAstickingPikiMar
__RTTI__19TAIAstickingPikiMar:
  .4byte 0x802dec28
  .4byte 0x802dec5c
  .4byte 0x802deca4
  .4byte 0x802decb4
.global __RTTI__17TAIAflickCheckMar
__RTTI__17TAIAflickCheckMar:
  .4byte 0x802dec90
  .4byte 0x802decc0
.global __RTTI__11TAIAlanding
__RTTI__11TAIAlanding:
  .4byte 0x802ded04
  .4byte 0x802ded10
.global __RTTI__14TAIAlandingMar
__RTTI__14TAIAlandingMar:
  .4byte 0x802decf4
  .4byte 0x802ded24
.global __RTTI__22TAIAstickingPikiMarFly
__RTTI__22TAIAstickingPikiMarFly:
  .4byte 0x802ded60
  .4byte 0x802ded78
  .4byte 0x802dedbc
  .4byte 0x802dedc8
  .4byte 0x802dedd4
  .4byte 0x802dede4
.global __RTTI__15TAIAflickingMar
__RTTI__15TAIAflickingMar:
  .4byte 0x802dedac
  .4byte 0x802dedf8
.global __RTTI__22TAIAflickCheckTimerMar
__RTTI__22TAIAflickCheckTimerMar:
  .4byte 0x802dee70
  .4byte 0x802dee88
  .4byte 0x802deec0
  .4byte 0
.global __RTTI__14TAIAflyingBase
__RTTI__14TAIAflyingBase:
  .4byte 0x802def04
  .4byte 0x802def14
.global __RTTI__17TAIAflyingBaseMar
__RTTI__17TAIAflyingBaseMar:
  .4byte 0x802deef0
  .4byte 0x802def20
  .4byte 0x802def64
  .4byte 0x802def70
.global __RTTI__12TAIAdyingMar
__RTTI__12TAIAdyingMar:
  .4byte 0x802def54
  .4byte 0x802def84
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e61d8
  .4byte 0
  .4byte 0x802defec
  .4byte 0x802deff8
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e61f0
  .4byte 0x802df004
  .4byte 0x802df018
  .4byte 0x802df028
.global __RTTI__16TAImarParameters
__RTTI__16TAImarParameters:
  .4byte 0x802defd8
  .4byte 0x802df044
  .4byte 0x802df0b8
  .4byte 0
.global __RTTI__31TAIeffectAttackEventCallBackMar
__RTTI__31TAIeffectAttackEventCallBackMar:
  .4byte 0x802df098
  .4byte 0x802df0d8
  .4byte 0x802df168
  .4byte 0
.global __RTTI__11TAIAinWater
__RTTI__11TAIAinWater:
  .4byte 0x802df174
  .4byte 0x802df180
.global __RTTI__17TAIAinWaterDamage
__RTTI__17TAIAinWaterDamage:
  .4byte 0x802df154
  .4byte 0x802df18c
.global __RTTI__10TAIAdamage
__RTTI__10TAIAdamage:
  .4byte 0x802df1d8
  .4byte 0x802df1e4
  .4byte 0x802df228
  .4byte 0x802df234
  .4byte 0x802df240
  .4byte 0x802df24c
.global __RTTI__16TAIAdyingKabekui
__RTTI__16TAIAdyingKabekui:
  .4byte 0x802df260
  .4byte 0x802df274
.global __RTTI__21TAIAdyingCrushKabekui
__RTTI__21TAIAdyingCrushKabekui:
  .4byte 0x802df210
  .4byte 0x802df290
  .4byte 0x54414941
  .4byte 0x64696500
.global __RTTI__7TAIAdie
__RTTI__7TAIAdie:
  .4byte 0x803e6260
  .4byte 0x802df308
.global __RTTI__13TAIAdeadCheck
__RTTI__13TAIAdeadCheck:
  .4byte 0x802df330
  .4byte 0x802df340
.global __RTTI__22TAIAhitCheckFlyingPiki
__RTTI__22TAIAhitCheckFlyingPiki:
  .4byte 0x802df368
  .4byte 0x802df380
.global lbl_803E6280
lbl_803E6280:
	.incbin "baserom.dol", 0x2EFBA0, 0x4
.global lbl_803E6284
lbl_803E6284:
	.incbin "baserom.dol", 0x2EFBA4, 0x4
.global lbl_803E6288
lbl_803E6288:
	.incbin "baserom.dol", 0x2EFBA8, 0x4
.global lbl_803E628C
lbl_803E628C:
	.incbin "baserom.dol", 0x2EFBAC, 0x4
.global lbl_803E6290
lbl_803E6290:
	.incbin "baserom.dol", 0x2EFBB0, 0x4
.global lbl_803E6294
lbl_803E6294:
	.incbin "baserom.dol", 0x2EFBB4, 0x4
.global lbl_803E6298
lbl_803E6298:
	.incbin "baserom.dol", 0x2EFBB8, 0x4
.global lbl_803E629C
lbl_803E629C:
	.incbin "baserom.dol", 0x2EFBBC, 0x4
.global lbl_803E62A0
lbl_803E62A0:
	.incbin "baserom.dol", 0x2EFBC0, 0x4
.global lbl_803E62A4
lbl_803E62A4:
	.incbin "baserom.dol", 0x2EFBC4, 0x4
.global lbl_803E62A8
lbl_803E62A8:
	.incbin "baserom.dol", 0x2EFBC8, 0x4
.global lbl_803E62AC
lbl_803E62AC:
	.incbin "baserom.dol", 0x2EFBCC, 0x4
.global lbl_803E62B0
lbl_803E62B0:
	.incbin "baserom.dol", 0x2EFBD0, 0x4
.global lbl_803E62B4
lbl_803E62B4:
	.incbin "baserom.dol", 0x2EFBD4, 0x4
.global lbl_803E62B8
lbl_803E62B8:
	.incbin "baserom.dol", 0x2EFBD8, 0x4
.global lbl_803E62BC
lbl_803E62BC:
	.incbin "baserom.dol", 0x2EFBDC, 0x4
.global lbl_803E62C0
lbl_803E62C0:
	.incbin "baserom.dol", 0x2EFBE0, 0x4
.global lbl_803E62C4
lbl_803E62C4:
	.incbin "baserom.dol", 0x2EFBE4, 0x4
.global lbl_803E62C8
lbl_803E62C8:
	.incbin "baserom.dol", 0x2EFBE8, 0x4
.global lbl_803E62CC
lbl_803E62CC:
	.incbin "baserom.dol", 0x2EFBEC, 0x4
.global lbl_803E62D0
lbl_803E62D0:
	.incbin "baserom.dol", 0x2EFBF0, 0x4
.global lbl_803E62D4
lbl_803E62D4:
	.incbin "baserom.dol", 0x2EFBF4, 0x4
.global lbl_803E62D8
lbl_803E62D8:
	.incbin "baserom.dol", 0x2EFBF8, 0x4
.global lbl_803E62DC
lbl_803E62DC:
	.incbin "baserom.dol", 0x2EFBFC, 0x4
.global lbl_803E62E0
lbl_803E62E0:
	.incbin "baserom.dol", 0x2EFC00, 0x4
.global lbl_803E62E4
lbl_803E62E4:
	.incbin "baserom.dol", 0x2EFC04, 0x4
.global lbl_803E62E8
lbl_803E62E8:
	.incbin "baserom.dol", 0x2EFC08, 0x4
.global lbl_803E62EC
lbl_803E62EC:
	.incbin "baserom.dol", 0x2EFC0C, 0x4
.global lbl_803E62F0
lbl_803E62F0:
	.incbin "baserom.dol", 0x2EFC10, 0x4
.global lbl_803E62F4
lbl_803E62F4:
	.incbin "baserom.dol", 0x2EFC14, 0x4
.global lbl_803E62F8
lbl_803E62F8:
	.incbin "baserom.dol", 0x2EFC18, 0x4
.global lbl_803E62FC
lbl_803E62FC:
	.incbin "baserom.dol", 0x2EFC1C, 0x4
.global lbl_803E6300
lbl_803E6300:
	.incbin "baserom.dol", 0x2EFC20, 0x4
.global lbl_803E6304
lbl_803E6304:
	.incbin "baserom.dol", 0x2EFC24, 0x4
.global lbl_803E6308
lbl_803E6308:
	.incbin "baserom.dol", 0x2EFC28, 0x4
.global lbl_803E630C
lbl_803E630C:
	.incbin "baserom.dol", 0x2EFC2C, 0x4
.global lbl_803E6310
lbl_803E6310:
	.incbin "baserom.dol", 0x2EFC30, 0x14
.global __RTTI__11TAIAtakeOff_1
__RTTI__11TAIAtakeOff_1:
  .4byte 0x802df3c4
  .4byte 0x802df3fc
.global __RTTI__11TAIAlanding_1
__RTTI__11TAIAlanding_1:
  .4byte 0x802df430
  .4byte 0x802df43c
.global __RTTI__11TAIAdescent
__RTTI__11TAIAdescent:
  .4byte 0x802df470
  .4byte 0x802df47c
.global __RTTI__14FlyingDistance_1
__RTTI__14FlyingDistance_1:
  .4byte 0x802df4c8
  .4byte 0
.global __RTTI__18TAIAflyingDistance_1
__RTTI__18TAIAflyingDistance_1:
  .4byte 0x802df4b4
  .4byte 0x802df4d8
.global __RTTI__16TAIAflyingToGoal_1
__RTTI__16TAIAflyingToGoal_1:
  .4byte 0x802df538
  .4byte 0x802df54c
.global __RTTI__29TAIAflyingDistanceInTerritory_1
__RTTI__29TAIAflyingDistanceInTerritory_1:
  .4byte 0x802df518
  .4byte 0x802df560
.global __RTTI__21TAIAflyingInTerritory
__RTTI__21TAIAflyingInTerritory:
  .4byte 0x802df5d8
  .4byte 0x802df5f0
.global __RTTI__14TAIAflyingBase_1
__RTTI__14TAIAflyingBase_1:
  .4byte 0x802df618
  .4byte 0x802df628
.global __RTTI__28TAIAgoingHomePriorityFaceDir
__RTTI__28TAIAgoingHomePriorityFaceDir:
  .4byte 0x802df654
  .4byte 0x802df674
.global __RTTI__13TAIAgoingHome
__RTTI__13TAIAgoingHome:
  .4byte 0x802df6a4
  .4byte 0x802df6b4
.global __RTTI__16TAIAturnOccasion
__RTTI__16TAIAturnOccasion:
  .4byte 0x802df6f4
  .4byte 0x802df708
.global __RTTI__12TAIAturnHome
__RTTI__12TAIAturnHome:
  .4byte 0x802df6e4
  .4byte 0x802df71c
.global __RTTI__12TAIAstepBack_1
__RTTI__12TAIAstepBack_1:
  .4byte 0x802df754
  .4byte 0x802df764
.global __RTTI__16TAIAturnToTarget_1
__RTTI__16TAIAturnToTarget_1:
  .4byte 0x802df7a4
  .4byte 0x802df7b8
.global __RTTI__10TAIApatrol_1
__RTTI__10TAIApatrol_1:
  .4byte 0x802df798
  .4byte 0x802df7cc
.global __RTTI__8TAIAwait
__RTTI__8TAIAwait:
  .4byte 0x802df80c
  .4byte 0x802df818
.global __RTTI__21TAIAturnFocusCreature
__RTTI__21TAIAturnFocusCreature:
  .4byte 0x802df84c
  .4byte 0x802df864
.global __RTTI__14TAIArandomWalk
__RTTI__14TAIArandomWalk:
  .4byte 0x802df8bc
  .4byte 0x802df8cc
.global __RTTI__8TAIAstop
__RTTI__8TAIAstop:
  .4byte 0x802df8fc
  .4byte 0x802df908
.global __RTTI__14TAIAlookAround
__RTTI__14TAIAlookAround:
  .4byte 0x802df950
  .4byte 0x802df960
.global __RTTI__33TAIAapproachTargetPriorityFaceDir
__RTTI__33TAIAapproachTargetPriorityFaceDir:
  .4byte 0x802df990
  .4byte 0x802df9b4
.global __RTTI__27TAIAgoTargetPriorityFaceDir
__RTTI__27TAIAgoTargetPriorityFaceDir:
  .4byte 0x802df9e8
  .4byte 0x802dfa04
.global __RTTI__12TAIAgoTarget
__RTTI__12TAIAgoTarget:
  .4byte 0x802dfa3c
  .4byte 0x802dfa4c
.global __RTTI__24TAIAsetTargetPointCircle
__RTTI__24TAIAsetTargetPointCircle:
  .4byte 0x802dfa80
  .4byte 0x802dfa9c
.global __RTTI__30TAIAsetTargetPointCircleRandom
__RTTI__30TAIAsetTargetPointCircleRandom:
  .4byte 0x802dfac4
  .4byte 0x802dfae4
.global __RTTI__14TAIAgoGoalPath
__RTTI__14TAIAgoGoalPath:
  .4byte 0x802dfb0c
  .4byte 0x802dfb1c
.global __RTTI__28TAIAsetTargetPointWorkObject
__RTTI__28TAIAsetTargetPointWorkObject:
  .4byte 0x802dfb5c
  .4byte 0x802dfb7c
  .4byte 0x802dfbb8
  .4byte 0x802dfbc4
.global __RTTI__18TAIAsetMotionSpeed
__RTTI__18TAIAsetMotionSpeed:
  .4byte 0x802dfbd0
  .4byte 0x802dfbe4
.global __RTTI__17TAIAappearKabekui
__RTTI__17TAIAappearKabekui:
  .4byte 0x802dfba4
  .4byte 0x802dfbf8
  .4byte 0
  .4byte 0x802dfc5c
  .4byte 0
  .4byte 0x802dfc68
  .4byte 0x802dfc7c
.global __RTTI__14TAIAmotionLoop
__RTTI__14TAIAmotionLoop:
  .4byte 0x802dfc4c
  .4byte 0x802dfc88
  .4byte 0x802dfc40
  .4byte 0x802dfcd8
  .4byte 0x802dfd50
  .4byte 0
.global __RTTI__18TAIAcheckTurnAngle
__RTTI__18TAIAcheckTurnAngle:
  .4byte 0x802dfd3c
  .4byte 0x802dfd5c
.global __RTTI__18TAIAdistanceTarget
__RTTI__18TAIAdistanceTarget:
  .4byte 0x802dfd84
  .4byte 0x802dfd98
  .4byte 0x802dfdd0
  .4byte 0
.global __RTTI__16TAIAstickingPiki_1
__RTTI__16TAIAstickingPiki_1:
  .4byte 0x802dfe00
  .4byte 0x802dfe14
.global __RTTI__19TAIAunvisibleTarget
__RTTI__19TAIAunvisibleTarget:
  .4byte 0x802dfe40
  .4byte 0x802dfe54
.global __RTTI__20TAIAattackableTarget_1
__RTTI__20TAIAattackableTarget_1:
  .4byte 0x802dfe7c
  .4byte 0x802dfe94
.global __RTTI__15TAIAvisiblePiki
__RTTI__15TAIAvisiblePiki:
  .4byte 0x802dfec0
  .4byte 0x802dfed0
.global __RTTI__15TAIAvisibleNavi
__RTTI__15TAIAvisibleNavi:
  .4byte 0x802dfef8
  .4byte 0x802dff08
.global __RTTI__29TAIAoutsideTerritoryRangeNavi
__RTTI__29TAIAoutsideTerritoryRangeNavi:
  .4byte 0x802dff30
  .4byte 0x802dff50
.global __RTTI__28TAIAinsideTerritoryRangeNavi
__RTTI__28TAIAinsideTerritoryRangeNavi:
  .4byte 0x802dff78
  .4byte 0x802dff98
.global __RTTI__24TAIAcheckInsideRangePiki
__RTTI__24TAIAcheckInsideRangePiki:
  .4byte 0x802dffc0
  .4byte 0x802dffdc
.global __RTTI__22TAIAjudgeOptionalRange_1
__RTTI__22TAIAjudgeOptionalRange_1:
  .4byte 0x802e0028
  .4byte 0x802e0040
.global __RTTI__24TAIAoutsideOptionalRange_1
__RTTI__24TAIAoutsideOptionalRange_1:
  .4byte 0x802e000c
  .4byte 0x802e004c
.global __RTTI__23TAIAinsideOptionalRange
__RTTI__23TAIAinsideOptionalRange:
  .4byte 0x802e0088
  .4byte 0x802e00a0
.global __RTTI__13TAIAjudgeLife
__RTTI__13TAIAjudgeLife:
  .4byte 0x802e0114
  .4byte 0x802e0124
.global __RTTI__12TAIAmoreLife
__RTTI__12TAIAmoreLife:
  .4byte 0x802e0104
  .4byte 0x802e0130
.global __RTTI__12TAIAlessLife
__RTTI__12TAIAlessLife:
  .4byte 0x802e0164
  .4byte 0x802e0174
.global __RTTI__20TAIAsearchWorkObject
__RTTI__20TAIAsearchWorkObject:
  .4byte 0x802e01a8
  .4byte 0x802e01c0
.global lbl_803E64D8
lbl_803E64D8:
	.incbin "baserom.dol", 0x2EFDF8, 0x4
.global lbl_803E64DC
lbl_803E64DC:
	.incbin "baserom.dol", 0x2EFDFC, 0x4
.global lbl_803E64E0
lbl_803E64E0:
	.incbin "baserom.dol", 0x2EFE00, 0x4
.global lbl_803E64E4
lbl_803E64E4:
	.incbin "baserom.dol", 0x2EFE04, 0x4
.global lbl_803E64E8
lbl_803E64E8:
	.incbin "baserom.dol", 0x2EFE08, 0x4
.global lbl_803E64EC
lbl_803E64EC:
	.incbin "baserom.dol", 0x2EFE0C, 0x4
.global lbl_803E64F0
lbl_803E64F0:
	.incbin "baserom.dol", 0x2EFE10, 0x4
.global lbl_803E64F4
lbl_803E64F4:
	.incbin "baserom.dol", 0x2EFE14, 0x4
.global lbl_803E64F8
lbl_803E64F8:
	.incbin "baserom.dol", 0x2EFE18, 0x4
.global lbl_803E64FC
lbl_803E64FC:
	.incbin "baserom.dol", 0x2EFE1C, 0x4
.global lbl_803E6500
lbl_803E6500:
	.incbin "baserom.dol", 0x2EFE20, 0x4
.global lbl_803E6504
lbl_803E6504:
	.incbin "baserom.dol", 0x2EFE24, 0x14
.global __RTTI__11TAIAeatPiki
__RTTI__11TAIAeatPiki:
  .4byte 0x802e0204
  .4byte 0x802e023c
.global __RTTI__18TAIAbiteForKabekui
__RTTI__18TAIAbiteForKabekui:
  .4byte 0x802e0270
  .4byte 0x802e0284
.global __RTTI__25TAIAflickingReserveMotion
__RTTI__25TAIAflickingReserveMotion:
  .4byte 0x802e02bc
  .4byte 0x802e02d8
  .4byte 0x802e0320
  .4byte 0x802e032c
  .4byte 0x802e0310
  .4byte 0x802e0338
  .4byte 0x802e0380
  .4byte 0
  .4byte 0x802e03b0
  .4byte 0x802e03c0
.global __RTTI__14TAIAfireBreath_2
__RTTI__14TAIAfireBreath_2:
  .4byte 0x802e03ec
  .4byte 0x802e03fc
.global __RTTI__14TAIAtargetPiki
__RTTI__14TAIAtargetPiki:
  .4byte 0x802e0434
  .4byte 0x802e0444
.global __RTTI__14TAIAtargetNavi
__RTTI__14TAIAtargetNavi:
  .4byte 0x802e046c
  .4byte 0x802e047c
.global __RTTI__14TAIAmotionLoop_1
__RTTI__14TAIAmotionLoop_1:
  .4byte 0x802e04c0
  .4byte 0x802e04d0
.global __RTTI__27TAIAflickingAfterMotionLoop
__RTTI__27TAIAflickingAfterMotionLoop:
  .4byte 0x802e04a4
  .4byte 0x802e04e4
.global __RTTI__20TAIAattackWorkObject
__RTTI__20TAIAattackWorkObject:
  .4byte 0x802e055c
  .4byte 0x802e0574
.global __RTTI__14P2DGrafContext
__RTTI__14P2DGrafContext:
  .4byte 0x802e05c4
  .4byte 0
.global __RTTI__14P2DGrafContext_1
__RTTI__14P2DGrafContext_1:
  .4byte 0x802e0608
  .4byte 0
.global __RTTI__13P2DOrthoGraph
__RTTI__13P2DOrthoGraph:
  .4byte 0x802e05f8
  .4byte 0x802e0618
.global lbl_803E6598
lbl_803E6598:
	.incbin "baserom.dol", 0x2EFEB8, 0x4
.global lbl_803E659C
lbl_803E659C:
	.incbin "baserom.dol", 0x2EFEBC, 0x4
.global lbl_803E65A0
lbl_803E65A0:
	.incbin "baserom.dol", 0x2EFEC0, 0x4
.global lbl_803E65A4
lbl_803E65A4:
	.incbin "baserom.dol", 0x2EFEC4, 0x4
.global lbl_803E65A8
lbl_803E65A8:
	.incbin "baserom.dol", 0x2EFEC8, 0x4
.global lbl_803E65AC
lbl_803E65AC:
	.incbin "baserom.dol", 0x2EFECC, 0x4
.global lbl_803E65B0
lbl_803E65B0:
	.incbin "baserom.dol", 0x2EFED0, 0x4
.global lbl_803E65B4
lbl_803E65B4:
	.incbin "baserom.dol", 0x2EFED4, 0x4
.global lbl_803E65B8
lbl_803E65B8:
	.incbin "baserom.dol", 0x2EFED8, 0x4
.global lbl_803E65BC
lbl_803E65BC:
	.incbin "baserom.dol", 0x2EFEDC, 0x4
.global lbl_803E65C0
lbl_803E65C0:
	.incbin "baserom.dol", 0x2EFEE0, 0x4
.global lbl_803E65C4
lbl_803E65C4:
	.incbin "baserom.dol", 0x2EFEE4, 0x4
.global lbl_803E65C8
lbl_803E65C8:
	.incbin "baserom.dol", 0x2EFEE8, 0x4
.global lbl_803E65CC
lbl_803E65CC:
	.incbin "baserom.dol", 0x2EFEEC, 0x4
.global lbl_803E65D0
lbl_803E65D0:
	.incbin "baserom.dol", 0x2EFEF0, 0x4
.global lbl_803E65D4
lbl_803E65D4:
	.incbin "baserom.dol", 0x2EFEF4, 0x4
.global lbl_803E65D8
lbl_803E65D8:
	.incbin "baserom.dol", 0x2EFEF8, 0x4
.global lbl_803E65DC
lbl_803E65DC:
	.incbin "baserom.dol", 0x2EFEFC, 0x4
.global __RTTI__14P2DGrafContext_2
__RTTI__14P2DGrafContext_2:
  .4byte 0x802e067c
  .4byte 0
.global __RTTI__13P2DPerspGraph
__RTTI__13P2DPerspGraph:
  .4byte 0x802e066c
  .4byte 0x802e068c
  .4byte 0x50324450
  .4byte 0x616e6500
.global lbl_803E65F8
lbl_803E65F8:
	.incbin "baserom.dol", 0x2EFF18, 0x4
.global lbl_803E65FC
lbl_803E65FC:
	.incbin "baserom.dol", 0x2EFF1C, 0x4
.global lbl_803E6600
lbl_803E6600:
	.incbin "baserom.dol", 0x2EFF20, 0x4
.global lbl_803E6604
lbl_803E6604:
	.incbin "baserom.dol", 0x2EFF24, 0x4
.global lbl_803E6608
lbl_803E6608:
	.incbin "baserom.dol", 0x2EFF28, 0x4
.global lbl_803E660C
lbl_803E660C:
	.incbin "baserom.dol", 0x2EFF2C, 0x4
.global lbl_803E6610
lbl_803E6610:
	.incbin "baserom.dol", 0x2EFF30, 0x4
.global lbl_803E6614
lbl_803E6614:
	.incbin "baserom.dol", 0x2EFF34, 0x4
.global lbl_803E6618
lbl_803E6618:
	.incbin "baserom.dol", 0x2EFF38, 0x20
.global __RTTI__10P2DPicture
__RTTI__10P2DPicture:
  .4byte 0x802e0710
  .4byte 0x802e071c
  .4byte 0x50324450
  .4byte 0x616e6500
  .4byte 0x803e6640
  .4byte 0
.global __RTTI__9P2DScreen
__RTTI__9P2DScreen:
  .4byte 0x802e0778
  .4byte 0x802e07d4
  .4byte 0x50324450
  .4byte 0x616e6500
  .4byte 0x803e6658
  .4byte 0
.global __RTTI__9P2DWindow
__RTTI__9P2DWindow:
  .4byte 0x802e0830
  .4byte 0x802e083c
  .4byte 0x50324450
  .4byte 0x616e6500
  .4byte 0x803e6670
  .4byte 0
.global __RTTI__10P2DTextBox
__RTTI__10P2DTextBox:
  .4byte 0x802e0898
  .4byte 0x802e08a4
.global lbl_803E6688
lbl_803E6688:
	.incbin "baserom.dol", 0x2EFFA8, 0x4
.global lbl_803E668C
lbl_803E668C:
	.incbin "baserom.dol", 0x2EFFAC, 0xC
.global __RTTI__10FntobjInfo
__RTTI__10FntobjInfo:
  .4byte 0x802e0968
  .4byte 0x802e0980
.global frameMax__Q29$$2unnamed$$216PikiIconCallBack
frameMax__Q29$$2unnamed$$216PikiIconCallBack:
	.incbin "baserom.dol", 0x2EFFC0, 0x4
.global lbl_803E66A4
lbl_803E66A4:
	.incbin "baserom.dol", 0x2EFFC4, 0x24
.global __RTTI__Q29$$2unnamed$$212DateCallBack
__RTTI__Q29$$2unnamed$$212DateCallBack:
  .4byte 0x802e0c48
  .4byte 0x802e0cc4
.global __RTTI__Q29$$2unnamed$$217LifePinchCallBack
__RTTI__Q29$$2unnamed$$217LifePinchCallBack:
  .4byte 0x802e0cf8
  .4byte 0x802e0d18
.global __RTTI__Q29$$2unnamed$$216LifeIconCallBack
__RTTI__Q29$$2unnamed$$216LifeIconCallBack:
  .4byte 0x802e0d44
  .4byte 0x802e0d60
.global __RTTI__Q29$$2unnamed$$215NaviTexCallBack
__RTTI__Q29$$2unnamed$$215NaviTexCallBack:
  .4byte 0x802e0d8c
  .4byte 0x802e0da8
.global __RTTI__Q29$$2unnamed$$216NaviIconCallBack
__RTTI__Q29$$2unnamed$$216NaviIconCallBack:
  .4byte 0x802e0dd4
  .4byte 0x802e0df0
.global __RTTI__Q29$$2unnamed$$27SunMove
__RTTI__Q29$$2unnamed$$27SunMove:
  .4byte 0x802e0e38
  .4byte 0
.global __RTTI__Q29$$2unnamed$$216MoonIconCallBack
__RTTI__Q29$$2unnamed$$216MoonIconCallBack:
  .4byte 0x802e0e1c
  .4byte 0x802e0e4c
.global __RTTI__Q29$$2unnamed$$27SunAnim
__RTTI__Q29$$2unnamed$$27SunAnim:
  .4byte 0x802e0e9c
  .4byte 0
.global __RTTI__Q29$$2unnamed$$216SunIcon2CallBack
__RTTI__Q29$$2unnamed$$216SunIcon2CallBack:
  .4byte 0x802e0e80
  .4byte 0x802e0eb0
.global __RTTI__Q29$$2unnamed$$216SunIcon1CallBack
__RTTI__Q29$$2unnamed$$216SunIcon1CallBack:
  .4byte 0x802e0eec
  .4byte 0x802e0f08
.global __RTTI__Q29$$2unnamed$$218SunCapsuleCallBack
__RTTI__Q29$$2unnamed$$218SunCapsuleCallBack:
  .4byte 0x802e0f3c
  .4byte 0x802e0f5c
.global __RTTI__Q29$$2unnamed$$215SunBaseCallBack
__RTTI__Q29$$2unnamed$$215SunBaseCallBack:
  .4byte 0x802e0f88
  .4byte 0x802e0fa4
.global __RTTI__Q23zen12FigureTex$$0s$$1
__RTTI__Q23zen12FigureTex$$0s$$1:
  .4byte 0x802e1004
  .4byte 0x802e101c
.global __RTTI__Q23zen20NumberPicCallBack$$0s$$1
__RTTI__Q23zen20NumberPicCallBack$$0s$$1:
  .4byte 0x802e0fe4
  .4byte 0x802e1028
.global __RTTI__Q29$$2unnamed$$223MapPikminWindowCallBack
__RTTI__Q29$$2unnamed$$223MapPikminWindowCallBack:
  .4byte 0x802e1064
  .4byte 0x802e1088
.global __RTTI__Q29$$2unnamed$$216PikiIconCallBack
__RTTI__Q29$$2unnamed$$216PikiIconCallBack:
  .4byte 0x802e10b4
  .4byte 0x802e10d0
.global TRI_NUM__Q23zen14DrawLifeCircle
TRI_NUM__Q23zen14DrawLifeCircle:
	.incbin "baserom.dol", 0x2F0068, 0x8
.global lbl_803E6750
lbl_803E6750:
	.incbin "baserom.dol", 0x2F0070, 0x4
.global lbl_803E6754
lbl_803E6754:
	.incbin "baserom.dol", 0x2F0074, 0x4
.global lbl_803E6758
lbl_803E6758:
	.incbin "baserom.dol", 0x2F0078, 0x4
.global lbl_803E675C
lbl_803E675C:
	.incbin "baserom.dol", 0x2F007C, 0x4
.global lbl_803E6760
lbl_803E6760:
	.incbin "baserom.dol", 0x2F0080, 0x4
.global lbl_803E6764
lbl_803E6764:
	.incbin "baserom.dol", 0x2F0084, 0x4
.global lbl_803E6768
lbl_803E6768:
	.incbin "baserom.dol", 0x2F0088, 0x4
.global weightPosLength__Q23zen13WindowPaneMgr
weightPosLength__Q23zen13WindowPaneMgr:
	.incbin "baserom.dol", 0x2F008C, 0x4
.global weightPosGravity__Q23zen13WindowPaneMgr
weightPosGravity__Q23zen13WindowPaneMgr:
	.incbin "baserom.dol", 0x2F0090, 0x4
.global lbl_803E6774
lbl_803E6774:
	.incbin "baserom.dol", 0x2F0094, 0x8
.global lbl_803E677C
lbl_803E677C:
	.incbin "baserom.dol", 0x2F009C, 0x8
.global lbl_803E6784
lbl_803E6784:
	.incbin "baserom.dol", 0x2F00A4, 0x8
.global lbl_803E678C
lbl_803E678C:
	.incbin "baserom.dol", 0x2F00AC, 0x8
.global lbl_803E6794
lbl_803E6794:
	.incbin "baserom.dol", 0x2F00B4, 0x8
.global lbl_803E679C
lbl_803E679C:
	.incbin "baserom.dol", 0x2F00BC, 0x20
.global __RTTI__Q23zen13StickCallBack
__RTTI__Q23zen13StickCallBack:
  .4byte 0x802e1264
  .4byte 0x802e12cc
.global __RTTI__Q23zen18ArrowBasicCallBack
__RTTI__Q23zen18ArrowBasicCallBack:
  .4byte 0x802e1310
  .4byte 0
.global __RTTI__Q23zen15ArrowLRCallBack
__RTTI__Q23zen15ArrowLRCallBack:
  .4byte 0x802e12f8
  .4byte 0x802e1328
.global __RTTI__Q23zen19ArrowCenterCallBack
__RTTI__Q23zen19ArrowCenterCallBack:
  .4byte 0x802e135c
  .4byte 0x802e1378
  .4byte 0x802e13c8
  .4byte 0
.global __RTTI__Q23zen12FigureTex$$0i$$1_1
__RTTI__Q23zen12FigureTex$$0i$$1_1:
  .4byte 0x802e13d8
  .4byte 0x802e13ec
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e67ec
  .4byte 0
  .4byte 0
.global lbl_803E6800
lbl_803E6800:
	.incbin "baserom.dol", 0x2F0120, 0x4
.global lbl_803E6804
lbl_803E6804:
	.incbin "baserom.dol", 0x2F0124, 0x4
.global lbl_803E6808
lbl_803E6808:
	.incbin "baserom.dol", 0x2F0128, 0x4
.global lbl_803E680C
lbl_803E680C:
	.incbin "baserom.dol", 0x2F012C, 0x4
.global lbl_803E6810
lbl_803E6810:
	.incbin "baserom.dol", 0x2F0130, 0x1C
.global __RTTI__Q23zen11BalloonPane
__RTTI__Q23zen11BalloonPane:
  .4byte 0x802e14c0
  .4byte 0x802e1528
.global __RTTI__Q23zen10DrawScreen
__RTTI__Q23zen10DrawScreen:
  .4byte 0x802e1570
  .4byte 0
  .4byte 0
.global lbl_803E6840
lbl_803E6840:
	.incbin "baserom.dol", 0x2F0160, 0x4
.global lbl_803E6844
lbl_803E6844:
	.incbin "baserom.dol", 0x2F0164, 0x4
.global lbl_803E6848
lbl_803E6848:
	.incbin "baserom.dol", 0x2F0168, 0x8
.global __RTTI__Q23zen10DrawScreen_1
__RTTI__Q23zen10DrawScreen_1:
  .4byte 0x802e15f0
  .4byte 0
.global __RTTI__Q23zen11DrawAccount
__RTTI__Q23zen11DrawAccount:
  .4byte 0x802e15dc
  .4byte 0x802e1600
  .4byte 0x802e163c
  .4byte 0
.global __RTTI__Q23zen12FigureTex$$0s$$1_1
__RTTI__Q23zen12FigureTex$$0s$$1_1:
  .4byte 0x802e164c
  .4byte 0x802e1664
  .4byte 0x802e1670
  .4byte 0
  .4byte 0x802e1684
  .4byte 0
  .4byte 0x802e16a0
  .4byte 0x802e16b0
.global lbl_803E6888
lbl_803E6888:
	.incbin "baserom.dol", 0x2F01A8, 0x4
.global lbl_803E688C
lbl_803E688C:
	.incbin "baserom.dol", 0x2F01AC, 0x4
.global lbl_803E6890
lbl_803E6890:
	.incbin "baserom.dol", 0x2F01B0, 0x8
.global lbl_803E6898
lbl_803E6898:
	.incbin "baserom.dol", 0x2F01B8, 0x8
.global lbl_803E68A0
lbl_803E68A0:
	.incbin "baserom.dol", 0x2F01C0, 0x8
.global lbl_803E68A8
lbl_803E68A8:
	.incbin "baserom.dol", 0x2F01C8, 0x8
.global lbl_803E68B0
lbl_803E68B0:
	.incbin "baserom.dol", 0x2F01D0, 0x8
.global lbl_803E68B8
lbl_803E68B8:
	.incbin "baserom.dol", 0x2F01D8, 0x8
.global __RTTI__Q23zen10DrawScreen_2
__RTTI__Q23zen10DrawScreen_2:
  .4byte 0x802e174c
  .4byte 0
.global __RTTI__Q23zen8DrawMenu
__RTTI__Q23zen8DrawMenu:
  .4byte 0x802e173c
  .4byte 0x802e175c
.global lbl_803E68D0
lbl_803E68D0:
	.incbin "baserom.dol", 0x2F01F0, 0x4
.global lbl_803E68D4
lbl_803E68D4:
	.incbin "baserom.dol", 0x2F01F4, 0x4
.global lbl_803E68D8
lbl_803E68D8:
	.incbin "baserom.dol", 0x2F01F8, 0x4
.global lbl_803E68DC
lbl_803E68DC:
	.incbin "baserom.dol", 0x2F01FC, 0x4
.global lbl_803E68E0
lbl_803E68E0:
	.incbin "baserom.dol", 0x2F0200, 0x4
.global lbl_803E68E4
lbl_803E68E4:
	.incbin "baserom.dol", 0x2F0204, 0x4
.global lbl_803E68E8
lbl_803E68E8:
	.incbin "baserom.dol", 0x2F0208, 0x4
.global lbl_803E68EC
lbl_803E68EC:
	.incbin "baserom.dol", 0x2F020C, 0x4
.global lbl_803E68F0
lbl_803E68F0:
	.incbin "baserom.dol", 0x2F0210, 0x4
.global lbl_803E68F4
lbl_803E68F4:
	.incbin "baserom.dol", 0x2F0214, 0x4
.global lbl_803E68F8
lbl_803E68F8:
	.incbin "baserom.dol", 0x2F0218, 0x4
.global lbl_803E68FC
lbl_803E68FC:
	.incbin "baserom.dol", 0x2F021C, 0x4
.global lbl_803E6900
lbl_803E6900:
	.incbin "baserom.dol", 0x2F0220, 0x4
.global lbl_803E6904
lbl_803E6904:
	.incbin "baserom.dol", 0x2F0224, 0x4
.global lbl_803E6908
lbl_803E6908:
	.incbin "baserom.dol", 0x2F0228, 0x4
.global lbl_803E690C
lbl_803E690C:
	.incbin "baserom.dol", 0x2F022C, 0xC
.global __RTTI__16ConeTypeCallBack
__RTTI__16ConeTypeCallBack:
  .4byte 0x802e179c
  .4byte 0x802e17dc
.global __RTTI__20CylinderTypeCallBack
__RTTI__20CylinderTypeCallBack:
  .4byte 0x802e17f4
  .4byte 0x802e180c
.global __RTTI__17EventTypeCallBack
__RTTI__17EventTypeCallBack:
  .4byte 0x802e1824
  .4byte 0x802e1838
.global lbl_803E6930
lbl_803E6930:
	.incbin "baserom.dol", 0x2F0250, 0x4
.global lbl_803E6934
lbl_803E6934:
	.incbin "baserom.dol", 0x2F0254, 0x4
.global lbl_803E6938
lbl_803E6938:
	.incbin "baserom.dol", 0x2F0258, 0x4
.global lbl_803E693C
lbl_803E693C:
	.incbin "baserom.dol", 0x2F025C, 0x4
.global lbl_803E6940
lbl_803E6940:
	.incbin "baserom.dol", 0x2F0260, 0x4
.global lbl_803E6944
lbl_803E6944:
	.incbin "baserom.dol", 0x2F0264, 0x4
.global lbl_803E6948
lbl_803E6948:
	.incbin "baserom.dol", 0x2F0268, 0x4
.global lbl_803E694C
lbl_803E694C:
	.incbin "baserom.dol", 0x2F026C, 0x4
.global lbl_803E6950
lbl_803E6950:
	.incbin "baserom.dol", 0x2F0270, 0xC
.global __RTTI__18TAIbeatleAnimation
__RTTI__18TAIbeatleAnimation:
  .4byte 0x802e18c4
  .4byte 0x802e18e8
  .4byte 0x802e1914
  .4byte 0
  .4byte 0x802e1924
  .4byte 0x802e1930
.global __RTTI__17TAIbeatleStrategy
__RTTI__17TAIbeatleStrategy:
  .4byte 0x802e1900
  .4byte 0x802e193c
  .4byte 0x802e1998
  .4byte 0
.global __RTTI__24TAIAcheckInsideRangePiki_1
__RTTI__24TAIAcheckInsideRangePiki_1:
  .4byte 0x802e19a4
  .4byte 0x802e19c0
.global __RTTI__30TAIAcheckInsideRangePikiBeatle
__RTTI__30TAIAcheckInsideRangePikiBeatle:
  .4byte 0x802e1978
  .4byte 0x802e19cc
.global __RTTI__16TAIAdisableStick
__RTTI__16TAIAdisableStick:
  .4byte 0x802e1a04
  .4byte 0x802e1a18
  .4byte 0x802e1a8c
  .4byte 0x802e1a98
  .4byte 0x802e1aa4
  .4byte 0x802e1ab4
.global __RTTI__18TAIAflickingBeatle
__RTTI__18TAIAflickingBeatle:
  .4byte 0x802e1a78
  .4byte 0x802e1ac8
.global __RTTI__17TAIAinvincibleOff
__RTTI__17TAIAinvincibleOff:
  .4byte 0x802e1b40
  .4byte 0x802e1b54
  .4byte 0x802e1ba0
  .4byte 0x802e1bb4
.global __RTTI__14TAIAmotionLoop_2
__RTTI__14TAIAmotionLoop_2:
  .4byte 0x802e1bc0
  .4byte 0x802e1bd0
.global __RTTI__27TAIAflickingAfterMotionLoop_1
__RTTI__27TAIAflickingAfterMotionLoop_1:
  .4byte 0x802e1be4
  .4byte 0x802e1c00
.global __RTTI__33TAIAflickingAfterMotionLoopBeatle
__RTTI__33TAIAflickingAfterMotionLoopBeatle:
  .4byte 0x802e1b7c
  .4byte 0x802e1c1c
.global __RTTI__14TAIArockAttack
__RTTI__14TAIArockAttack:
  .4byte 0x802e1ca4
  .4byte 0x802e1cb4
.global __RTTI__22TAIAjudgeOptionalRange_2
__RTTI__22TAIAjudgeOptionalRange_2:
  .4byte 0x802e1d04
  .4byte 0x802e1d1c
.global __RTTI__23TAIAinsideOptionalRange_1
__RTTI__23TAIAinsideOptionalRange_1:
  .4byte 0x802e1d28
  .4byte 0x802e1d40
.global __RTTI__29TAIAinsideOptionalRangeBeatle
__RTTI__29TAIAinsideOptionalRangeBeatle:
  .4byte 0x802e1ce4
  .4byte 0x802e1d54
.global __RTTI__21TAIAvisiblePikiBeatle
__RTTI__21TAIAvisiblePikiBeatle:
  .4byte 0x802e1d98
  .4byte 0x802e1db0
.global __RTTI__10TAIAdamage_1
__RTTI__10TAIAdamage_1:
  .4byte 0x802e1e2c
  .4byte 0x802e1e38
.global __RTTI__16TAIAdamageBeatle
__RTTI__16TAIAdamageBeatle:
  .4byte 0x802e1e18
  .4byte 0x802e1e44
  .4byte 0x802e1e88
  .4byte 0x802e1e94
.global __RTTI__15TAIAdyingBeatle
__RTTI__15TAIAdyingBeatle:
  .4byte 0x802e1e78
  .4byte 0x802e1ea8
.global __RTTI__14TAIAinitBeatle
__RTTI__14TAIAinitBeatle:
  .4byte 0x802e1ee0
  .4byte 0x802e1ef0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e6a2c
  .4byte 0
  .4byte 0x802e1f48
  .4byte 0x802e1f54
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e6a44
  .4byte 0x802e1f60
  .4byte 0x802e1f74
  .4byte 0x802e1f84
.global __RTTI__19TAIbeatleParameters
__RTTI__19TAIbeatleParameters:
  .4byte 0x802e1f34
  .4byte 0x802e1fa0
  .4byte 0
.global lbl_803E6A68
lbl_803E6A68:
	.incbin "baserom.dol", 0x2F0388, 0x4
.global lbl_803E6A6C
lbl_803E6A6C:
	.incbin "baserom.dol", 0x2F038C, 0x4
.global lbl_803E6A70
lbl_803E6A70:
	.incbin "baserom.dol", 0x2F0390, 0x4
.global lbl_803E6A74
lbl_803E6A74:
	.incbin "baserom.dol", 0x2F0394, 0x4
.global lbl_803E6A78
lbl_803E6A78:
	.incbin "baserom.dol", 0x2F0398, 0x4
.global lbl_803E6A7C
lbl_803E6A7C:
	.incbin "baserom.dol", 0x2F039C, 0x20
.global __RTTI__Q23zen9MenuPanel
__RTTI__Q23zen9MenuPanel:
  .4byte 0x802e201c
  .4byte 0x802e2080
  .4byte 0
.global lbl_803E6AA8
lbl_803E6AA8:
	.incbin "baserom.dol", 0x2F03C8, 0x4
.global lbl_803E6AAC
lbl_803E6AAC:
	.incbin "baserom.dol", 0x2F03CC, 0x4
.global lbl_803E6AB0
lbl_803E6AB0:
	.incbin "baserom.dol", 0x2F03D0, 0x4
.global lbl_803E6AB4
lbl_803E6AB4:
	.incbin "baserom.dol", 0x2F03D4, 0x4
.global lbl_803E6AB8
lbl_803E6AB8:
	.incbin "baserom.dol", 0x2F03D8, 0x4
.global lbl_803E6ABC
lbl_803E6ABC:
	.incbin "baserom.dol", 0x2F03DC, 0xC
.global __RTTI__20TAIkabekuiAAnimation
__RTTI__20TAIkabekuiAAnimation:
  .4byte 0x802e22a8
  .4byte 0x802e22d0
  .4byte 0x802e22f8
  .4byte 0
.global __RTTI__13TAIAshadowOff
__RTTI__13TAIAshadowOff:
  .4byte 0x802e22e8
  .4byte 0x802e2304
.global __RTTI__12TAIAshadowOn
__RTTI__12TAIAshadowOn:
  .4byte 0x802e232c
  .4byte 0x802e233c
  .4byte 0x802e2378
  .4byte 0x802e238c
.global __RTTI__17TAIAsleepKabekuiA
__RTTI__17TAIAsleepKabekuiA:
  .4byte 0x802e2364
  .4byte 0x802e2398
.global __RTTI__16TAIAdiveKabekuiA
__RTTI__16TAIAdiveKabekuiA:
  .4byte 0x802e23cc
  .4byte 0x802e23e0
  .4byte 0x802e2454
  .4byte 0x802e2468
.global __RTTI__20TAIAattackWorkObject_1
__RTTI__20TAIAattackWorkObject_1:
  .4byte 0x802e2474
  .4byte 0x802e248c
.global __RTTI__28TAIAattackWorkObjectKabekuiA
__RTTI__28TAIAattackWorkObjectKabekuiA:
  .4byte 0x802e2434
  .4byte 0x802e24a0
.global __RTTI__16TAIAinvincibleOn
__RTTI__16TAIAinvincibleOn:
  .4byte 0x802e2520
  .4byte 0x802e2534
  .4byte 0x802e2570
  .4byte 0x802e257c
.global __RTTI__18TAIAsetMotionSpeed_1
__RTTI__18TAIAsetMotionSpeed_1:
  .4byte 0x802e255c
  .4byte 0x802e2588
  .4byte 0x802e25e8
  .4byte 0
  .4byte 0x802e25f8
  .4byte 0x802e2604
.global __RTTI__19TAIkabekuiAStrategy
__RTTI__19TAIkabekuiAStrategy:
  .4byte 0x802e25d4
  .4byte 0x802e2610
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e6b48
  .4byte 0
  .4byte 0x802e2664
  .4byte 0x802e2670
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e6b60
  .4byte 0x802e267c
  .4byte 0x802e2690
  .4byte 0x802e26a0
.global __RTTI__21TAIkabekuiAParameters
__RTTI__21TAIkabekuiAParameters:
  .4byte 0x802e264c
  .4byte 0x802e26bc
.global lbl_803E6B80
lbl_803E6B80:
	.incbin "baserom.dol", 0x2F04A0, 0x4
.global lbl_803E6B84
lbl_803E6B84:
	.incbin "baserom.dol", 0x2F04A4, 0x4
.global lbl_803E6B88
lbl_803E6B88:
	.incbin "baserom.dol", 0x2F04A8, 0x4
.global lbl_803E6B8C
lbl_803E6B8C:
	.incbin "baserom.dol", 0x2F04AC, 0x4
.global lbl_803E6B90
lbl_803E6B90:
	.incbin "baserom.dol", 0x2F04B0, 0x4
.global lbl_803E6B94
lbl_803E6B94:
	.incbin "baserom.dol", 0x2F04B4, 0xC
.global __RTTI__20TAIkabekuiBAnimation
__RTTI__20TAIkabekuiBAnimation:
  .4byte 0x802e2918
  .4byte 0x802e2940
  .4byte 0x802e2968
  .4byte 0
  .4byte 0x802e29e8
  .4byte 0x802e29fc
.global __RTTI__17TAIAsleepKabekuiB
__RTTI__17TAIAsleepKabekuiB:
  .4byte 0x802e29d4
  .4byte 0x802e2a08
.global __RTTI__16TAIAdiveKabekuiB
__RTTI__16TAIAdiveKabekuiB:
  .4byte 0x802e2a3c
  .4byte 0x802e2a50
  .4byte 0x802e2ac4
  .4byte 0x802e2ad8
.global __RTTI__20TAIAattackWorkObject_2
__RTTI__20TAIAattackWorkObject_2:
  .4byte 0x802e2ae4
  .4byte 0x802e2afc
.global __RTTI__28TAIAattackWorkObjectKabekuiB
__RTTI__28TAIAattackWorkObjectKabekuiB:
  .4byte 0x802e2aa4
  .4byte 0x802e2b10
.global __RTTI__18TAIAbiteForKabekui_1
__RTTI__18TAIAbiteForKabekui_1:
  .4byte 0x802e2be0
  .4byte 0x802e2bf4
.global __RTTI__19TAIAbiteForKabekuiB
__RTTI__19TAIAbiteForKabekuiB:
  .4byte 0x802e2bcc
  .4byte 0x802e2c08
  .4byte 0x802e2c5c
  .4byte 0x802e2c68
  .4byte 0x802e2cd4
  .4byte 0
  .4byte 0x802e2ce4
  .4byte 0x802e2cf0
.global __RTTI__19TAIkabekuiBStrategy
__RTTI__19TAIkabekuiBStrategy:
  .4byte 0x802e2cc0
  .4byte 0x802e2cfc
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e6c10
  .4byte 0
  .4byte 0x802e2d50
  .4byte 0x802e2d5c
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e6c28
  .4byte 0x802e2d68
  .4byte 0x802e2d7c
  .4byte 0x802e2d8c
.global __RTTI__21TAIkabekuiBParameters
__RTTI__21TAIkabekuiBParameters:
  .4byte 0x802e2d38
  .4byte 0x802e2da8
.global lbl_803E6C48
lbl_803E6C48:
	.incbin "baserom.dol", 0x2F0568, 0x4
.global lbl_803E6C4C
lbl_803E6C4C:
	.incbin "baserom.dol", 0x2F056C, 0x4
.global lbl_803E6C50
lbl_803E6C50:
	.incbin "baserom.dol", 0x2F0570, 0x4
.global lbl_803E6C54
lbl_803E6C54:
	.incbin "baserom.dol", 0x2F0574, 0x4
.global lbl_803E6C58
lbl_803E6C58:
	.incbin "baserom.dol", 0x2F0578, 0x4
.global lbl_803E6C5C
lbl_803E6C5C:
	.incbin "baserom.dol", 0x2F057C, 0x4
.global lbl_803E6C60
lbl_803E6C60:
	.incbin "baserom.dol", 0x2F0580, 0x4
.global lbl_803E6C64
lbl_803E6C64:
	.incbin "baserom.dol", 0x2F0584, 0x4
.global lbl_803E6C68
lbl_803E6C68:
	.incbin "baserom.dol", 0x2F0588, 0xC
.global __RTTI__20TAIkabekuiCAnimation
__RTTI__20TAIkabekuiCAnimation:
  .4byte 0x802e308c
  .4byte 0x802e30b4
  .4byte 0x802e30dc
  .4byte 0
  .4byte 0x802e315c
  .4byte 0x802e3170
.global __RTTI__17TAIAsleepKabekuiC
__RTTI__17TAIAsleepKabekuiC:
  .4byte 0x802e3148
  .4byte 0x802e317c
.global __RTTI__16TAIAdiveKabekuiC
__RTTI__16TAIAdiveKabekuiC:
  .4byte 0x802e31b0
  .4byte 0x802e31c4
  .4byte 0x802e3238
  .4byte 0x802e324c
.global __RTTI__20TAIAattackWorkObject_3
__RTTI__20TAIAattackWorkObject_3:
  .4byte 0x802e3258
  .4byte 0x802e3270
.global __RTTI__28TAIAattackWorkObjectKabekuiC
__RTTI__28TAIAattackWorkObjectKabekuiC:
  .4byte 0x802e3218
  .4byte 0x802e3284
.global __RTTI__19TAIAlandingKabekuiC
__RTTI__19TAIAlandingKabekuiC:
  .4byte 0x802e3340
  .4byte 0x802e3354
.global __RTTI__13TAIAjudgeLife_1
__RTTI__13TAIAjudgeLife_1:
  .4byte 0x802e339c
  .4byte 0x802e33ac
.global __RTTI__12TAIAmoreLife_1
__RTTI__12TAIAmoreLife_1:
  .4byte 0x802e33b8
  .4byte 0x802e33c8
.global __RTTI__20TAIAmoreLifeKabekuiC
__RTTI__20TAIAmoreLifeKabekuiC:
  .4byte 0x802e3384
  .4byte 0x802e33dc
.global __RTTI__22TAIAhitCheckFlyingPiki_1
__RTTI__22TAIAhitCheckFlyingPiki_1:
  .4byte 0x802e3434
  .4byte 0x802e344c
.global __RTTI__24TAIAcheckPikiFlyKabekuiC
__RTTI__24TAIAcheckPikiFlyKabekuiC:
  .4byte 0x802e3418
  .4byte 0x802e3458
.global __RTTI__24TAIAflyingMotionKabekuiC
__RTTI__24TAIAflyingMotionKabekuiC:
  .4byte 0x802e3488
  .4byte 0x802e34a4
.global __RTTI__14TAIAflyingBase_2
__RTTI__14TAIAflyingBase_2:
  .4byte 0x802e34ec
  .4byte 0x802e34fc
.global __RTTI__22TAIAflyingBaseKabekuiC
__RTTI__22TAIAflyingBaseKabekuiC:
  .4byte 0x802e34d4
  .4byte 0x802e3508
  .4byte 0x802e3554
  .4byte 0
.global __RTTI__Q29$$2unnamed$$212rippleEffect
__RTTI__Q29$$2unnamed$$212rippleEffect:
  .4byte 0x802e353c
  .4byte 0x802e3580
.global __RTTI__19TAIAtakeOffKabekuiC
__RTTI__19TAIAtakeOffKabekuiC:
  .4byte 0x802e35a4
  .4byte 0x802e35b8
.global __RTTI__12TAIAlessLife_1
__RTTI__12TAIAlessLife_1:
  .4byte 0x802e3600
  .4byte 0x802e3610
.global __RTTI__20TAIAlessLifeKabekuiC
__RTTI__20TAIAlessLifeKabekuiC:
  .4byte 0x802e35e8
  .4byte 0x802e3624
.global __RTTI__18TAIAbiteForKabekui_2
__RTTI__18TAIAbiteForKabekui_2:
  .4byte 0x802e3694
  .4byte 0x802e36a8
.global __RTTI__19TAIAbiteForKabekuiC
__RTTI__19TAIAbiteForKabekuiC:
  .4byte 0x802e3680
  .4byte 0x802e36bc
  .4byte 0x802e3710
  .4byte 0x802e371c
  .4byte 0x802e3788
  .4byte 0
  .4byte 0x802e3798
  .4byte 0x802e37a4
.global __RTTI__19TAIkabekuiCStrategy
__RTTI__19TAIkabekuiCStrategy:
  .4byte 0x802e3774
  .4byte 0x802e37b0
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e6d54
  .4byte 0
  .4byte 0x802e3804
  .4byte 0x802e3810
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e6d6c
  .4byte 0x802e381c
  .4byte 0x802e3830
  .4byte 0x802e3840
.global __RTTI__21TAIkabekuiCParameters
__RTTI__21TAIkabekuiCParameters:
  .4byte 0x802e37ec
  .4byte 0x802e385c
  .4byte 0
  .4byte 0x802e3a78
  .4byte 0
.global __RTTI__18TAItamagoAnimation
__RTTI__18TAItamagoAnimation:
  .4byte 0x802e3a64
  .4byte 0x802e3a88
  .4byte 0x802e3ab8
  .4byte 0
.global __RTTI__20TAIAcountStartTamago
__RTTI__20TAIAcountStartTamago:
  .4byte 0x802e3aa0
  .4byte 0x802e3ac4
  .4byte 0x802e3af8
  .4byte 0x802e3b04
.global __RTTI__9TAIAhatch
__RTTI__9TAIAhatch:
  .4byte 0x802e3aec
  .4byte 0x802e3b10
  .4byte 0x802e3b58
  .4byte 0x802e3b6c
.global __RTTI__23TAIAtimerReactionTamago
__RTTI__23TAIAtimerReactionTamago:
  .4byte 0x802e3b40
  .4byte 0x802e3b78
.global __RTTI__15TAIAdyingTamago
__RTTI__15TAIAdyingTamago:
  .4byte 0x802e3bcc
  .4byte 0x802e3bdc
  .4byte 0x802e3c3c
  .4byte 0
  .4byte 0x802e3c4c
  .4byte 0x802e3c58
.global __RTTI__17TAItamagoStrategy
__RTTI__17TAItamagoStrategy:
  .4byte 0x802e3c28
  .4byte 0x802e3c64
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e6df0
  .4byte 0
  .4byte 0x802e3cb4
  .4byte 0x802e3cc0
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e6e08
  .4byte 0x802e3ccc
  .4byte 0x802e3ce0
  .4byte 0x802e3cf0
.global __RTTI__19TAItamagoParameters
__RTTI__19TAItamagoParameters:
  .4byte 0x802e3ca0
  .4byte 0x802e3d0c
.global lbl_803E6E28
lbl_803E6E28:
	.incbin "baserom.dol", 0x2F0748, 0x4
.global lbl_803E6E2C
lbl_803E6E2C:
	.incbin "baserom.dol", 0x2F074C, 0x4
.global lbl_803E6E30
lbl_803E6E30:
	.incbin "baserom.dol", 0x2F0750, 0x4
.global lbl_803E6E34
lbl_803E6E34:
	.incbin "baserom.dol", 0x2F0754, 0x4
.global lbl_803E6E38
lbl_803E6E38:
	.incbin "baserom.dol", 0x2F0758, 0x4
.global lbl_803E6E3C
lbl_803E6E3C:
	.incbin "baserom.dol", 0x2F075C, 0x4
.global lbl_803E6E40
lbl_803E6E40:
	.incbin "baserom.dol", 0x2F0760, 0x4
.global lbl_803E6E44
lbl_803E6E44:
	.incbin "baserom.dol", 0x2F0764, 0x4
.global lbl_803E6E48
lbl_803E6E48:
	.incbin "baserom.dol", 0x2F0768, 0x4
.global lbl_803E6E4C
lbl_803E6E4C:
	.incbin "baserom.dol", 0x2F076C, 0x4
.global lbl_803E6E50
lbl_803E6E50:
	.incbin "baserom.dol", 0x2F0770, 0x4
.global lbl_803E6E54
lbl_803E6E54:
	.incbin "baserom.dol", 0x2F0774, 0xC
.global __RTTI__18TAIdororoAnimation
__RTTI__18TAIdororoAnimation:
  .4byte 0x802e3f68
  .4byte 0x802e3f8c
  .4byte 0x802e3fb8
  .4byte 0
  .4byte 0x802e3fc8
  .4byte 0x802e3fd4
.global __RTTI__17TAIdororoStrategy
__RTTI__17TAIdororoStrategy:
  .4byte 0x802e3fa4
  .4byte 0x802e3fe0
  .4byte 0x802e4030
  .4byte 0
.global __RTTI__17TAIAgravityDororo
__RTTI__17TAIAgravityDororo:
  .4byte 0x802e401c
  .4byte 0x802e403c
.global __RTTI__19TAIAcheckBarkDororo
__RTTI__19TAIAcheckBarkDororo:
  .4byte 0x802e4064
  .4byte 0x802e4078
  .4byte 0x802e40b0
  .4byte 0x802e40c4
.global __RTTI__14TAIAmotionLoop_3
__RTTI__14TAIAmotionLoop_3:
  .4byte 0x802e40d0
  .4byte 0x802e40e0
.global __RTTI__14TAIAbarkDororo
__RTTI__14TAIAbarkDororo:
  .4byte 0x802e40a0
  .4byte 0x802e40f4
.global __RTTI__24TAIAtransformationDororo
__RTTI__24TAIAtransformationDororo:
  .4byte 0x802e4168
  .4byte 0x802e4184
.global __RTTI__15TAIAbirthDororo
__RTTI__15TAIAbirthDororo:
  .4byte 0x802e41b4
  .4byte 0x802e41c4
.global __RTTI__27TAIAgoTargetPriorityFaceDir_1
__RTTI__27TAIAgoTargetPriorityFaceDir_1:
  .4byte 0x802e4208
  .4byte 0x802e4224
.global __RTTI__16TAIAgoTargetPiki
__RTTI__16TAIAgoTargetPiki:
  .4byte 0x802e41f4
  .4byte 0x802e4238
.global __RTTI__8TAIAwait_1
__RTTI__8TAIAwait_1:
  .4byte 0x802e42c0
  .4byte 0x802e42cc
.global __RTTI__14TAIAwaitDororo
__RTTI__14TAIAwaitDororo:
  .4byte 0x802e42b0
  .4byte 0x802e42e0
  .4byte 0x802e4330
  .4byte 0x802e433c
  .4byte 0x802e4348
  .4byte 0x802e4358
.global __RTTI__18TAIAflickingDororo
__RTTI__18TAIAflickingDororo:
  .4byte 0x802e431c
  .4byte 0x802e436c
.global __RTTI__14TAIAgoGoalPath_1
__RTTI__14TAIAgoGoalPath_1:
  .4byte 0x802e43c4
  .4byte 0x802e43d4
.global __RTTI__20TAIAgoGoalPathDororo
__RTTI__20TAIAgoGoalPathDororo:
  .4byte 0x802e43ac
  .4byte 0x802e43f0
  .4byte 0x802e4448
  .4byte 0
.global __RTTI__17TAIAkillTouchPiki
__RTTI__17TAIAkillTouchPiki:
  .4byte 0x802e4478
  .4byte 0x802e448c
  .4byte 0x802e44c4
  .4byte 0x802e44d0
.global __RTTI__15TAIAdyingDororo
__RTTI__15TAIAdyingDororo:
  .4byte 0x802e44b4
  .4byte 0x802e44e4
.global __RTTI__14TAIAinitDororo
__RTTI__14TAIAinitDororo:
  .4byte 0x802e451c
  .4byte 0x802e452c
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e6f30
  .4byte 0
  .4byte 0x802e4584
  .4byte 0x802e4590
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e6f48
  .4byte 0x802e459c
  .4byte 0x802e45b0
  .4byte 0x802e45c0
.global __RTTI__19TAIdororoParameters
__RTTI__19TAIdororoParameters:
  .4byte 0x802e4570
  .4byte 0x802e45dc
.global lbl_803E6F68
lbl_803E6F68:
	.incbin "baserom.dol", 0x2F0888, 0xC
.global __RTTI__17TAIhibaAAnimation
__RTTI__17TAIhibaAAnimation:
  .4byte 0x802e47c8
  .4byte 0x802e47ec
  .4byte 0x802e4818
  .4byte 0
  .4byte 0x802e4828
  .4byte 0x802e4834
.global __RTTI__16TAIhibaAStrategy
__RTTI__16TAIhibaAStrategy:
  .4byte 0x802e4804
  .4byte 0x802e4840
  .4byte 0x802e4890
  .4byte 0
  .4byte 0x802e489c
  .4byte 0x802e48b0
.global __RTTI__19TAIAfireAttackHibaA
__RTTI__19TAIAfireAttackHibaA:
  .4byte 0x802e487c
  .4byte 0x802e48bc
  .4byte 0x802e4904
  .4byte 0x802e4918
.global __RTTI__22TAIAtimerReactionHibaA
__RTTI__22TAIAtimerReactionHibaA:
  .4byte 0x802e48ec
  .4byte 0x802e4924
.global __RTTI__13TAIAinitHibaA
__RTTI__13TAIAinitHibaA:
  .4byte 0x802e4978
  .4byte 0x802e4988
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e6fc4
  .4byte 0
  .4byte 0x802e49e0
  .4byte 0x802e49ec
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e6fdc
  .4byte 0x802e49f8
  .4byte 0x802e4a0c
  .4byte 0x802e4a1c
.global __RTTI__18TAIhibaAParameters
__RTTI__18TAIhibaAParameters:
  .4byte 0x802e49cc
  .4byte 0x802e4a38
  .4byte 0x802e4ab0
  .4byte 0
.global __RTTI__33TAIeffectAttackEventCallBackHibaA
__RTTI__33TAIeffectAttackEventCallBackHibaA:
  .4byte 0x802e4a8c
  .4byte 0x802e4ad0
  .4byte 0
.global RUMBLE_NONE__18TAIAeffCloudOfDust
RUMBLE_NONE__18TAIAeffCloudOfDust:
	.incbin "baserom.dol", 0x2F0930, 0x20
.global __RTTI__18TAImiurinAnimation
__RTTI__18TAImiurinAnimation:
  .4byte 0x802e4dec
  .4byte 0x802e4e10
  .4byte 0x802e4e3c
  .4byte 0
  .4byte 0x802e4e4c
  .4byte 0x802e4e58
.global __RTTI__17TAImiurinStrategy
__RTTI__17TAImiurinStrategy:
  .4byte 0x802e4e28
  .4byte 0x802e4e64
  .4byte 0x802e4eb4
  .4byte 0
  .4byte 0x802e4ec0
  .4byte 0x802e4ed4
.global __RTTI__16TAIAgroggyMiurin
__RTTI__16TAIAgroggyMiurin:
  .4byte 0x802e4ea0
  .4byte 0x802e4ee0
.global __RTTI__24TAIAresetAnimSpeedMiurin
__RTTI__24TAIAresetAnimSpeedMiurin:
  .4byte 0x802e4f10
  .4byte 0x802e4f2c
  .4byte 0x802e4f64
  .4byte 0x802e4f70
.global __RTTI__15TAIAangryMiurin
__RTTI__15TAIAangryMiurin:
  .4byte 0x802e4f54
  .4byte 0x802e4f7c
.global __RTTI__28TAIAinsideTerritoryRangeNavi_1
__RTTI__28TAIAinsideTerritoryRangeNavi_1:
  .4byte 0x802e4ffc
  .4byte 0x802e501c
.global __RTTI__19TAIAcheckNaviMiurin
__RTTI__19TAIAcheckNaviMiurin:
  .4byte 0x802e4fe8
  .4byte 0x802e5028
.global __RTTI__21TAIAcheckFlowerPikmin
__RTTI__21TAIAcheckFlowerPikmin:
  .4byte 0x802e5058
  .4byte 0x802e5070
.global __RTTI__17TAIAsatisfyMiurin
__RTTI__17TAIAsatisfyMiurin:
  .4byte 0x802e5098
  .4byte 0x802e50ac
.global __RTTI__19TAIAwatchNaviMiurin
__RTTI__19TAIAwatchNaviMiurin:
  .4byte 0x802e50dc
  .4byte 0x802e50f0
.global __RTTI__20TAIAoutsideTerritory_1
__RTTI__20TAIAoutsideTerritory_1:
  .4byte 0x802e5174
  .4byte 0x802e518c
.global __RTTI__26TAIAoutsideTerritoryMiurin
__RTTI__26TAIAoutsideTerritoryMiurin:
  .4byte 0x802e5158
  .4byte 0x802e5198
.global __RTTI__25TAIAflickingReserveMotion_1
__RTTI__25TAIAflickingReserveMotion_1:
  .4byte 0x802e51f8
  .4byte 0x802e5214
.global __RTTI__18TAIAflickingMiurin
__RTTI__18TAIAflickingMiurin:
  .4byte 0x802e51e4
  .4byte 0x802e5228
  .4byte 0x802e5280
  .4byte 0x802e5290
.global __RTTI__20TAIAflickCheckMiurin
__RTTI__20TAIAflickCheckMiurin:
  .4byte 0x802e5268
  .4byte 0x802e529c
.global __RTTI__16TAIAstickingPiki_2
__RTTI__16TAIAstickingPiki_2:
  .4byte 0x802e52e8
  .4byte 0x802e52fc
.global __RTTI__22TAIAstickingPikiMiurin
__RTTI__22TAIAstickingPikiMiurin:
  .4byte 0x802e52d0
  .4byte 0x802e5308
.global __RTTI__22TAIAcheckSatisfyMiurin
__RTTI__22TAIAcheckSatisfyMiurin:
  .4byte 0x802e5374
  .4byte 0x802e538c
.global __RTTI__16TAIAattackMiurin
__RTTI__16TAIAattackMiurin:
  .4byte 0x802e53b4
  .4byte 0x802e53c8
.global __RTTI__17TAIAattackPosture
__RTTI__17TAIAattackPosture:
  .4byte 0x802e53f8
  .4byte 0x802e540c
.global __RTTI__20TAIAattackableTarget_2
__RTTI__20TAIAattackableTarget_2:
  .4byte 0x802e5458
  .4byte 0x802e5470
.global __RTTI__26TAIAattackableTargetMiurin
__RTTI__26TAIAattackableTargetMiurin:
  .4byte 0x802e543c
  .4byte 0x802e547c
.global __RTTI__33TAIAapproachTargetPriorityFaceDir_1
__RTTI__33TAIAapproachTargetPriorityFaceDir_1:
  .4byte 0x802e54d8
  .4byte 0x802e54fc
.global __RTTI__39TAIAapproachTargetPriorityFaceDirMiurin
__RTTI__39TAIAapproachTargetPriorityFaceDirMiurin:
  .4byte 0x802e54b0
  .4byte 0x802e5510
.global __RTTI__16TAIAturnToTarget_2
__RTTI__16TAIAturnToTarget_2:
  .4byte 0x802e5568
  .4byte 0x802e557c
.global __RTTI__21TAIAturnFocusCreature_1
__RTTI__21TAIAturnFocusCreature_1:
  .4byte 0x802e5590
  .4byte 0x802e55a8
.global __RTTI__27TAIAturnFocusCreatureMiurin
__RTTI__27TAIAturnFocusCreatureMiurin:
  .4byte 0x802e554c
  .4byte 0x802e55c4
  .4byte 0x802e5618
  .4byte 0x802e5624
.global __RTTI__15TAIAdyingMiurin
__RTTI__15TAIAdyingMiurin:
  .4byte 0x802e5608
  .4byte 0x802e5638
.global __RTTI__14TAIAinitMiurin
__RTTI__14TAIAinitMiurin:
  .4byte 0x802e5670
  .4byte 0x802e5680
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e7150
  .4byte 0
  .4byte 0x802e56d8
  .4byte 0x802e56e4
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e7168
  .4byte 0x802e56f0
  .4byte 0x802e5704
  .4byte 0x802e5714
.global __RTTI__19TAImiurinParameters
__RTTI__19TAImiurinParameters:
  .4byte 0x802e56c4
  .4byte 0x802e5730
.global lbl_803E7188
lbl_803E7188:
	.incbin "baserom.dol", 0x2F0AA8, 0x8
.global mapNoScr2Game__9$$2unnamed$$2
mapNoScr2Game__9$$2unnamed$$2:
	.incbin "baserom.dol", 0x2F0AB0, 0x8
.global mapNoGame2Scr__9$$2unnamed$$2
mapNoGame2Scr__9$$2unnamed$$2:
	.incbin "baserom.dol", 0x2F0AB8, 0x8
.global lbl_803E71A0
lbl_803E71A0:
	.incbin "baserom.dol", 0x2F0AC0, 0x4
.global lbl_803E71A4
lbl_803E71A4:
	.incbin "baserom.dol", 0x2F0AC4, 0x4
.global lbl_803E71A8
lbl_803E71A8:
	.incbin "baserom.dol", 0x2F0AC8, 0x4
.global lbl_803E71AC
lbl_803E71AC:
	.incbin "baserom.dol", 0x2F0ACC, 0x4
.global lbl_803E71B0
lbl_803E71B0:
	.incbin "baserom.dol", 0x2F0AD0, 0x4
.global lbl_803E71B4
lbl_803E71B4:
	.incbin "baserom.dol", 0x2F0AD4, 0x4
.global lbl_803E71B8
lbl_803E71B8:
	.incbin "baserom.dol", 0x2F0AD8, 0x4
.global OBJ_NUM__Q23zen16WorldMapTitleMgr
OBJ_NUM__Q23zen16WorldMapTitleMgr:
	.incbin "baserom.dol", 0x2F0ADC, 0x4
.global lbl_803E71C0
lbl_803E71C0:
	.incbin "baserom.dol", 0x2F0AE0, 0x4
.global lbl_803E71C4
lbl_803E71C4:
	.incbin "baserom.dol", 0x2F0AE4, 0x4
.global lbl_803E71C8
lbl_803E71C8:
	.incbin "baserom.dol", 0x2F0AE8, 0x4
.global lbl_803E71CC
lbl_803E71CC:
	.incbin "baserom.dol", 0x2F0AEC, 0x4
.global lbl_803E71D0
lbl_803E71D0:
	.incbin "baserom.dol", 0x2F0AF0, 0x4
.global lbl_803E71D4
lbl_803E71D4:
	.incbin "baserom.dol", 0x2F0AF4, 0x4
.global lbl_803E71D8
lbl_803E71D8:
	.incbin "baserom.dol", 0x2F0AF8, 0x4
.global lbl_803E71DC
lbl_803E71DC:
	.incbin "baserom.dol", 0x2F0AFC, 0x4
.global lbl_803E71E0
lbl_803E71E0:
	.incbin "baserom.dol", 0x2F0B00, 0x4
.global lbl_803E71E4
lbl_803E71E4:
	.incbin "baserom.dol", 0x2F0B04, 0x4
.global lbl_803E71E8
lbl_803E71E8:
	.incbin "baserom.dol", 0x2F0B08, 0x4
.global lbl_803E71EC
lbl_803E71EC:
	.incbin "baserom.dol", 0x2F0B0C, 0x4
.global lbl_803E71F0
lbl_803E71F0:
	.incbin "baserom.dol", 0x2F0B10, 0x4
.global lbl_803E71F4
lbl_803E71F4:
	.incbin "baserom.dol", 0x2F0B14, 0x4
.global lbl_803E71F8
lbl_803E71F8:
	.incbin "baserom.dol", 0x2F0B18, 0x4
.global lbl_803E71FC
lbl_803E71FC:
	.incbin "baserom.dol", 0x2F0B1C, 0x4
.global lbl_803E7200
lbl_803E7200:
	.incbin "baserom.dol", 0x2F0B20, 0x4
.global lbl_803E7204
lbl_803E7204:
	.incbin "baserom.dol", 0x2F0B24, 0x4
.global lbl_803E7208
lbl_803E7208:
	.incbin "baserom.dol", 0x2F0B28, 0x4
.global lbl_803E720C
lbl_803E720C:
	.incbin "baserom.dol", 0x2F0B2C, 0x4
.global lbl_803E7210
lbl_803E7210:
	.incbin "baserom.dol", 0x2F0B30, 0x4
.global lbl_803E7214
lbl_803E7214:
	.incbin "baserom.dol", 0x2F0B34, 0x4
.global lbl_803E7218
lbl_803E7218:
	.incbin "baserom.dol", 0x2F0B38, 0x4
.global lbl_803E721C
lbl_803E721C:
	.incbin "baserom.dol", 0x2F0B3C, 0x4
.global lbl_803E7220
lbl_803E7220:
	.incbin "baserom.dol", 0x2F0B40, 0x4
.global lbl_803E7224
lbl_803E7224:
	.incbin "baserom.dol", 0x2F0B44, 0x4
.global lbl_803E7228
lbl_803E7228:
	.incbin "baserom.dol", 0x2F0B48, 0x4
.global lbl_803E722C
lbl_803E722C:
	.incbin "baserom.dol", 0x2F0B4C, 0x4
.global bottomLengthMin__Q23zen19WorldMapCursorOnyon
bottomLengthMin__Q23zen19WorldMapCursorOnyon:
	.incbin "baserom.dol", 0x2F0B50, 0x4
.global bottomLengthDefault__Q23zen19WorldMapCursorOnyon
bottomLengthDefault__Q23zen19WorldMapCursorOnyon:
	.incbin "baserom.dol", 0x2F0B54, 0x4
.global bottomLengthMax__Q23zen19WorldMapCursorOnyon
bottomLengthMax__Q23zen19WorldMapCursorOnyon:
	.incbin "baserom.dol", 0x2F0B58, 0x4
.global scaleFrameMax__Q23zen19WorldMapCursorOnyon
scaleFrameMax__Q23zen19WorldMapCursorOnyon:
	.incbin "baserom.dol", 0x2F0B5C, 0x4
.global lbl_803E7240
lbl_803E7240:
	.incbin "baserom.dol", 0x2F0B60, 0x4
.global lbl_803E7244
lbl_803E7244:
	.incbin "baserom.dol", 0x2F0B64, 0x4
.global lbl_803E7248
lbl_803E7248:
	.incbin "baserom.dol", 0x2F0B68, 0x4
.global lbl_803E724C
lbl_803E724C:
	.incbin "baserom.dol", 0x2F0B6C, 0x4
.global lbl_803E7250
lbl_803E7250:
	.incbin "baserom.dol", 0x2F0B70, 0x4
.global lbl_803E7254
lbl_803E7254:
	.incbin "baserom.dol", 0x2F0B74, 0x4
.global lbl_803E7258
lbl_803E7258:
	.incbin "baserom.dol", 0x2F0B78, 0x4
.global lbl_803E725C
lbl_803E725C:
	.incbin "baserom.dol", 0x2F0B7C, 0x4
.global lbl_803E7260
lbl_803E7260:
	.incbin "baserom.dol", 0x2F0B80, 0x4
.global lbl_803E7264
lbl_803E7264:
	.incbin "baserom.dol", 0x2F0B84, 0x4
.global lbl_803E7268
lbl_803E7268:
	.incbin "baserom.dol", 0x2F0B88, 0x4
.global lbl_803E726C
lbl_803E726C:
	.incbin "baserom.dol", 0x2F0B8C, 0x4
.global lbl_803E7270
lbl_803E7270:
	.incbin "baserom.dol", 0x2F0B90, 0x4
.global lbl_803E7274
lbl_803E7274:
	.incbin "baserom.dol", 0x2F0B94, 0x4
.global lbl_803E7278
lbl_803E7278:
	.incbin "baserom.dol", 0x2F0B98, 0x4
.global lbl_803E727C
lbl_803E727C:
	.incbin "baserom.dol", 0x2F0B9C, 0x4
.global lbl_803E7280
lbl_803E7280:
	.incbin "baserom.dol", 0x2F0BA0, 0x4
.global lbl_803E7284
lbl_803E7284:
	.incbin "baserom.dol", 0x2F0BA4, 0x4
.global lbl_803E7288
lbl_803E7288:
	.incbin "baserom.dol", 0x2F0BA8, 0x4
.global lbl_803E728C
lbl_803E728C:
	.incbin "baserom.dol", 0x2F0BAC, 0x4
.global lbl_803E7290
lbl_803E7290:
	.incbin "baserom.dol", 0x2F0BB0, 0x4
.global lbl_803E7294
lbl_803E7294:
	.incbin "baserom.dol", 0x2F0BB4, 0x4
.global lbl_803E7298
lbl_803E7298:
	.incbin "baserom.dol", 0x2F0BB8, 0x4
.global lbl_803E729C
lbl_803E729C:
	.incbin "baserom.dol", 0x2F0BBC, 0x4
.global lbl_803E72A0
lbl_803E72A0:
	.incbin "baserom.dol", 0x2F0BC0, 0x4
.global lbl_803E72A4
lbl_803E72A4:
	.incbin "baserom.dol", 0x2F0BC4, 0x4
.global lbl_803E72A8
lbl_803E72A8:
	.incbin "baserom.dol", 0x2F0BC8, 0x4
.global lbl_803E72AC
lbl_803E72AC:
	.incbin "baserom.dol", 0x2F0BCC, 0x4
.global lbl_803E72B0
lbl_803E72B0:
	.incbin "baserom.dol", 0x2F0BD0, 0x4
.global lbl_803E72B4
lbl_803E72B4:
	.incbin "baserom.dol", 0x2F0BD4, 0x4
.global lbl_803E72B8
lbl_803E72B8:
	.incbin "baserom.dol", 0x2F0BD8, 0x4
.global lbl_803E72BC
lbl_803E72BC:
	.incbin "baserom.dol", 0x2F0BDC, 0x4
.global lbl_803E72C0
lbl_803E72C0:
	.incbin "baserom.dol", 0x2F0BE0, 0x4
.global lbl_803E72C4
lbl_803E72C4:
	.incbin "baserom.dol", 0x2F0BE4, 0x4
.global lbl_803E72C8
lbl_803E72C8:
	.incbin "baserom.dol", 0x2F0BE8, 0x4
.global lbl_803E72CC
lbl_803E72CC:
	.incbin "baserom.dol", 0x2F0BEC, 0x4
.global lbl_803E72D0
lbl_803E72D0:
	.incbin "baserom.dol", 0x2F0BF0, 0x4
.global lbl_803E72D4
lbl_803E72D4:
	.incbin "baserom.dol", 0x2F0BF4, 0x4
.global lbl_803E72D8
lbl_803E72D8:
	.incbin "baserom.dol", 0x2F0BF8, 0x4
.global lbl_803E72DC
lbl_803E72DC:
	.incbin "baserom.dol", 0x2F0BFC, 0x4
.global lbl_803E72E0
lbl_803E72E0:
	.incbin "baserom.dol", 0x2F0C00, 0x4
.global lbl_803E72E4
lbl_803E72E4:
	.incbin "baserom.dol", 0x2F0C04, 0x4
.global lbl_803E72E8
lbl_803E72E8:
	.incbin "baserom.dol", 0x2F0C08, 0x4
.global lbl_803E72EC
lbl_803E72EC:
	.incbin "baserom.dol", 0x2F0C0C, 0x4
.global lbl_803E72F0
lbl_803E72F0:
	.incbin "baserom.dol", 0x2F0C10, 0x4
.global lbl_803E72F4
lbl_803E72F4:
	.incbin "baserom.dol", 0x2F0C14, 0x4
.global lbl_803E72F8
lbl_803E72F8:
	.incbin "baserom.dol", 0x2F0C18, 0x4
.global ONYON_POS_RADIUS__Q23zen17WorldMapCursorMgr
ONYON_POS_RADIUS__Q23zen17WorldMapCursorMgr:
	.incbin "baserom.dol", 0x2F0C1C, 0x4
.global ONYON_OFFSET_X__Q23zen17WorldMapCursorMgr
ONYON_OFFSET_X__Q23zen17WorldMapCursorMgr:
	.incbin "baserom.dol", 0x2F0C20, 0x4
.global ONYON_OFFSET_Y__Q23zen17WorldMapCursorMgr
ONYON_OFFSET_Y__Q23zen17WorldMapCursorMgr:
	.incbin "baserom.dol", 0x2F0C24, 0x4
.global ONYON_OFFSET_Z__Q23zen17WorldMapCursorMgr
ONYON_OFFSET_Z__Q23zen17WorldMapCursorMgr:
	.incbin "baserom.dol", 0x2F0C28, 0x4
.global lbl_803E730C
lbl_803E730C:
	.incbin "baserom.dol", 0x2F0C2C, 0x4
.global lbl_803E7310
lbl_803E7310:
	.incbin "baserom.dol", 0x2F0C30, 0x4
.global lbl_803E7314
lbl_803E7314:
	.incbin "baserom.dol", 0x2F0C34, 0x4
.global lbl_803E7318
lbl_803E7318:
	.incbin "baserom.dol", 0x2F0C38, 0x4
.global lbl_803E731C
lbl_803E731C:
	.incbin "baserom.dol", 0x2F0C3C, 0x4
.global lbl_803E7320
lbl_803E7320:
	.incbin "baserom.dol", 0x2F0C40, 0x4
.global lbl_803E7324
lbl_803E7324:
	.incbin "baserom.dol", 0x2F0C44, 0x4
.global EVENT_NONE__Q29$$2unnamed$$219WorldMapCoursePoint
EVENT_NONE__Q29$$2unnamed$$219WorldMapCoursePoint:
	.incbin "baserom.dol", 0x2F0C48, 0x4
.global EVENT_APPEAR_FINISH__Q29$$2unnamed$$219WorldMapCoursePoint
EVENT_APPEAR_FINISH__Q29$$2unnamed$$219WorldMapCoursePoint:
	.incbin "baserom.dol", 0x2F0C4C, 0x4
.global lbl_803E7330
lbl_803E7330:
	.incbin "baserom.dol", 0x2F0C50, 0x8
.global lbl_803E7338
lbl_803E7338:
	.incbin "baserom.dol", 0x2F0C58, 0x8
.global lbl_803E7340
lbl_803E7340:
	.incbin "baserom.dol", 0x2F0C60, 0x8
.global lbl_803E7348
lbl_803E7348:
	.incbin "baserom.dol", 0x2F0C68, 0x8
.global lbl_803E7350
lbl_803E7350:
	.incbin "baserom.dol", 0x2F0C70, 0x8
.global lbl_803E7358
lbl_803E7358:
	.incbin "baserom.dol", 0x2F0C78, 0x8
.global lbl_803E7360
lbl_803E7360:
	.incbin "baserom.dol", 0x2F0C80, 0x8
.global lbl_803E7368
lbl_803E7368:
	.incbin "baserom.dol", 0x2F0C88, 0x10
.global __RTTI__Q23zen12FigureTex$$0i$$1_2
__RTTI__Q23zen12FigureTex$$0i$$1_2:
  .4byte 0x802e5910
  .4byte 0x802e5924
  .4byte 0x802e5930
  .4byte 0
  .4byte 0x802e5944
  .4byte 0
  .4byte 0x802e5960
  .4byte 0x802e5970
.global __RTTI__Q29$$2unnamed$$224DrawWorldMapDateCallBack
__RTTI__Q29$$2unnamed$$224DrawWorldMapDateCallBack:
  .4byte 0x802e59c0
  .4byte 0x802e59e4
.global lbl_803E73A0
lbl_803E73A0:
	.incbin "baserom.dol", 0x2F0CC0, 0x8
.global lbl_803E73A8
lbl_803E73A8:
	.incbin "baserom.dol", 0x2F0CC8, 0x18
.global lbl_803E73C0
lbl_803E73C0:
	.incbin "baserom.dol", 0x2F0CE0, 0x4
.global lbl_803E73C4
lbl_803E73C4:
	.incbin "baserom.dol", 0x2F0CE4, 0x4
.global lbl_803E73C8
lbl_803E73C8:
	.incbin "baserom.dol", 0x2F0CE8, 0x4
.global lbl_803E73CC
lbl_803E73CC:
	.incbin "baserom.dol", 0x2F0CEC, 0x4
.global lbl_803E73D0
lbl_803E73D0:
	.incbin "baserom.dol", 0x2F0CF0, 0x8
.global lbl_803E73D8
lbl_803E73D8:
	.incbin "baserom.dol", 0x2F0CF8, 0x4
.global lbl_803E73DC
lbl_803E73DC:
	.incbin "baserom.dol", 0x2F0CFC, 0x4
.global lbl_803E73E0
lbl_803E73E0:
	.incbin "baserom.dol", 0x2F0D00, 0x4
.global lbl_803E73E4
lbl_803E73E4:
	.incbin "baserom.dol", 0x2F0D04, 0x4
.global lbl_803E73E8
lbl_803E73E8:
	.incbin "baserom.dol", 0x2F0D08, 0x4
.global lbl_803E73EC
lbl_803E73EC:
	.incbin "baserom.dol", 0x2F0D0C, 0xC
.global __RTTI__17TAIusubaAnimation
__RTTI__17TAIusubaAnimation:
  .4byte 0x802e6568
  .4byte 0x802e658c
  .4byte 0x802e65b4
  .4byte 0
  .4byte 0x802e65c0
  .4byte 0x802e65cc
.global __RTTI__12TAIAflyUsuba
__RTTI__12TAIAflyUsuba:
  .4byte 0x802e65a4
  .4byte 0x802e65d8
  .4byte 0x802e6638
  .4byte 0
  .4byte 0x802e6648
  .4byte 0x802e6654
.global __RTTI__16TAIusubaStrategy
__RTTI__16TAIusubaStrategy:
  .4byte 0x802e6624
  .4byte 0x802e6660
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e7430
  .4byte 0
  .4byte 0x802e66b0
  .4byte 0x802e66bc
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e7448
  .4byte 0x802e66c8
  .4byte 0x802e66dc
  .4byte 0x802e66ec
.global __RTTI__18TAIusubaParameters
__RTTI__18TAIusubaParameters:
  .4byte 0x802e669c
  .4byte 0x802e6708
  .4byte 0x802e691c
  .4byte 0
.global __RTTI__17TAIotamaAnimation
__RTTI__17TAIotamaAnimation:
  .4byte 0x802e6908
  .4byte 0x802e692c
  .4byte 0x802e6958
  .4byte 0
  .4byte 0x802e6964
  .4byte 0x802e6978
.global __RTTI__16TAIArunAwayOtama
__RTTI__16TAIArunAwayOtama:
  .4byte 0x802e6944
  .4byte 0x802e6984
.global __RTTI__25TAIAflickingReserveMotion_2
__RTTI__25TAIAflickingReserveMotion_2:
  .4byte 0x802e6a04
  .4byte 0x802e6a20
.global __RTTI__15TAIAappealOtama
__RTTI__15TAIAappealOtama:
  .4byte 0x802e69f4
  .4byte 0x802e6a34
.global __RTTI__30TAIAsetTargetPointCircleRandom_1
__RTTI__30TAIAsetTargetPointCircleRandom_1:
  .4byte 0x802e6a88
  .4byte 0x802e6aa8
.global __RTTI__18TAIAsetTargetOtama
__RTTI__18TAIAsetTargetOtama:
  .4byte 0x802e6a74
  .4byte 0x802e6ab4
.global __RTTI__13TAIAwaitOtama
__RTTI__13TAIAwaitOtama:
  .4byte 0x802e6ae4
  .4byte 0x802e6af4
  .4byte 0x802e6b54
  .4byte 0
  .4byte 0x802e6b64
  .4byte 0x802e6b70
.global __RTTI__16TAIotamaStrategy
__RTTI__16TAIotamaStrategy:
  .4byte 0x802e6b40
  .4byte 0x802e6b7c
  .4byte 0x414e6f64
  .4byte 0x65000000
  .4byte 0x803e74d0
  .4byte 0
  .4byte 0x802e6bcc
  .4byte 0x802e6bd8
  .4byte 0x4e6f6465
  .4byte 0
  .4byte 0x803e74e8
  .4byte 0x802e6be4
  .4byte 0x802e6bf8
  .4byte 0x802e6c08
.global __RTTI__18TAIotamaParameters
__RTTI__18TAIotamaParameters:
  .4byte 0x802e6bb8
  .4byte 0x802e6c24
.global lbl_803E7508
lbl_803E7508:
	.incbin "baserom.dol", 0x2F0E28, 0x4
.global lbl_803E750C
lbl_803E750C:
	.incbin "baserom.dol", 0x2F0E2C, 0x4
.global lbl_803E7510
lbl_803E7510:
	.incbin "baserom.dol", 0x2F0E30, 0x4
.global lbl_803E7514
lbl_803E7514:
	.incbin "baserom.dol", 0x2F0E34, 0x4
.global lbl_803E7518
lbl_803E7518:
	.incbin "baserom.dol", 0x2F0E38, 0x4
.global lbl_803E751C
lbl_803E751C:
	.incbin "baserom.dol", 0x2F0E3C, 0x4
.global lbl_803E7520
lbl_803E7520:
	.incbin "baserom.dol", 0x2F0E40, 0x4
.global lbl_803E7524
lbl_803E7524:
	.incbin "baserom.dol", 0x2F0E44, 0x4
.global lbl_803E7528
lbl_803E7528:
	.incbin "baserom.dol", 0x2F0E48, 0x4
.global lbl_803E752C
lbl_803E752C:
	.incbin "baserom.dol", 0x2F0E4C, 0x4
.global lbl_803E7530
lbl_803E7530:
	.incbin "baserom.dol", 0x2F0E50, 0x4
.global lbl_803E7534
lbl_803E7534:
	.incbin "baserom.dol", 0x2F0E54, 0x4
.global lbl_803E7538
lbl_803E7538:
	.incbin "baserom.dol", 0x2F0E58, 0x8
.global lbl_803E7540
lbl_803E7540:
	.incbin "baserom.dol", 0x2F0E60, 0x4
.global lbl_803E7544
lbl_803E7544:
	.incbin "baserom.dol", 0x2F0E64, 0x4
.global lbl_803E7548
lbl_803E7548:
	.incbin "baserom.dol", 0x2F0E68, 0x4
.global lbl_803E754C
lbl_803E754C:
	.incbin "baserom.dol", 0x2F0E6C, 0x4
.global lbl_803E7550
lbl_803E7550:
	.incbin "baserom.dol", 0x2F0E70, 0x4
.global lbl_803E7554
lbl_803E7554:
	.incbin "baserom.dol", 0x2F0E74, 0x4
.global lbl_803E7558
lbl_803E7558:
	.incbin "baserom.dol", 0x2F0E78, 0x4
.global lbl_803E755C
lbl_803E755C:
	.incbin "baserom.dol", 0x2F0E7C, 0x4
.global lbl_803E7560
lbl_803E7560:
	.incbin "baserom.dol", 0x2F0E80, 0x4
.global lbl_803E7564
lbl_803E7564:
	.incbin "baserom.dol", 0x2F0E84, 0x4
.global lbl_803E7568
lbl_803E7568:
	.incbin "baserom.dol", 0x2F0E88, 0x4
.global lbl_803E756C
lbl_803E756C:
	.incbin "baserom.dol", 0x2F0E8C, 0x4
.global lbl_803E7570
lbl_803E7570:
	.incbin "baserom.dol", 0x2F0E90, 0x4
.global lbl_803E7574
lbl_803E7574:
	.incbin "baserom.dol", 0x2F0E94, 0x4
.global lbl_803E7578
lbl_803E7578:
	.incbin "baserom.dol", 0x2F0E98, 0x4
.global lbl_803E757C
lbl_803E757C:
	.incbin "baserom.dol", 0x2F0E9C, 0x4
.global lbl_803E7580
lbl_803E7580:
	.incbin "baserom.dol", 0x2F0EA0, 0x4
.global lbl_803E7584
lbl_803E7584:
	.incbin "baserom.dol", 0x2F0EA4, 0x4
.global lbl_803E7588
lbl_803E7588:
	.incbin "baserom.dol", 0x2F0EA8, 0x4
.global lbl_803E758C
lbl_803E758C:
	.incbin "baserom.dol", 0x2F0EAC, 0x4
.global lbl_803E7590
lbl_803E7590:
	.incbin "baserom.dol", 0x2F0EB0, 0x4
.global lbl_803E7594
lbl_803E7594:
	.incbin "baserom.dol", 0x2F0EB4, 0x4
.global lbl_803E7598
lbl_803E7598:
	.incbin "baserom.dol", 0x2F0EB8, 0x4
.global lbl_803E759C
lbl_803E759C:
	.incbin "baserom.dol", 0x2F0EBC, 0x4
.global __RTTI__Q23zen10DrawScreen_3
__RTTI__Q23zen10DrawScreen_3:
  .4byte 0x802e6d24
  .4byte 0
.global __RTTI__Q23zen12DrawMenuBase
__RTTI__Q23zen12DrawMenuBase:
  .4byte 0x802e6d34
  .4byte 0x802e6d48
.global __RTTI__Q23zen12DrawCMCSmenu
__RTTI__Q23zen12DrawCMCSmenu:
  .4byte 0x802e6d10
  .4byte 0x802e6d54
.global lbl_803E75B8
lbl_803E75B8:
	.incbin "baserom.dol", 0x2F0ED8, 0x8
.global lbl_803E75C0
lbl_803E75C0:
	.incbin "baserom.dol", 0x2F0EE0, 0x4
.global lbl_803E75C4
lbl_803E75C4:
	.incbin "baserom.dol", 0x2F0EE4, 0x8
.global lbl_803E75CC
lbl_803E75CC:
	.incbin "baserom.dol", 0x2F0EEC, 0x8
.global lbl_803E75D4
lbl_803E75D4:
	.incbin "baserom.dol", 0x2F0EF4, 0x8
.global lbl_803E75DC
lbl_803E75DC:
	.incbin "baserom.dol", 0x2F0EFC, 0x8
.global MEMORY_BEST_SCORE__Q23zen14DrawCMscoreMgr
MEMORY_BEST_SCORE__Q23zen14DrawCMscoreMgr:
	.incbin "baserom.dol", 0x2F0F04, 0x4
.global lbl_803E75E8
lbl_803E75E8:
	.incbin "baserom.dol", 0x2F0F08, 0x8
.global lbl_803E75F0
lbl_803E75F0:
	.incbin "baserom.dol", 0x2F0F10, 0x8
.global lbl_803E75F8
lbl_803E75F8:
	.incbin "baserom.dol", 0x2F0F18, 0x4
.global lbl_803E75FC
lbl_803E75FC:
	.incbin "baserom.dol", 0x2F0F1C, 0x4
.global lbl_803E7600
lbl_803E7600:
	.incbin "baserom.dol", 0x2F0F20, 0x4
.global lbl_803E7604
lbl_803E7604:
	.incbin "baserom.dol", 0x2F0F24, 0x4
.global lbl_803E7608
lbl_803E7608:
	.incbin "baserom.dol", 0x2F0F28, 0x4
.global lbl_803E760C
lbl_803E760C:
	.incbin "baserom.dol", 0x2F0F2C, 0x8
.global __RTTI__Q23zen17DrawCMresultAlpha
__RTTI__Q23zen17DrawCMresultAlpha:
  .4byte 0x802e6f54
  .4byte 0
.global __RTTI__Q23zen17DrawCMresultGraph
__RTTI__Q23zen17DrawCMresultGraph:
  .4byte 0x802e6f3c
  .4byte 0x802e6f6c
  .4byte 0x802e6fac
  .4byte 0
.global __RTTI__Q23zen12FigureTex$$0i$$1_3
__RTTI__Q23zen12FigureTex$$0i$$1_3:
  .4byte 0x802e6fbc
  .4byte 0x802e6fd0
  .4byte 0x802e6fdc
  .4byte 0
  .4byte 0x802e6ff0
  .4byte 0
  .4byte 0x802e700c
  .4byte 0x802e701c
  .4byte 0
.global lbl_803E7650
lbl_803E7650:
	.incbin "baserom.dol", 0x2F0F70, 0x8
.global lbl_803E7658
lbl_803E7658:
	.incbin "baserom.dol", 0x2F0F78, 0x8
.global lbl_803E7660
lbl_803E7660:
	.incbin "baserom.dol", 0x2F0F80, 0x8
.global lbl_803E7668
lbl_803E7668:
	.incbin "baserom.dol", 0x2F0F88, 0x8
.global SELECT_CANCEL__Q23zen12DrawMenuBase
SELECT_CANCEL__Q23zen12DrawMenuBase:
	.incbin "baserom.dol", 0x2F0F90, 0x4
.global __RTTI__Q23zen10DrawScreen_4
__RTTI__Q23zen10DrawScreen_4:
  .4byte 0x802e70e4
  .4byte 0
.global __RTTI__Q23zen12DrawMenuBase_1
__RTTI__Q23zen12DrawMenuBase_1:
  .4byte 0x802e70d0
  .4byte 0x802e70f4
  .4byte 0
.global lbl_803E7688
lbl_803E7688:
	.incbin "baserom.dol", 0x2F0FA8, 0x8
.global lbl_803E7690
lbl_803E7690:
	.incbin "baserom.dol", 0x2F0FB0, 0x8
.global lbl_803E7698
lbl_803E7698:
	.incbin "baserom.dol", 0x2F0FB8, 0x8
.global lbl_803E76A0
lbl_803E76A0:
	.incbin "baserom.dol", 0x2F0FC0, 0x8
.global lbl_803E76A8
lbl_803E76A8:
	.incbin "baserom.dol", 0x2F0FC8, 0x8
.global lbl_803E76B0
lbl_803E76B0:
	.incbin "baserom.dol", 0x2F0FD0, 0x8
.global lbl_803E76B8
lbl_803E76B8:
	.incbin "baserom.dol", 0x2F0FD8, 0x8
.global lbl_803E76C0
lbl_803E76C0:
	.incbin "baserom.dol", 0x2F0FE0, 0x8
.global lbl_803E76C8
lbl_803E76C8:
	.incbin "baserom.dol", 0x2F0FE8, 0x8
.global lbl_803E76D0
lbl_803E76D0:
	.incbin "baserom.dol", 0x2F0FF0, 0x8
.global lbl_803E76D8
lbl_803E76D8:
	.incbin "baserom.dol", 0x2F0FF8, 0x8
.global lbl_803E76E0
lbl_803E76E0:
	.incbin "baserom.dol", 0x2F1000, 0x8
.global lbl_803E76E8
lbl_803E76E8:
	.incbin "baserom.dol", 0x2F1008, 0x8
.global lbl_803E76F0
lbl_803E76F0:
	.incbin "baserom.dol", 0x2F1010, 0x8
.global __OSCurrHeap
__OSCurrHeap:
	.incbin "baserom.dol", 0x2F1018, 0x8
.global __OSArenaLo
__OSArenaLo:
	.incbin "baserom.dol", 0x2F1020, 0x8
.global lbl_803E7708
lbl_803E7708:
	.incbin "baserom.dol", 0x2F1028, 0x8
.global fontEncode$55
fontEncode$55:
	.incbin "baserom.dol", 0x2F1030, 0x8
.global lbl_803E7718
lbl_803E7718:
	.incbin "baserom.dol", 0x2F1038, 0x8
.global Unit01
Unit01:
	.incbin "baserom.dol", 0x2F1040, 0x8
.global FirstRead
FirstRead:
	.incbin "baserom.dol", 0x2F1048, 0x8
.global lbl_803E7730
lbl_803E7730:
	.incbin "baserom.dol", 0x2F1050, 0x8
.global autoInvalidation
autoInvalidation:
	.incbin "baserom.dol", 0x2F1058, 0x8
.global lbl_803E7740
lbl_803E7740:
	.incbin "baserom.dol", 0x2F1060, 0x4
.global lbl_803E7744
lbl_803E7744:
	.incbin "baserom.dol", 0x2F1064, 0x4
.global lbl_803E7748
lbl_803E7748:
	.incbin "baserom.dol", 0x2F1068, 0x8
.global ClampRegion
ClampRegion:
	.incbin "baserom.dol", 0x2F1070, 0x8
.global ResettingChan
ResettingChan:
	.incbin "baserom.dol", 0x2F1078, 0x4
.global XPatchBits
XPatchBits:
	.incbin "baserom.dol", 0x2F107C, 0x4
.global AnalogMode
AnalogMode:
	.incbin "baserom.dol", 0x2F1080, 0x4
.global Spec
Spec:
	.incbin "baserom.dol", 0x2F1084, 0x4
.global MakeStatus
MakeStatus:
	.incbin "baserom.dol", 0x2F1088, 0x4
.global cmdReadOrigin
cmdReadOrigin:
	.incbin "baserom.dol", 0x2F108C, 0x4
.global cmdCalibrate
cmdCalibrate:
	.incbin "baserom.dol", 0x2F1090, 0x4
.global lbl_803E7774
lbl_803E7774:
	.incbin "baserom.dol", 0x2F1094, 0xC
.global Chan
Chan:
	.incbin "baserom.dol", 0x2F10A0, 0x8
.global gx
gx:
	.incbin "baserom.dol", 0x2F10A8, 0x8
.global tbl1$208
tbl1$208:
	.incbin "baserom.dol", 0x2F10B0, 0x4
.global tbl2$209
tbl2$209:
	.incbin "baserom.dol", 0x2F10B4, 0x4
.global tbl3$210
tbl3$210:
	.incbin "baserom.dol", 0x2F10B8, 0x8
.global GXTexMode0Ids
GXTexMode0Ids:
	.incbin "baserom.dol", 0x2F10C0, 0x8
.global GXTexMode1Ids
GXTexMode1Ids:
	.incbin "baserom.dol", 0x2F10C8, 0x8
.global GXTexImage0Ids
GXTexImage0Ids:
	.incbin "baserom.dol", 0x2F10D0, 0x8
.global GXTexImage1Ids
GXTexImage1Ids:
	.incbin "baserom.dol", 0x2F10D8, 0x8
.global GXTexImage2Ids
GXTexImage2Ids:
	.incbin "baserom.dol", 0x2F10E0, 0x8
.global GXTexImage3Ids
GXTexImage3Ids:
	.incbin "baserom.dol", 0x2F10E8, 0x8
.global GXTexTlutIds
GXTexTlutIds:
	.incbin "baserom.dol", 0x2F10F0, 0x8
.global GX2HWFiltConv
GX2HWFiltConv:
	.incbin "baserom.dol", 0x2F10F8, 0x8
.global fragmentID
fragmentID:
	.incbin "baserom.dol", 0x2F1100, 0x8
.global $$2159
$$2159:
	.incbin "baserom.dol", 0x2F1108, 0x8
.global $$2wstringBase0
$$2wstringBase0:
	.incbin "baserom.dol", 0x2F1110, 0x8
.global next
next:
	.incbin "baserom.dol", 0x2F1118, 0x8
.global K1
K1:
	.incbin "baserom.dol", 0x2F1120, 0x4
.global K2
K2:
	.incbin "baserom.dol", 0x2F1124, 0x4
.global exi
exi:
	.incbin "baserom.dol", 0x2F1128, 0x8
.global pucEXI2InputPending
pucEXI2InputPending:
	.incbin "baserom.dol", 0x2F1130, 0x8
.global SendCount
SendCount:
	.incbin "baserom.dol", 0x2F1138, 0x8
