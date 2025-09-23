

function setCustomData_po_qq506807329new_gunner_24371(obj ,  receiveData)

{

if (!obj)

return;

local JsValue1 =  receiveData.readDword();

obj.getVar("skill").clear_vector();

obj.getVar("skill").push_vector(JsValue1);

switch (JsValue1)

{

case SKILL_MSC7:

local JsValue2 =  receiveData.readDword();

local JsValue3 =  receiveData.readDword();

local JsValue4 =  receiveData.readDword();

local JsValue5 =  receiveData.readDword();

local JsValue6 =  sq_getRandom(0 , receiveData.readDword());

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  0);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue2);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue3);

JsValue8.push_vector(JsValue4);

JsValue8.push_vector(JsValue6);

obj.sq_SetMoveParticle("particle/msc7.ptl" ,  0.0 ,  0.0);

sq_SetSpeedToMoveParticle(obj , 0 , JsValue5);

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case SKILL_SEISMICWAVE:

local JsValue10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(JsValue10);

if(JsValue10 ==  1)

{

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(JsValue10 ==  2)

{

local JsValue12 =  receiveData.readDword();

local JsValue13 =  receiveData.readDword();

local JsValue14 =  receiveData.readDword();

local JsValue15 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwaveground.ani");

JsValue16.setImageRateFromOriginal(1.20833333 ,  1.20833333);

JsValue16.setAutoLayerWorkAnimationAddSizeRate(1.20833333);

sq_SetAttackBoundingBoxSizeRate(JsValue16 ,  1.20833333 ,  1.20833333 ,  1.0);

obj.setCurrentAnimation(JsValue16);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  4);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue12);

sq_SetChangeStatusIntoAttackInfo(JsValue7 ,  0 ,  ACTIVESTATUS_STUN , JsValue13 , JsValue14 , JsValue15);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

}

else if(JsValue10 ==  3)

{

local JsValue12 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwaveground.ani");

JsValue16.setImageRateFromOriginal(0.625 ,  0.625);

JsValue16.setAutoLayerWorkAnimationAddSizeRate(0.625);

sq_SetAttackBoundingBoxSizeRate(JsValue16 ,  0.625 ,  0.625 ,  1.0);

obj.setCurrentAnimation(JsValue16);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  4);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue12);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

}

break;

case SKILL_PLASMABOOST:

local JsValue21 =  receiveData.readDword();

local JsValue22 =  receiveData.readDword();

local JsValue23 =  receiveData.readDword();

obj.getVar().clear_vector();

obj.getVar().push_vector(JsValue23);

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/plasmaboost/plasmaboostlaserloop_00.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  6);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue22);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

local JsValue26 =  obj.getParent();

sq_moveWithParent(JsValue26 ,  obj);

obj.getVar().setBool(0 , true);

obj.setTimeEvent(0 ,  JsValue21 ,  0 ,  true);

obj.sq_PlaySound("P_ICECANNON_SHOT");

break;

case SKILL_BURSTERBEAMNEW:

local JsValue10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(JsValue10);

if(JsValue10 ==  1)

{

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndatkaeff_laser.ani");

obj.setCurrentAnimation(JsValue16);

}

else if(JsValue10 ==  2)

{

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndfloorexpla_floordodge_a.ani");

obj.setCurrentAnimation(JsValue16);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

}

else if(JsValue10 ==  3)

{

local JsValue30 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bursterbeamnew/bb2ndfloorexplb_light_a.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  7);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue30);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

}

break;

case SKILL_DEADLYAPPROACH:

local JsValue2 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/deadlyapproach/shooteffect_1.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  8);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue2);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

break;

case SKILL_WIPEOUT:

local JsValue10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(JsValue10);

if(JsValue10==  1)

{

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/wipeout/wipeoutattack01_12.ani");

obj.setCurrentAnimation(JsValue16);

sq_SetCurrentAttackInfoFromCustomIndex(obj ,  9);

}

else if(JsValue10== 2)

{

local JsValue2 =  receiveData.readDword();

local JsValue39 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/wipeout/wipeoutattack02_hitf_02.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  10);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue2);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

local JsValue42 =  JsValue16.getDelaySum(0 ,  7);

obj.setTimeEvent(0 ,  JsValue42 / JsValue39 ,  JsValue39 ,  true);

}

break;

case SKILL_FASTDRAW:

local JsValue43 =  receiveData.readDword();

local JsValue44 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/fastdraw/fastdraw_bullet_normal.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  11);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue44);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

if(JsValue43==  1)

{

local JsValue47 =  null;

local JsValue48 =  obj.sq_FindFirstTarget(150 ,  600 ,  50 ,  110);

if(JsValue48)

{

local JsValue49 =  sq_GetShootingHorizonAngle(JsValue48 ,  obj.getYPos() ,  0 ,  360 ,  abs(JsValue48.getXPos() - obj.getXPos()));

obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl" ,  JsValue49 ,  (0-sq_getRandom(0 , 2)).tofloat());

}

else

obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl" ,  (0-sq_getRandom(0 , 2)).tofloat() ,  (0-sq_getRandom(0 , 2)).tofloat());

}

else

{

obj.sq_SetMoveParticle("particle/fastdrawbulletdown.ptl" ,  (0-sq_getRandom(0 , 5)).tofloat() ,  (0-sq_getRandom(15 , 25)).tofloat());

sq_SetCustomRotate(obj ,  -0.349064);

}

obj.getVar().clear_vector();

obj.getVar().push_vector(JsValue43);

break;

case SKILL_SEVENTHFLOW:

local JsValue50 =  receiveData.readDword();

local JsValue51 =  receiveData.readDword();

local JsValue52 =  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seventhflow/seventhflow";

local JsValue53 =  12;

switch(JsValue50)

{

case SUB_STATE_SEVENTHFLOW_1: JsValue52+= "1shoot.ani"; obj.setTimeEvent(0 ,  30 ,  1 ,  false); break;

case SUB_STATE_SEVENTHFLOW_2: JsValue52+= "2shoot.ani"; obj.setTimeEvent(0 ,  30 ,  1 ,  false); break;

case SUB_STATE_SEVENTHFLOW_3: JsValue52+= "3shoot.ani"; obj.setTimeEvent(0 ,  30 ,  1 ,  false); break;

case SUB_STATE_SEVENTHFLOW_4: JsValue52+= "4shoot.ani"; obj.setTimeEvent(0 ,  30 ,  1 ,  false); break;

case SUB_STATE_SEVENTHFLOW_5: JsValue52+= "5shoot.ani"; break;

case SUB_STATE_SEVENTHFLOW_6: JsValue52+= "6shoot.ani"; break;

case SUB_STATE_SEVENTHFLOW_7: JsValue52+="last.ani"; JsValue53= 13; break;

}

local JsValue16 =  sq_CreateAnimation("" , JsValue52);

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  JsValue53);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue51);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

break;

case SKILL_PISTOLCARBINE:

local JsValue44 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/bulletpistolcarbine.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue58 =  -1;

switch (sq_getRandom(1 , 3))

{

case 1: JsValue58=  ENUM_ELEMENT_FIRE; break;

case 2: JsValue58=  ENUM_ELEMENT_WATER; break;

case 3: JsValue58=  ENUM_ELEMENT_LIGHT; break;

}

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  14);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue44);

JsValue7.setElement(JsValue58);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

local JsValue47 =  null;

local JsValue48 =  obj.sq_FindFirstTarget(150 ,  600 ,  50 ,  110);

if(JsValue48)

{

local JsValue49 =  sq_GetShootingHorizonAngle(JsValue48 ,  obj.getYPos() ,  0 ,  360 ,  abs(JsValue48.getXPos() - obj.getXPos()));

obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl" ,  JsValue49 ,  (0-sq_getRandom(0 , 2)).tofloat());

}

else

obj.sq_SetMoveParticle("particle/fastdrawbulletup.ptl" ,  (0-sq_getRandom(0 , 2)).tofloat() ,  (0-sq_getRandom(0 , 2)).tofloat());

break;

case SKILL_GRAVITYGRENADE:

local JsValue63 =  receiveData.readDword();

local JsValue64 =  receiveData.readDword();

local JsValue2 =  receiveData.readDword();

local JsValue3 =  receiveData.readDword();

local JsValue67 =  receiveData.readDword();

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue63);

JsValue8.push_vector(JsValue64);

JsValue8.push_vector(JsValue2);

JsValue8.push_vector(JsValue3);

JsValue8.push_vector(JsValue67);

local JsValue69 =  JsValue67.tofloat() / 100.0;

local JsValue70 =  (180.0*JsValue69).tointeger();

local JsValue71 =  (60.0*JsValue69).tointeger();

JsValue8.push_vector(JsValue70);

JsValue8.push_vector(JsValue71);

if(receiveData.readDword()== 1)

obj.sq_SetMoveParticle("particle/grenadecenter.ptl" ,  0.0 ,  0.0);

else

obj.sq_SetMoveParticle("particle/grenadedown.ptl" ,  0.0 ,  0.0);

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case SKILL_DANGERCLOSE:

local JsValue10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(JsValue10);

if(JsValue10==  1)

{

local JsValue2 =  receiveData.readDword();

local JsValue75 =  receiveData.readDword();

local JsValue63 =  receiveData.readDword();

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue2);

JsValue8.push_vector(JsValue75);

JsValue8.push_vector(JsValue63);

JsValue8.push_vector(obj.getXPos());

JsValue8.push_vector(obj.getYPos());

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(JsValue10== 2)

{

local JsValue2 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangershell.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue53 =  sq_getRandom(17 , 20);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  JsValue53);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue2);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

local JsValue26 =  obj.getParent();

local JsValue84 =  obj.getXPos();

local JsValue70 =  JsValue26.getXPos();

local JsValue71 =  JsValue26.getYPos();

JsValue70 =  sq_getRandom(JsValue70-50 , JsValue70+50);

JsValue71 =  sq_getRandom(JsValue71-25 , JsValue71+25);

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue84);

JsValue8.push_vector(obj.getYPos());

JsValue8.push_vector(JsValue70);

JsValue8.push_vector(JsValue71);

JsValue8.push_vector(JsValue53);

local JsValue88 =  45.0*(sq_Abs(JsValue84 - JsValue70).tofloat() / 800.0)*0.0174532;

sq_SetCustomRotate(obj ,  JsValue88);

JsValue8.push_vector((JsValue88*10000000.0).tointeger());

obj.getVar().setBool(0 , false);

obj.getVar().setBool(1 , false);

obj.setTimeEvent(0 ,  100 ,  0 ,  false);

obj.setTimeEvent(1 ,  20 ,  0 ,  false);

}

break;

case SKILL_G38ARG:

local JsValue10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(JsValue10);

if(JsValue10==  1)

{

local JsValue90 =  receiveData.readDword();

local JsValue63 =  receiveData.readDword();

local JsValue92 =  receiveData.readDword();

local JsValue93 =  receiveData.readDword();

local JsValue94 =  receiveData.readDword();

local JsValue95 =  receiveData.readDword();

local JsValue96 =  receiveData.readDword();

local JsValue97 =  receiveData.readDword();

local JsValue98 =  receiveData.readDword();

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue63);

JsValue8.push_vector(JsValue92);

JsValue8.push_vector(JsValue93);

JsValue8.push_vector(JsValue94);

JsValue8.push_vector(JsValue95);

JsValue8.push_vector(JsValue96);

JsValue8.push_vector(JsValue97);

JsValue8.push_vector(JsValue98);

if(JsValue90== 1)

obj.sq_SetMoveParticle("particle/grenadecenter.ptl" ,  0.0 ,  0.0);

else

obj.sq_SetMoveParticle("particle/grenadedown.ptl" ,  0.0 ,  0.0);

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(JsValue10== 2)

{

local JsValue58 =  receiveData.readDword();

local JsValue2 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/shot01.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  21);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue2);

JsValue7.setElement(JsValue58);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

}

break;

case SKILL_SUPERNOVA:

local JsValue10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(JsValue10);

if(JsValue10==  1)

{

local JsValue98 =  receiveData.readDword();

local JsValue107 =  receiveData.readDword();

local JsValue108 =  receiveData.readDword();

local JsValue109 =  receiveData.readDword();

local JsValue110 =  receiveData.readDword();

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue98);

JsValue8.push_vector(JsValue107);

JsValue8.push_vector(JsValue108);

JsValue8.push_vector(JsValue109);

JsValue8.push_vector(JsValue110);

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(JsValue10== 2)

{

local JsValue98 =  receiveData.readDword();

obj.getVar().clear_vector();

obj.getVar().push_vector(JsValue98);

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/floorloop/floorloop_floornormal.ani");

local JsValue115 =  JsValue98.tofloat() / 350.0;

JsValue16.setImageRateFromOriginal(JsValue115 ,  JsValue115);

JsValue16.setAutoLayerWorkAnimationAddSizeRate(JsValue115);

obj.setCurrentAnimation(JsValue16);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

obj.setTimeEvent(3 ,  2000 ,  1 ,  false);

}

break;

case SKILL_DIMENSIONRUNNER:

local JsValue10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(JsValue10);

switch(JsValue10)

{

case 1:

local JsValue117 =  receiveData.readDword();

local JsValue118 =  receiveData.readDword();

local JsValue119 =  receiveData.readDword();

local JsValue98 =  receiveData.readDword();

local JsValue121 =  receiveData.readDword();

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue117);

JsValue8.push_vector(JsValue118);

JsValue8.push_vector(JsValue119);

JsValue8.push_vector(JsValue98);

JsValue8.push_vector(JsValue121);

obj.getVar("atkcount").clear_vector();

obj.getVar("atkcount").push_vector(0);

obj.getVar("atkcount").push_vector(0);

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case 2:

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case 3:

local JsValue118 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/attackareadummy.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  25);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue118);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

local JsValue128 =  obj.getObjectManager();

local JsValue129 =  JsValue128.getCollisionObjectNumber();

for(local i= 0;i<JsValue129;i++)

{

local JsValue130 =  JsValue128.getCollisionObject(i);

if(!JsValue130 || !obj.isEnemy(JsValue130)) continue;

sq_AddHitObject(obj ,  JsValue130);

}

obj.setTimeEvent(0 ,  50 ,  0 ,  false);

break;

}

break;

case SKILL_HELLMARCH:

local JsValue10 =  receiveData.readDword();

obj.getVar("subtype").clear_vector();

obj.getVar("subtype").push_vector(JsValue10);

switch(JsValue10)

{

case 1:

local JsValue132 =  receiveData.readDword();

local JsValue133 =  receiveData.readDword();

local JsValue134 =  receiveData.readDword();

local JsValue30 =  receiveData.readDword();

local JsValue136 =  receiveData.readDword();

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue132);

JsValue8.push_vector(JsValue133);

JsValue8.push_vector(JsValue134);

JsValue8.push_vector(JsValue30);

JsValue8.push_vector(JsValue136);

local JsValue9 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue9);

sq_IntVectorPush(JsValue9 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_0 ,  JsValue9 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case 2:

local JsValue30 =  receiveData.readDword();

local JsValue136 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/hellmarchdummyexplosion.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  28);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue30);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

obj.setTimeEvent(5 ,  JsValue16.getDelaySum(false) / JsValue136 ,  JsValue136 ,  false);

break;

case 3:

local JsValue133 =  receiveData.readDword();

local JsValue134 =  receiveData.readDword();

local JsValue16 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/hellmarchdummy.ani");

obj.setCurrentAnimation(JsValue16);

local JsValue7 =  sq_GetCustomAttackInfo(obj ,  27);

sq_SetCurrentAttackBonusRate(JsValue7 ,  JsValue133);

sq_SetCurrentAttackInfo(obj ,  JsValue7);

obj.getVar().clear_vector();

obj.getVar().push_vector(JsValue134);

break;

}

break;

default:

break;

}

}

function setState_po_qq506807329new_gunner_24371(obj ,  state ,  datas)

{

	if(!obj) return;

local JsValue1 =  obj.getVar("skill").get_vector(0);

switch (JsValue1)

{

case SKILL_MSC7:

obj.getVar("state").clear_vector(); 

obj.getVar("state").push_vector(state);

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/msc7/missile_01.ani");

obj.setCurrentAnimation(JsValue2);

obj.getVar("moveobj").clear_obj_vector();

break;

case PASSIVEOBJ_SUB_STATE_1:

obj.sq_RemoveMoveParticle();

obj.getVar().push_vector(obj.getXPos());

obj.getVar("time").clear_ct_vector();

obj.getVar("time").push_ct_vector();

local JsValue3 =  obj.getVar("time").get_ct_vector(0);

JsValue3.Reset();

JsValue3.Start(10000 , 0);

break;

case PASSIVEOBJ_SUB_STATE_2:

obj.sq_RemoveMoveParticle();

local JsValue4 =  obj.getVar("moveobj").get_obj_vector_size();

local JsValue5 =  obj.getVar("moveobj");

for(local i= 0;i<JsValue4;i++)

{

local JsValue6 =  JsValue5.get_obj_vector(i);

sq_moveWithParent(null ,  JsValue6);

}

local JsValue7 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/msc7/explosion_bottom.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

sq_setCurrentAxisPos(JsValue7 ,  2 ,  0);

local JsValue8 =  obj.getVar();

local JsValue9 =  JsValue8.get_vector(0);

local JsValue10 =  (JsValue8.get_vector(1)).tofloat() / 100.0;

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/msc7/explosion_08.ani");

JsValue2.setImageRateFromOriginal(JsValue10 ,  JsValue10);

JsValue2.setAutoLayerWorkAnimationAddSizeRate(JsValue10);

sq_SetAttackBoundingBoxSizeRate(JsValue2 ,  JsValue10 ,  JsValue10 ,  JsValue10);

obj.setCurrentAnimation(JsValue2);

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  1);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue9);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

break;

}

break;

case SKILL_SEISMICWAVE:

local JsValue13 =  obj.getVar("subtype").get_vector(0);

if(JsValue13==  1)

{

obj.getVar("state").clear_vector(); 

obj.getVar("state").push_vector(state);

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local JsValue2 =  sq_CreateAnimation("" , "character/gunner/effect/animation/seismicwave/casting/gunnercursor-dodge_start.ani");

obj.setCurrentAnimation(JsValue2);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

break;

case PASSIVEOBJ_SUB_STATE_1:

local JsValue2 =  sq_CreateAnimation("" , "character/gunner/effect/animation/seismicwave/casting/gunnercursor-dodge_end.ani");

obj.setCurrentAnimation(JsValue2);

local JsValue16 =  sq_GetCNRDObjectToSQRCharacter(obj.getParent());

local JsValue17 =  sq_GetSkillLevel(JsValue16 ,  SKILL_SEISMICWAVE);

local JsValue18 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  2 ,  JsValue17);

local JsValue19 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  3 ,  JsValue17);

local JsValue20 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  4 ,  JsValue17);

local JsValue21 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  5 ,  JsValue17);

local JsValue22 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  6 ,  JsValue17);

local JsValue23 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  7 ,  JsValue17);

local JsValue24 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  8 ,  JsValue17);

local JsValue25 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  9 ,  JsValue17);

local JsValue26 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  10 ,  JsValue17);

local JsValue27 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  11 ,  JsValue17);

local JsValue28 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  12 ,  JsValue17);

local JsValue29 =  sq_GetLevelData(JsValue16 , SKILL_SEISMICWAVE ,  13 ,  JsValue17);

obj.getVar().clear_vector();

local JsValue8 =  obj.getVar();

JsValue8.push_vector(JsValue18);

JsValue8.push_vector(JsValue19);

JsValue8.push_vector(JsValue20);

JsValue8.push_vector(JsValue21);

JsValue8.push_vector(JsValue22);

JsValue8.push_vector(JsValue23);

JsValue8.push_vector(JsValue24);

JsValue8.push_vector(JsValue25);

JsValue8.push_vector(JsValue26);

JsValue8.push_vector(JsValue27);

JsValue8.push_vector(JsValue28);

JsValue8.push_vector(JsValue29);

break;

case PASSIVEOBJ_SUB_STATE_2:

sq_setCurrentAxisPos(obj ,  2 ,  900);

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/drop/drop_seismicwave.ani");

obj.setCurrentAnimation(JsValue2);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_NORMAL);

local JsValue8 =  obj.getVar();

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  2);

local JsValue18 =  JsValue8.get_vector(0);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue18);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

break;

case PASSIVEOBJ_SUB_STATE_3:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/start/start_seismicwave.ani");

obj.setCurrentAnimation(JsValue2);

sq_SetMyShake(obj , 4 , 300);

sq_flashScreen(obj ,  0 ,  40 ,  200 ,  204 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

local JsValue8 =  obj.getVar();

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  3);

local JsValue20 =  JsValue8.get_vector(2);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue20);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

local JsValue21 =  JsValue8.get_vector(3);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_SEISMICWAVE);

sq_BinaryWriteDword(3);

sq_BinaryWriteDword(JsValue21);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 , obj.getDirection());

break;

case PASSIVEOBJ_SUB_STATE_4:

local JsValue8 =  obj.getVar();

JsValue8.set_vector(4 , JsValue8.get_vector(4)-1);

local JsValue23 =  (JsValue8.get_vector(5)).tofloat();

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/loop/loop_seismicwave.ani");

JsValue2.setSpeedRate(JsValue23);

obj.setCurrentAnimation(JsValue2);

sq_SetMyShake(obj , 5 , 180);

sq_flashScreen(obj ,  0 ,  0 ,  120 ,  153 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_LINEARDODGE ,  ENUM_DRAWLAYER_BOTTOM);

local JsValue21 =  JsValue8.get_vector(3);

local JsValue24 =  JsValue8.get_vector(6);

local JsValue25 =  JsValue8.get_vector(7);

local JsValue26 =  JsValue8.get_vector(8);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_SEISMICWAVE);

sq_BinaryWriteDword(2);

sq_BinaryWriteDword(JsValue21);

sq_BinaryWriteDword(JsValue24);

sq_BinaryWriteDword(JsValue25);

sq_BinaryWriteDword(JsValue26);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 , obj.getDirection());

break;

case PASSIVEOBJ_SUB_STATE_5:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/seismicwave/end/end_exp_dodge.ani");

obj.setCurrentAnimation(JsValue2);

sq_SetMyShake(obj , 3 , 300);

local JsValue8 =  obj.getVar();

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  5);

local JsValue27 =  JsValue8.get_vector(9);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue27);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

break;

}

}

break;

case SKILL_GRAVITYGRENADE:

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_normal.ani");

obj.setCurrentAnimation(JsValue2);

break;

case PASSIVEOBJ_SUB_STATE_1:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_normal.ani");

local JsValue22 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/grenadegravity_grenade_dodge.ani");

JsValue2.addLayerAnimation(-1 , JsValue22 , true);

obj.setCurrentAnimation(JsValue2);

obj.setTimeEvent(0 ,  50 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_2:

local JsValue54 =  (obj.getVar().get_vector(4)).tofloat() / 100.0;

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_background.ani");

JsValue2.setImageRateFromOriginal(JsValue54 ,  JsValue54);

JsValue2.setAutoLayerWorkAnimationAddSizeRate(JsValue54);

obj.setCurrentAnimation(JsValue2);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local JsValue71=  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_front.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

local JsValue72=  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/01_start/grenadegravity_start_background01.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

local JsValue22 =  JsValue71.getCurrentAnimation();

local JsValue23 =  JsValue72.getCurrentAnimation();

JsValue22.setImageRateFromOriginal(JsValue54 ,  JsValue54);

JsValue23.setImageRateFromOriginal(JsValue54 ,  JsValue54);

break;

case PASSIVEOBJ_SUB_STATE_3:

local JsValue54 =  (obj.getVar().get_vector(4)).tofloat() / 100.0;

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/02_loop/grenadegravity_loop_background.ani");

JsValue2.setImageRateFromOriginal(JsValue54 ,  JsValue54);

JsValue2.setAutoLayerWorkAnimationAddSizeRate(JsValue54);

sq_SetAttackBoundingBoxSizeRate(JsValue2 ,  JsValue54 ,  JsValue54 ,  1.0);

obj.setCurrentAnimation(JsValue2);

local JsValue8 =  obj.getVar();

local JsValue63 =  JsValue8.get_vector(0);

local JsValue64 =  JsValue8.get_vector(1);

local JsValue65 =  JsValue8.get_vector(2);

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  15);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue65);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

obj.setTimeEvent(1 ,  JsValue64 ,  0 ,  false);

obj.setTimeEvent(2 ,  JsValue63 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_4:

obj.stopTimeEvent(1);

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_NORMAL);

local JsValue54 =  (obj.getVar().get_vector(4)).tofloat() / 100.0;

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/03_finish/grenadegravity_finish_front.ani");

JsValue2.setImageRateFromOriginal(JsValue54 ,  JsValue54);

JsValue2.setAutoLayerWorkAnimationAddSizeRate(JsValue54);

sq_SetAttackBoundingBoxSizeRate(JsValue2 ,  JsValue54 ,  JsValue54 ,  JsValue54);

obj.setCurrentAnimation(JsValue2);

local JsValue9 =  obj.getVar().get_vector(3);

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  16);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue9);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

local JsValue7 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/grenadegravity/03_finish/grenadegravity_finish_background.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

local JsValue22 =  JsValue7.getCurrentAnimation();

JsValue22.setImageRateFromOriginal(JsValue54 ,  JsValue54);

JsValue22.setAutoLayerWorkAnimationAddSizeRate(JsValue54);

break;

}

break;

case SKILL_DANGERCLOSE:

local JsValue13 =  obj.getVar("subtype").get_vector(0);

if(JsValue13==  1)

{

if(state== PASSIVEOBJ_SUB_STATE_0)

{

local JsValue2 =  sq_CreateAnimation("" , "character/gunner/effect/animation/dangerclose/dangerclose.ani");

obj.setCurrentAnimation(JsValue2);

}

else if(state== PASSIVEOBJ_SUB_STATE_1)

{

local JsValue75 =  obj.getVar().get_vector(3);

local JsValue76 =  obj.getXPos();

if(JsValue76<JsValue75)

sq_SetCurrentDirection(obj ,  ENUM_DIRECTION_LEFT);

else

sq_SetCurrentDirection(obj ,  ENUM_DIRECTION_RIGHT);

obj.setCurrentAnimation(null);

local JsValue63 =  obj.getVar().get_vector(2);

obj.setTimeEvent(0 ,  JsValue63 ,  0 ,  true);

}

}

break;

case SKILL_G38ARG:

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

obj.sq_PlaySound("G_38ARG_THROW");

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argthrow.ani");

obj.setCurrentAnimation(JsValue2);

local JsValue63 =  obj.getVar().get_vector(0);

obj.setTimeEvent(0 ,  JsValue63 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_1:

obj.setTimeEvent(1 ,  150 ,  1 ,  false);

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argmove.ani");

obj.setCurrentAnimation(JsValue2);

local JsValue81 =  null;

local JsValue82 =  -1;

local JsValue83 =  obj.getObjectManager();

local JsValue84 =  JsValue83.getCollisionObjectNumber();

for(local i= 0;i<JsValue84;i++)

{

local JsValue6 =  JsValue83.getCollisionObject(i);

if(!JsValue6 || !obj.isEnemy(JsValue6) || !JsValue6.isObjectType(OBJECTTYPE_ACTIVE)) continue;

JsValue6= sq_GetCNRDObjectToActiveObject(JsValue6);

if(JsValue6.isDead() || JsValue6.getState ==  STATE_DIE) continue;

local JsValue86 =  JsValue6.getHp();

if(JsValue86>JsValue82)

{

JsValue82= JsValue86;

JsValue81 =  JsValue6;

}

}

if(JsValue81!= null)

{

local JsValue87 =  obj.getXPos();

local JsValue88 =  obj.getYPos();

local JsValue76 =  JsValue81.getXPos();

if(JsValue87>JsValue76)

sq_SetCurrentDirection(obj ,  ENUM_DIRECTION_LEFT);

else

sq_SetCurrentDirection(obj ,  ENUM_DIRECTION_RIGHT);

local JsValue7 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/staydust01.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(JsValue7 ,  1 ,  JsValue88-1);

obj.getVar("move").setBool(0 , false);

obj.getVar("target").clear_obj_vector();

obj.getVar("target").push_obj_vector(JsValue81);

}

else

{

local JsValue91 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue91);

sq_IntVectorPush(JsValue91 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  JsValue91 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_2:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argnonattack.ani");

obj.setCurrentAnimation(JsValue2);

break;

case PASSIVEOBJ_SUB_STATE_3:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/g-38argattack.ani");

obj.setCurrentAnimation(JsValue2);

break;

case PASSIVEOBJ_SUB_STATE_4:

obj.sq_RemoveMoveParticle();

sq_moveWithParent(obj ,  obj);

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/g-38arg/explosion_08.ani");

obj.setCurrentAnimation(JsValue2);

local JsValue95 =  obj.getVar().get_vector(6);

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  22);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue95);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

sq_flashScreen(obj ,  0 ,  80 ,  0 ,  178 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_DARK ,  ENUM_DRAWLAYER_BOTTOM);

sq_flashScreen(obj ,  0 ,  0 ,  300 ,  102 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

break;

}

break;

case SKILL_SUPERNOVA:

local JsValue2 =  null;

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/bomb_bomb.ani");

obj.sq_SetMoveParticle("particle/supernova.ptl" ,  0.0 ,  0.0);

break;

case PASSIVEOBJ_SUB_STATE_1:

obj.sq_RemoveMoveParticle();

JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/start/explosionstart_hemisphere01.ani");

local JsValue98 =  obj.getVar().get_vector(1);

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  23);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue98);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

sq_SetMyShake(obj , 2 , 300);

break;

case PASSIVEOBJ_SUB_STATE_2:

JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/loop/explosionloop_hemisphere01.ani");

local JsValue8 =  obj.getVar();

local JsValue101 =  JsValue8.get_vector(2);

local JsValue102 =  JsValue8.get_vector(3);

local JsValue103 =  JsValue8.get_vector(4);

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  24);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue103);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

obj.setTimeEvent(0 ,  JsValue101 ,  1 ,  false);

obj.setTimeEvent(1 ,  JsValue102 ,  0 ,  false);

obj.setTimeEvent(2 ,  JsValue101 / 3*2 ,  1 ,  false);

obj.getVar("time").clear_vector();

obj.getVar("time").push_vector(JsValue101/3);

break;

case PASSIVEOBJ_SUB_STATE_3:

obj.stopTimeEvent(1);

JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/end/explosionend_hemisphere01.ani");

sq_SetMyShake(obj , 7 , 200);

sq_SetMyShake(obj , 8 , 300);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_SUPERNOVA);

sq_BinaryWriteDword(2);

sq_BinaryWriteDword(obj.getVar().get_vector(0));

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 , obj.getDirection());

break;

}

if(state!= PASSIVEOBJ_SUB_STATE_0)

{

local JsValue105 =  (obj.getVar().get_vector(0)).tofloat() / 350.0;

JsValue2.setImageRateFromOriginal(JsValue105 ,  JsValue105);

JsValue2.setAutoLayerWorkAnimationAddSizeRate(JsValue105);

sq_SetAttackBoundingBoxSizeRate(JsValue2 ,  JsValue105 ,  JsValue105 ,  JsValue105);

}

obj.setCurrentAnimation(JsValue2);

break;

case SKILL_DIMENSIONRUNNER:

local JsValue13 =  obj.getVar("subtype").get_vector(0);

if(JsValue13 ==  1)

{

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_BOTTOM);

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetloop_00.ani");

obj.setCurrentAnimation(JsValue2);

break;

case PASSIVEOBJ_SUB_STATE_1:

sq_ChangeDrawLayer(obj ,  ENUM_DRAWLAYER_NORMAL);

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerready_body.ani");

obj.setCurrentAnimation(JsValue2);

sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetend_00.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

break;

case PASSIVEOBJ_SUB_STATE_2:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfire_body.ani");

obj.setCurrentAnimation(JsValue2);

break;

case PASSIVEOBJ_SUB_STATE_3:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnersuicideready_body.ani");

obj.setCurrentAnimation(JsValue2);

break;

case PASSIVEOBJ_SUB_STATE_4:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnersuicide_body.ani");

obj.setCurrentAnimation(JsValue2);

local JsValue7 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suicidedust_00.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(JsValue7 ,  1 ,  obj.getYPos()-1);

break;

case PASSIVEOBJ_SUB_STATE_5:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosiona_body.ani");

obj.setCurrentAnimation(JsValue2);

break;

case PASSIVEOBJ_SUB_STATE_6:

local JsValue114 =  (obj.getVar().get_vector(4)).tofloat() / 100.0;

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosionb_04.ani");

JsValue2.setImageRateFromOriginal(JsValue114 ,  JsValue114);

JsValue2.setAutoLayerWorkAnimationAddSizeRate(JsValue114);

sq_SetAttackBoundingBoxSizeRate(JsValue2 ,  JsValue114 ,  JsValue114 ,  JsValue114);

obj.setCurrentAnimation(JsValue2);

local JsValue7 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/suisideexplosionground_00.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

JsValue7.getCurrentAnimation().setImageRateFromOriginal(JsValue114 ,  JsValue114);

sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/last/dimensionrunnerfinishhandeff_ground_normal.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

local JsValue72 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/last/dimensionrunnerfinishhand.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(JsValue72 ,  1 ,  obj.getYPos()-1);

local JsValue118 =  obj.getVar().get_vector(2);

local JsValue12 =  sq_GetCustomAttackInfo(obj ,  26);

sq_SetCurrentAttackBonusRate(JsValue12 ,  JsValue118);

sq_SetCurrentAttackInfo(obj ,  JsValue12);

sq_SetMyShake(obj , 5 , 320);

break;

}

}

else if(JsValue13== 2)

{

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missile_01.ani");

obj.setCurrentAnimation(JsValue2);

obj.sq_SetMoveParticle("particle/dimensionrunner.ptl" ,  0.0 ,  0.0);

sq_SetSpeedToMoveParticle(obj , 0 , 150);

sq_SetSpeedToMoveParticle(obj , 2 , sq_getRandom(250 , 700));

obj.getVar().clear_vector();

obj.getVar().push_vector(sq_getRandom(250 , 400));

obj.setTimeEvent(1 ,  50 ,  0 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_1:

obj.sq_RemoveMoveParticle();

obj.sq_SetMoveParticle("particle/dimensionrunner.ptl" ,  0.0 ,  0.0);

sq_SetSpeedToMoveParticle(obj , 0 , 800);

sq_SetSpeedToMoveParticle(obj , 1 , sq_getRandom(-400 , 400));

obj.getVar().clear_vector();

obj.getVar().push_vector(obj.getZPos());

break;

case PASSIVEOBJ_SUB_STATE_2:

obj.stopTimeEvent(1);

obj.sq_RemoveMoveParticle();

sq_SetCustomRotate(obj ,  0.0);

local JsValue2 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missileexplosion_04.ani");

obj.setCurrentAnimation(JsValue2);

sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missileexplosionground_00.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

sq_SetMyShake(obj , 3 , 80);

local JsValue122 =  sq_GetCNRDObjectToCollisionObject(obj.getParent());

JsValue122.getVar("atkcount").set_vector(0 , JsValue122.getVar("atkcount").get_vector(0)+1);

break;

}

}

break;

case SKILL_HELLMARCH:

local JsValue13 =  obj.getVar("subtype").get_vector(0);

if(JsValue13 ==  1)

{

switch (state)

{

case PASSIVEOBJ_SUB_STATE_0:

local JsValue124 =  obj.getXPos();

local JsValue125 =  obj.getYPos();

local JsValue126 =  obj.getDirection();

local JsValue71 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/back/gatestart_dot4.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

local JsValue72 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/front/gatestart_dot2.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

JsValue71.setCurrentPos(sq_GetDistancePos(JsValue124 ,  JsValue126 ,  -65) , JsValue125-110 , 0);

JsValue72.setCurrentPos(sq_GetDistancePos(JsValue124 ,  JsValue126 ,  -75) , JsValue125+70 , 0);

local JsValue73 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/back/gatestart_dot4.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

local JsValue74 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/front/gatestart_dot2.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

JsValue73.setCurrentPos(sq_GetDistancePos(JsValue124 ,  JsValue126 ,  845+65) , JsValue125-110 , 0);

JsValue74.setCurrentPos(sq_GetDistancePos(JsValue124 ,  JsValue126 ,  845+75) , JsValue125+70 , 0);

sq_SetCurrentDirection(JsValue73 ,  sq_GetOppositeDirection(JsValue126));

sq_SetCurrentDirection(JsValue74 ,  sq_GetOppositeDirection(JsValue126));

obj.getVar("aniobj").clear_obj_vector();

local JsValue131 =  obj.getVar("aniobj");

JsValue131.push_obj_vector(JsValue71);

JsValue131.push_obj_vector(JsValue72);

JsValue131.push_obj_vector(JsValue73);

JsValue131.push_obj_vector(JsValue74);

sq_setCurrentAxisPos(sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/laser_electric02.ani" ,  ENUM_DRAWLAYER_COVER ,  true) ,  1 ,  JsValue125+85);

local JsValue132 =  obj.getVar().get_vector(1);

local JsValue133 =  obj.getVar().get_vector(2);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_HELLMARCH);

sq_BinaryWriteDword(3);

sq_BinaryWriteDword(JsValue132);

sq_BinaryWriteDword(JsValue133);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 ,  obj.getDirection());

obj.setTimeEvent(0 ,  1040 ,  1 ,  false);

obj.setTimeEvent(1 ,  880 ,  1 ,  false);

obj.setTimeEvent(2 ,  1000 ,  1 ,  false);

obj.setTimeEvent(3 ,  1650 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_1:

local JsValue131 =  obj.getVar("aniobj");

local JsValue71 =  JsValue131.get_obj_vector(0);

local JsValue72 =  JsValue131.get_obj_vector(1);

local JsValue73 =  JsValue131.get_obj_vector(2);

local JsValue74 =  JsValue131.get_obj_vector(3);

JsValue71.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/back/gateloop_dot4.ani"));

JsValue72.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/front/gateloop_dot2.ani"));

JsValue73.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/back/gateloop_dot4.ani"));

JsValue74.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/front/gateloop_dot2.ani"));

local JsValue75 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hellmarch/gate/gateground_03.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

JsValue131.push_obj_vector(JsValue75);

break;

case PASSIVEOBJ_SUB_STATE_2:

local JsValue124 =  obj.getXPos();

local JsValue126 =  obj.getDirection();

local JsValue142 =  sq_GetDistancePos(JsValue124 ,  JsValue126 ,  -100);

local JsValue143 =  sq_GetDistancePos(JsValue124 ,  JsValue126 ,  845+100);

local JsValue71 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_appear_leftfootmove1.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

local JsValue72 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_appear_leftfootmove1.ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

JsValue71.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_leftfootmove.ani") , false);

JsValue72.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_leftfootmove.ani") , false);

sq_setCurrentAxisPos(JsValue71 ,  0 ,  JsValue142);

sq_setCurrentAxisPos(JsValue72 ,  0 ,  JsValue143);

sq_SetCurrentDirection(JsValue72 ,  sq_GetOppositeDirection(JsValue126));

obj.getVar("aniobj1").clear_obj_vector();

local JsValue146 =  obj.getVar("aniobj1");

JsValue146.push_obj_vector(JsValue71);

JsValue146.push_obj_vector(JsValue72);

obj.getVar("aniobj1").clear_vector();

obj.getVar("aniobj1").push_vector(JsValue142);

obj.getVar("aniobj1").push_vector(JsValue143);

obj.getVar("clarity").clear_vector();

obj.getVar("clarity").push_vector(0);

obj.getVar("direction").clear_vector();

obj.getVar("direction").push_vector(1);

obj.getVar("direction").push_vector(1);

obj.getVar("aniobj2").clear_obj_vector();

obj.setTimeEvent(4 ,  100 ,  1 ,  false);

obj.getVar().set_vector(0 , obj.getVar().get_vector(0)-1);

break;

case PASSIVEOBJ_SUB_STATE_3:

local JsValue147 =  obj.getVar().get_vector(0);

if(JsValue147 <= 0)

{

local JsValue148 =  obj.getVar("aniobj");

local JsValue149 =  JsValue148.get_obj_vector(0);

local JsValue150 =  JsValue148.get_obj_vector(1);

local JsValue151 =  JsValue148.get_obj_vector(2);

local JsValue152 =  JsValue148.get_obj_vector(3);

JsValue149.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/back/gateend_dot4.ani"));

JsValue150.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/front/gateend_dot2.ani"));

JsValue151.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/back/gateend_dot4.ani"));

JsValue152.setCurrentAnimation(sq_CreateAnimation("" , "character/gunner/effect/animation/hellmarch/gate/front/gateend_dot2.ani"));

local JsValue91 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue91);

sq_IntVectorPush(JsValue91 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  JsValue91 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else

obj.getVar().set_vector(0 , JsValue147-1);

local JsValue124 =  obj.getXPos();

local JsValue125 =  obj.getYPos();

local JsValue126 =  obj.getDirection();

local JsValue157 =  sq_GetOppositeDirection(JsValue126);

local JsValue158 =  sq_GetDistancePos(JsValue124 ,  JsValue126 ,  -100+30*3);

local JsValue159 =  sq_GetDistancePos(JsValue124 ,  JsValue126 ,  845+100-30*3);

local JsValue160 =  JsValue125-20*3;

local JsValue1311 =  obj.getVar("aniobj1");

local JsValue7_Red =  JsValue1311.get_obj_vector(0);

local JsValue7_Blue =  JsValue1311.get_obj_vector(1);

local JsValue164 =  obj.getVar("direction").get_vector(0);

local JsValue165 =  "";

if(JsValue164==  1)

{

JsValue165= "right";

obj.getVar("direction").set_vector(0 , 2);

}

else if(JsValue164== 2)

{

JsValue165= "left";

obj.getVar("direction").set_vector(0 , 1);

}

local JsValue166 =  obj.getVar("direction").get_vector(1);

local JsValue167 =  "";

if(JsValue166==1||JsValue166== 4)

JsValue167= "1";

else if(JsValue166==2 || JsValue166== 3)

JsValue167= "2";

obj.getVar("direction").set_vector(1 , JsValue166+1);

JsValue7_Red.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/LeaderRed/leader_appear_"+JsValue165+"footmove"+JsValue167+".ani"));

JsValue7_Blue.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_appear_"+JsValue165+"footmove"+JsValue167+".ani"));

JsValue7_Red.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_"+JsValue165+"footmove.ani") , false);

JsValue7_Blue.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_"+JsValue165+"footmove.ani") , false);

obj.getVar("aniobj1").clear_vector();

obj.getVar("aniobj1").push_vector(JsValue7_Red.getXPos());

obj.getVar("aniobj1").push_vector(JsValue7_Blue.getXPos());

local JsValue1312 =  obj.getVar("aniobj2");

local JsValue169 =  JsValue1312.get_obj_vector_size();

for(local i= 0;i<JsValue169;i++)

{

local JsValue170 =  JsValue1312.get_obj_vector(i);

JsValue170.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_"+JsValue165+"footmove"+JsValue167+".ani"));

JsValue170.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_"+JsValue165+"footmove.ani") , false);

}

if(JsValue169<6*2*3)

for(local i= 0;i<7;i++)

{

if(i== 3) continue;

local JsValue71 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_"+JsValue165+"footmove"+JsValue167+".ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

local JsValue72 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_appear_"+JsValue165+"footmove"+JsValue167+".ani" ,  ENUM_DRAWLAYER_NORMAL ,  false);

JsValue71.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_"+JsValue165+"footmove.ani") , false);

JsValue72.getCurrentAnimation().addLayerAnimation(-1 , sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_"+JsValue165+"footmove.ani") , false);

local JsValue173 =  JsValue160+20*i;

JsValue71.setCurrentPos(sq_GetDistancePos(JsValue158 ,  JsValue126 ,  -30*i) , JsValue173 , 0);

JsValue72.setCurrentPos(sq_GetDistancePos(JsValue159 ,  JsValue126 ,  30*i) , JsValue173 , 0);

sq_SetCurrentDirection(JsValue72 ,  JsValue157);

sq_moveWithParent(JsValue7_Red ,  JsValue71);

sq_moveWithParent(JsValue7_Blue ,  JsValue72);

JsValue1312.push_obj_vector(JsValue71);

JsValue1312.push_obj_vector(JsValue72);

}

local JsValue174 =  obj.getVar("clarity");

local JsValue175 =  JsValue174.size_vector();

for(local i= 0;i<JsValue175;i++)

{

local JsValue176 =  JsValue174.get_vector(i);

JsValue174.set_vector(i , JsValue176+63);

}

if(JsValue175<4)

JsValue174.push_vector(0);

obj.setTimeEvent(4 ,  100 ,  1 ,  false);

break;

case PASSIVEOBJ_SUB_STATE_4:

local JsValue1311 =  obj.getVar("aniobj1");

local JsValue7_Red =  JsValue1311.get_obj_vector(0);

local JsValue7_Blue =  JsValue1311.get_obj_vector(1);

JsValue7_Red.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_sir.ani"));

JsValue7_Blue.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_sir.ani"));

local JsValue1312 =  obj.getVar("aniobj2");

local JsValue169 =  JsValue1312.get_obj_vector_size();

for(local i= 0;i<JsValue169;i++)

{

local JsValue170 =  JsValue1312.get_obj_vector(i);

JsValue170.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_sir.ani"));

}

local JsValue174 =  obj.getVar("clarity");

local JsValue175 =  JsValue174.size_vector();

for(local i= 0;i<JsValue175;i++)

{

local JsValue176 =  JsValue174.get_vector(i);

JsValue174.set_vector(i , JsValue176+63);

}

break;

case PASSIVEOBJ_SUB_STATE_5:

local JsValue1311 =  obj.getVar("aniobj1");

local JsValue7_Red =  JsValue1311.get_obj_vector(0);

local JsValue7_Blue =  JsValue1311.get_obj_vector(1);

JsValue7_Red.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderred/leader_readytoexplosion.ani"));

JsValue7_Blue.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/leaderblue/leader_readytoexplosion.ani"));

local JsValue1312 =  obj.getVar("aniobj2");

local JsValue169 =  JsValue1312.get_obj_vector_size();

for(local i= 0;i<JsValue169;i++)

{

local JsValue170 =  JsValue1312.get_obj_vector(i);

JsValue170.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/soldier/soldier_readytoexplosion.ani"));

}

break;

case PASSIVEOBJ_SUB_STATE_6:

local JsValue1312 =  obj.getVar("aniobj2");

local JsValue169 =  JsValue1312.get_obj_vector_size();

for(local i= 0;i<JsValue169;i++)

{

local JsValue170 =  JsValue1312.get_obj_vector(i);

JsValue170.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani"));

}

local JsValue1311 =  obj.getVar("aniobj1");

local JsValue7_Red =  JsValue1311.get_obj_vector(0);

local JsValue7_Blue =  JsValue1311.get_obj_vector(1);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  JsValue7_Red ,  sq_GetDistancePos(0 ,  sq_GetDirection(JsValue7_Red) ,  -100) ,  -60 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  JsValue7_Blue ,  sq_GetDistancePos(0 ,  sq_GetDirection(JsValue7_Blue) ,  -100) ,  -60 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  JsValue7_Red ,  sq_GetDistancePos(0 ,  sq_GetDirection(JsValue7_Red) ,  -180) ,  0 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  JsValue7_Blue ,  sq_GetDistancePos(0 ,  sq_GetDirection(JsValue7_Blue) ,  -180) ,  0 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  JsValue7_Red ,  sq_GetDistancePos(0 ,  sq_GetDirection(JsValue7_Red) ,  -280) ,  60 ,  120 ,  true ,  100 ,  0 ,  2);

sq_CreateParticle("passiveobject/script_sqr_nut_qq506807329/gunner/particle/hellmarchexplosion.ptl" ,  JsValue7_Blue ,  sq_GetDistancePos(0 ,  sq_GetDirection(JsValue7_Blue) ,  -280) ,  60 ,  120 ,  true ,  100 ,  0 ,  2);

local JsValue27 =  obj.getVar().get_vector(3);

local JsValue199 =  obj.getVar().get_vector(4);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_HELLMARCH);

sq_BinaryWriteDword(2);

sq_BinaryWriteDword(JsValue27);

sq_BinaryWriteDword(JsValue199);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  0 ,  0 ,  0 ,  obj.getDirection());

sq_SetMyShake(obj , 5 , 300);

break;

case PASSIVEOBJ_SUB_STATE_7:

local JsValue1311 =  obj.getVar("aniobj1");

local JsValue7_Red =  JsValue1311.get_obj_vector(0);

local JsValue7_Blue =  JsValue1311.get_obj_vector(1);

JsValue7_Red.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani"));

JsValue7_Blue.setCurrentAnimation(sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/hellmarch/bombnew/explosion_04.ani"));

sq_SetMyShake(obj , 5 , 300);

break;

case PASSIVEOBJ_SUB_STATE_8:

local JsValue148 =  obj.getVar("aniobj");

local JsValue204 =  JsValue148.get_obj_vector(0);

if(JsValue204)

JsValue204.setValid(false);

local JsValue1311 =  obj.getVar("aniobj1");

local JsValue7_Red =  JsValue1311.get_obj_vector(0);

local JsValue7_Blue =  JsValue1311.get_obj_vector(1);

if(JsValue7_Red)

JsValue7_Red.setValid(false);

if(JsValue7_Blue)

JsValue7_Blue.setValid(false);

local JsValue1312 =  obj.getVar("aniobj2");

local JsValue169 =  JsValue1312.get_obj_vector_size();

for(local i= 0;i<JsValue169;i++)

{

local JsValue170 =  JsValue1312.get_obj_vector(i);

if(JsValue170)

JsValue170.setValid(false);

}

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

break;

}

}

function procAppend_po_qq506807329new_gunner_24371(obj)

{

	if(!obj) return;

if(!obj.isMyControlObject()) return;

local JsValue1 =  obj.getVar("skill").get_vector(0);

switch (JsValue1)

{

case SKILL_MSC7:

local JsValue2 =  obj.getVar("state").get_vector(0);

if(JsValue2!= PASSIVEOBJ_SUB_STATE_2)

{

local JsValue3 =  -1;

if(JsValue2== PASSIVEOBJ_SUB_STATE_1)

{

local JsValue4 =  obj.getVar("time").get_ct_vector(0).Get();

local JsValue5 =  200;

if(JsValue4>JsValue5)

{

obj.getVar("time").clear_ct_vector();

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

local JsValue7 =  obj.getVar().get_vector(3);

local JsValue8 =  obj.getVar().get_vector(2);

local JsValue9 =  sq_GetUniformVelocity(0 ,  JsValue8 ,  JsValue4 ,  JsValue5);

JsValue3 =  sq_GetDistancePos(JsValue7 ,  obj.getDirection() ,  JsValue9);

}

local JsValue10 =  obj.getParent();

local JsValue11 =  sq_GetCNRDObjectToSQRCharacter(JsValue10);

if(JsValue3 == -1)

{

if(!JsValue11.isMovablePos(sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  100) ,  obj.getYPos()))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

}

else

{

if(!JsValue11.isMovablePos(sq_GetDistancePos(JsValue3 ,  obj.getDirection() ,  100) ,  obj.getYPos()))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

else

sq_setCurrentAxisPos(obj ,  0 ,  JsValue3);

}

}

break;

case SKILL_SEISMICWAVE:

local JsValue14 =  obj.getVar("subtype").get_vector(0);

if(JsValue14==  1)

{

local JsValue2 =  obj.getVar("state").get_vector(0); 

if(JsValue2== PASSIVEOBJ_SUB_STATE_0)

{

local JsValue11 =  sq_GetCNRDObjectToSQRCharacter(obj.getParent());

if(JsValue11.sq_GetState()!= STATE_SEISMICWAVE)

sq_SendDestroyPacketPassiveObject(obj);

}

else if(JsValue2== PASSIVEOBJ_SUB_STATE_2)

{

local JsValue17 =  obj.getCurrentAnimation();

local JsValue4 =  sq_GetCurrentTime(JsValue17);

local JsValue5 =  200;

local JsValue20 =  900; 

local JsValue21 =  0;

local JsValue9 =  sq_GetUniformVelocity(JsValue20 ,  JsValue21 ,  JsValue4 ,  JsValue5);

sq_setCurrentAxisPos(obj ,  2 ,  JsValue9);

if(JsValue9== 0)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

else if(JsValue2>PASSIVEOBJ_SUB_STATE_2 && JsValue2<PASSIVEOBJ_SUB_STATE_5)

{

local JsValue24 =  obj.getVar();

local JsValue25 =  JsValue24.get_vector(10);

local JsValue26 =  JsValue24.get_vector(11);

setRangeObjectXPos(obj , JsValue25 , ENUM_DIRECTION_NEUTRAL , 0 , 300 , 0 , JsValue26);

}

}

break;

case SKILL_PLASMABOOST:

if(obj.getVar().getBool(0))

if(obj.sq_GetParentState()!= STATE_PLASMABOOST || obj.sq_GetParentSkillSubState()>SUB_STATE_PLASMABOOST_1)

{

obj.getVar().setBool(0 , false);

sq_moveWithParent(obj , obj);

local JsValue27 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/plasmaboost/plasmaboostlaserend_00.ani");

obj.setCurrentAnimation(JsValue27);

}

break;

case SKILL_FASTDRAW:

local JsValue28 =  obj.getVar().get_vector(0);

if(JsValue28== 2)

if(obj.getZPos()<= 0)

{

sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/hiteffect/collisionfloor.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_SendDestroyPacketPassiveObject(obj);

}

break;

case SKILL_GRAVITYGRENADE:

local JsValue2 =  obj.getState();

if(JsValue2== PASSIVEOBJ_SUB_STATE_3)

{

local JsValue30 =  obj.getVar().get_vector(5);

local JsValue31 =  obj.getVar().get_vector(6);

setRangeObjectXPos(obj , JsValue30 , ENUM_DIRECTION_NEUTRAL , 0 , 100 , JsValue31 , 1);

}

else if(JsValue2== PASSIVEOBJ_SUB_STATE_0)

if(obj.getZPos()<= 0)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case SKILL_DANGERCLOSE:

local JsValue14 =  obj.getVar("subtype").get_vector(0);

if(JsValue14==1 && obj.getState()==PASSIVEOBJ_SUB_STATE_0 && obj.sq_GetParentState() != STATE_DANGERCLOSE)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(JsValue14== 2)

{

local JsValue24 =  obj.getVar();

if(!JsValue24.getBool(0) && !JsValue24.getBool(1))

{

local JsValue4 =  sq_GetObjectTime(obj);

local JsValue5 =  400;

local JsValue7 =  JsValue24.get_vector(0);

local JsValue39 =  JsValue24.get_vector(1);

local JsValue20 =  800; 

local JsValue3 =  JsValue24.get_vector(2);

local JsValue42 =  JsValue24.get_vector(3);

local JsValue21 =  0;

local JsValue9 =  sq_GetUniformVelocity(JsValue7 ,  JsValue3 ,  JsValue4 ,  JsValue5);

local JsValue45 =  sq_GetUniformVelocity(JsValue39 ,  JsValue42 ,  JsValue4 ,  JsValue5);

local JsValue46 =  sq_GetUniformVelocity(JsValue20 ,  JsValue21 ,  JsValue4 ,  JsValue5);

sq_SetCurrentPos(obj , JsValue9 , JsValue45 , JsValue46);

if(JsValue46== 0)

{

JsValue24.setBool(0 , true);

return;

}

}

else if(JsValue24.getBool(0) && !JsValue24.getBool(1))

{

obj.stopTimeEvent(0);

obj.stopTimeEvent(1);

sq_SetCustomRotate(obj ,  0.0);

local JsValue47 =  JsValue24.get_vector(4);

local JsValue48 =  "";

switch (JsValue47)

{

case 17: JsValue48= "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboom_01.ani"; break;

case 18: JsValue48= "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomfire_01.ani"; break;

case 19: JsValue48= "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomlight_01.ani"; break;

case 20: JsValue48= "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerboomice_01.ani"; break;

}

local JsValue27 =  sq_CreateAnimation("" , JsValue48);

obj.setCurrentAnimation(JsValue27);

sq_SetMyShake(obj , 3 , 200);

sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangerground.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

JsValue24.setBool(1 , true);

}

}

break;

case SKILL_G38ARG:

local JsValue14 =  obj.getVar("subtype").get_vector(0);

if(JsValue14!= 1) return;

local JsValue2 =  obj.getState();

switch (JsValue2)

{

case PASSIVEOBJ_SUB_STATE_0:

if(obj.getZPos()<= 0)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case PASSIVEOBJ_SUB_STATE_1:

if(obj.isExistTimeEvent(1)) return;

local JsValue53 =  obj.getVar("target").get_obj_vector(0);

if(JsValue53 && !sq_GetCNRDObjectToActiveObject(JsValue53).isDead())

{

if(obj.getVar("move").getBool(0)== false)

{

local JsValue54 =  obj.getXPos();

local JsValue55 =  obj.getYPos();

local JsValue56 =  JsValue53.getXPos();

local JsValue57 =  JsValue53.getYPos();

local JsValue58 =  sq_Abs(JsValue54-JsValue56);

local JsValue59 =  sq_Abs(JsValue55-JsValue57);

if(JsValue58<=10 && JsValue59<= 10)

{

obj.getVar("time").clear_ct_vector();

obj.getVar("time").push_ct_vector();

local JsValue60 =  obj.getVar("time").get_ct_vector(0);

JsValue60.Reset();

JsValue60.Start(10000 , 0);

obj.sq_PlaySound("G_38ARG_GRAB");

obj.getVar("move").setBool(0 , true);

return;

}

else

{

if(JsValue58>0)

{

local JsValue61 =  JsValue58 / 10+1;

if(JsValue54>JsValue56) JsValue61 =  JsValue61 / -1;

sq_setCurrentAxisPos(obj ,  0 ,  JsValue54+JsValue61);

}

if(JsValue59>0)

{

local JsValue62 =  JsValue59 / 10+1;

if(JsValue55>JsValue57) JsValue62= JsValue62 / -1;

sq_setCurrentAxisPos(obj ,  1 ,  JsValue55+JsValue62);

}

}

}

else

{

local JsValue60 =  obj.getVar("time").get_ct_vector(0);

if(JsValue60)

{

local JsValue4 =  JsValue60.Get();

local JsValue5 =  200;

local JsValue20 =  0; 

local JsValue21 =  JsValue53.getZPos()+sq_GetObjectHeight(JsValue53) / 2;

local JsValue9 =  sq_GetUniformVelocity(JsValue20 ,  JsValue21 ,  JsValue4 ,  JsValue5);

obj.setCurrentPos(JsValue53.getXPos() , JsValue53.getYPos()+1 , JsValue9);

if(JsValue9== JsValue21)

{

local JsValue69 =  CNSquirrelAppendage.sq_GetAppendage(JsValue53 ,  "character/gunner/g38arg/ap_g38arg.nut");

if(JsValue69 && JsValue69.isValid())

{

local JsValue70 =  sq_GetCNRDObjectToCollisionObject(JsValue69.getSource());

if(JsValue70.getState()!= PASSIVEOBJ_SUB_STATE_4)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

JsValue70.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

CNSquirrelAppendage.sq_RemoveAppendage(JsValue53 ,  "character/gunner/g38arg/ap_g38arg.nut");

}

sq_moveWithParent(JsValue53 ,  obj);

CNSquirrelAppendage.sq_AppendAppendage(JsValue53 ,  obj ,  SKILL_G38ARG ,  true ,  "character/gunner/g38arg/ap_g38arg.nut" ,  true);

obj.getVar("time").clear_ct_vector();

obj.getVar("target").clear_obj_vector();

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

}

}

}

else

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

}

break;

case SKILL_SUPERNOVA:

if(obj.getState()== PASSIVEOBJ_SUB_STATE_0)

{

if(obj.getZPos()<= 0)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

break;

case SKILL_DIMENSIONRUNNER:

local JsValue14 =  obj.getVar("subtype").get_vector(0);

if(JsValue14==  1)

{

local JsValue2 =  obj.getState();

switch (JsValue2)

{

case PASSIVEOBJ_SUB_STATE_0:

local JsValue77 =  obj.sq_GetParentState();

if(JsValue77!= STATE_DIMENSIONRUNNER)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case PASSIVEOBJ_SUB_STATE_4:

local JsValue54 =  obj.getXPos();

local JsValue55 =  obj.getYPos();

local JsValue56 =  obj.getVar("atkobj").get_vector(0);

local JsValue57 =  obj.getVar("atkobj").get_vector(1);

local JsValue58 =  sq_Abs(JsValue54-JsValue56);

local JsValue59 =  sq_Abs(JsValue55-JsValue57);

if(JsValue58<=10 && JsValue59<= 10)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_5 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

else

{

if(JsValue58>0)

{

local JsValue61 =  JsValue58 / 10+1;

if(JsValue54>JsValue56) JsValue61 =  JsValue61 / -1;

sq_setCurrentAxisPos(obj ,  0 ,  JsValue54+JsValue61);

}

if(JsValue59>0)

{

local JsValue62 =  JsValue59 / 10+1;

if(JsValue55>JsValue57) JsValue62= JsValue62 / -1;

sq_setCurrentAxisPos(obj ,  1 ,  JsValue55+JsValue62);

}

}

break;

}

}

else if(JsValue14== 2)

{

local JsValue2 =  obj.getState();

if(JsValue2== PASSIVEOBJ_SUB_STATE_0)

{

local JsValue4 =  sq_GetObjectTime(obj);

local JsValue5 =  obj.getVar().get_vector(0);

local JsValue9 =  sq_GetAccel(0 ,  110 ,  JsValue4 ,  JsValue5 , true);

local JsValue92 =  JsValue9.tofloat()*0.0174532;

sq_SetCustomRotate(obj ,  -JsValue92);

if(JsValue4>JsValue5)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

else if(JsValue2== PASSIVEOBJ_SUB_STATE_1)

{

local JsValue94 =  obj.getVar().get_vector(0);

local JsValue95 =  obj.getZPos();

local JsValue92 =  (110.0+35.0*(1.0-JsValue95.tofloat() / JsValue94.tofloat()))*0.0174532;

sq_SetCustomRotate(obj ,  -JsValue92);

if(JsValue95<= 0)

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

}

break;

case SKILL_HELLMARCH:

local JsValue14 =  obj.getVar("subtype").get_vector(0);

if(JsValue14==  1)

{

local JsValue2 =  obj.getState();

switch (JsValue2)

{

case PASSIVEOBJ_SUB_STATE_0:

local JsValue100 =  obj.getVar("aniobj");

local JsValue101 =  JsValue100.get_obj_vector(0);

if(sq_IsEnd(JsValue101.getCurrentAnimation()))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_2:

local JsValue100 =  obj.getVar("aniobj1");

local JsValue101 =  JsValue100.get_obj_vector(0);

local JsValue105 =  JsValue100.get_obj_vector(1);

local JsValue17 =  JsValue101.getCurrentAnimation();

local JsValue4 =  sq_GetCurrentTime(JsValue17);

local JsValue5 =  JsValue17.getDelaySum(0 ,  0);

local JsValue71 =  JsValue100.get_vector(0);

local JsValue72 =  JsValue100.get_vector(1);

local JsValue3 =  100;

local JsValue9 =  sq_GetAccel(0 ,  JsValue3 ,  JsValue4 ,  JsValue5 , true);

local JsValue113 =  sq_GetDistancePos(JsValue71 ,  sq_GetDirection(JsValue101) ,  JsValue9);

local JsValue114 =  sq_GetDistancePos(JsValue72 ,  sq_GetDirection(JsValue105) ,  JsValue9);

sq_setCurrentAxisPos(JsValue101 ,  0 ,  JsValue113);

sq_setCurrentAxisPos(JsValue105 ,  0 ,  JsValue114);

local JsValue115 =  obj.getVar("clarity").get_vector(0);

local JsValue116 =  JsValue115+sq_GetUniformVelocity(0 ,  63 ,  JsValue4 ,  JsValue5);

local JsValue117 =  sq_getAniLayerListObject(JsValue17 ,  0);

local JsValue117_new =  sq_getAniLayerListObject(JsValue117 ,  0);

JsValue117.setRGBA(255 ,  255 ,  255 ,  JsValue116);

JsValue117_new.setRGBA(255 ,  255 ,  255 ,  JsValue116);

if(sq_IsEnd(JsValue17))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case PASSIVEOBJ_SUB_STATE_3:

local JsValue100 =  obj.getVar("aniobj1");

local JsValue101 =  JsValue100.get_obj_vector(0);

local JsValue105 =  JsValue100.get_obj_vector(1);

local JsValue17 =  JsValue101.getCurrentAnimation();

local JsValue4 =  sq_GetCurrentTime(JsValue17);

local JsValue5 =  JsValue17.getDelaySum(0 ,  0);

local JsValue71 =  JsValue100.get_vector(0);

local JsValue72 =  JsValue100.get_vector(1);

local JsValue3 =  100;

local JsValue9 =  sq_GetAccel(0 ,  JsValue3 ,  JsValue4 ,  JsValue5 , true);

local JsValue113 =  sq_GetDistancePos(JsValue71 ,  sq_GetDirection(JsValue101) ,  JsValue9);

local JsValue114 =  sq_GetDistancePos(JsValue72 ,  sq_GetDirection(JsValue105) ,  JsValue9);

sq_setCurrentAxisPos(JsValue101 ,  0 ,  JsValue113);

sq_setCurrentAxisPos(JsValue105 ,  0 ,  JsValue114);

local JsValue132 =  obj.getVar("clarity");

local JsValue115 =  JsValue132.get_vector(0);

local JsValue116 =  sq_GetUniformVelocity(0 ,  63 ,  JsValue4 ,  JsValue5);

local JsValue135 =  sq_getAniLayerListObject(JsValue101.getCurrentAnimation() ,  0);

local JsValue136 =  sq_getAniLayerListObject(JsValue135 ,  0);

local JsValue137 =  sq_getAniLayerListObject(JsValue105.getCurrentAnimation() ,  0);

local JsValue138 =  sq_getAniLayerListObject(JsValue137 ,  0);

JsValue135.setRGBA(255 ,  255 ,  255 ,  JsValue115+JsValue116);

JsValue136.setRGBA(255 ,  255 ,  255 ,  JsValue115+JsValue116);

JsValue137.setRGBA(255 ,  255 ,  255 ,  JsValue115+JsValue116);

JsValue138.setRGBA(255 ,  255 ,  255 ,  JsValue115+JsValue116);

local JsValue139 =  JsValue132.size_vector()-1;

local JsValue140 =  obj.getVar("aniobj2");

for(local a=1;a<= JsValue139;a++)

{

local JsValue141 =  JsValue132.get_vector(a);

local JsValue142 =  (a-1)*12;

for(local i= 0;i<12;i++)

{

local JsValue143 =  JsValue140.get_obj_vector(JsValue142+i);

local JsValue144 =  sq_getAniLayerListObject(JsValue143.getCurrentAnimation() ,  0);

local JsValue144_New =  sq_getAniLayerListObject(JsValue144 ,  0);

JsValue144.setRGBA(255 ,  255 ,  255 ,  JsValue141+JsValue116);

JsValue144_New.setRGBA(255 ,  255 ,  255 ,  JsValue141+JsValue116);

}

}

if(sq_IsEnd(JsValue17))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case PASSIVEOBJ_SUB_STATE_4:

local JsValue147 =  obj.getVar("aniobj");

local JsValue148 =  JsValue147.get_obj_vector(0);

if(sq_IsEnd(JsValue148.getCurrentAnimation()))

{

for(local i= 0;i<4;i++)

{

local JsValue149 =  JsValue147.get_obj_vector(i);

if(JsValue149)

JsValue149.setValid(false);

}

}

local JsValue132 =  obj.getVar("clarity");

local JsValue115 =  JsValue132.get_vector(0);

local JsValue116 =  JsValue115+1;

if(JsValue116<255)

{

local JsValue153 =  obj.getVar("aniobj1");

local JsValue154 =  JsValue153.get_obj_vector(0);

local JsValue155 =  JsValue153.get_obj_vector(1);

local JsValue135 =  JsValue154.getCurrentAnimation();

local JsValue136 =  sq_getAniLayerListObject(JsValue135 ,  0);

local JsValue137 =  JsValue155.getCurrentAnimation();

local JsValue138 =  sq_getAniLayerListObject(JsValue137 ,  0);

JsValue135.setRGBA(255 ,  255 ,  255 ,  JsValue116);

JsValue136.setRGBA(255 ,  255 ,  255 ,  JsValue116);

JsValue137.setRGBA(255 ,  255 ,  255 ,  JsValue116);

JsValue138.setRGBA(255 ,  255 ,  255 ,  JsValue116);

JsValue132.set_vector(0 , JsValue116);

}

local JsValue139 =  JsValue132.size_vector()-1;

local JsValue140 =  obj.getVar("aniobj2");

for(local a=1;a<= JsValue139;a++)

{

local JsValue141 =  JsValue132.get_vector(a);

local JsValue116_dy =  JsValue141+1;

if(JsValue116_dy>= 255) continue;

local JsValue142 =  (a-1)*12;

for(local i= 0;i<12;i++)

{

local JsValue143 =  JsValue140.get_obj_vector(JsValue142+i);

local JsValue144 =  JsValue143.getCurrentAnimation();

local JsValue144_New =  sq_getAniLayerListObject(JsValue144 ,  0);

JsValue144.setRGBA(255 ,  255 ,  255 ,  JsValue116_dy);

JsValue144_New.setRGBA(255 ,  255 ,  255 ,  JsValue116_dy);

}

JsValue132.set_vector(a , JsValue116_dy);

}

local JsValue101 =  obj.getVar("aniobj1").get_obj_vector(0);

if(sq_IsEnd(JsValue101.getCurrentAnimation()))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_5 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_5:

local JsValue1002 =  obj.getVar("aniobj2");

local JsValue101 =  JsValue1002.get_obj_vector(0);

if(sq_IsEnd(JsValue101.getCurrentAnimation()))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_6 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_6:

local JsValue1001 =  obj.getVar("aniobj1");

local JsValue101 =  JsValue1001.get_obj_vector(0);

if(sq_IsEnd(JsValue101.getCurrentAnimation()))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_7 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

break;

case PASSIVEOBJ_SUB_STATE_7:

local JsValue1001 =  obj.getVar("aniobj1");

local JsValue101 =  JsValue1001.get_obj_vector(0);

if(sq_IsEnd(JsValue101.getCurrentAnimation()))

{

local JsValue6 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue6);

sq_IntVectorPush(JsValue6 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_8 ,  JsValue6 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

else

{

local JsValue179 =  obj.getVar("aniobj").get_obj_vector(0);

if(JsValue179)

{

local JsValue17 =  JsValue179.getCurrentAnimation();

local JsValue4 =  sq_GetCurrentTime(JsValue17);

local JsValue5 =  JsValue17.getDelaySum(false);

local JsValue9 =  sq_GetUniformVelocity(255 ,  50 ,  JsValue4 ,  JsValue5);

JsValue17.setRGBA(255 ,  255 ,  255 ,  JsValue9);

local JsValue184 =  sq_AniLayerListSize(JsValue17);

for(local i= 0;i<JsValue184;i++)

{

local JsValue185 =  sq_getAniLayerListObject(JsValue17 ,  i);

JsValue185.setRGBA(255 ,  255 ,  255 ,  JsValue9);

}

}

}

break;

}

}

break;

}

}

function onAttack_po_qq506807329new_gunner_24371(obj ,  damager ,  boundingBox ,  isStuck)

{

	if (!obj)

return 0;

	if(!damager)

return 0;

local JsValue1 =  obj.getVar("skill").get_vector(0);

switch (JsValue1)

{

case SKILL_MSC7:

if(isStuck) return;

local JsValue2 =  obj.getVar("state").get_vector(0);

if(JsValue2<PASSIVEOBJ_SUB_STATE_1)

{

if(damager && obj.isEnemy(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE))

{

if(!sq_IsHoldable(obj , damager) || !sq_IsGrabable(obj , damager) || sq_IsFixture(damager))

{

local JsValue3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue3);

sq_IntVectorPush(JsValue3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

else

{

local JsValue4 =  sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  55);

local JsValue5 = sq_GetCNRDObjectToActiveObject(damager);

if(JsValue5.isMovablePos(JsValue4 ,  sq_GetYPos(JsValue5)))

{

sq_setCurrentAxisPos(damager ,  0 ,  JsValue4);

sq_moveWithParent(obj ,  damager);

obj.getVar("moveobj").push_obj_vector(damager);

}

else

{

local JsValue3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue3);

sq_IntVectorPush(JsValue3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

return;

}

}

local JsValue3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue3);

sq_IntVectorPush(JsValue3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_1 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

}

break;

case SKILL_PLASMABOOST:

if(damager && obj.isEnemy(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE)&& !isStuck)

{

if(sq_IsHoldable(obj , damager))

if(!CNSquirrelAppendage.sq_IsAppendAppendage(damager ,  "character/gunner/plasmaboost/ap_plasmaboost.nut"))

CNSquirrelAppendage.sq_AppendAppendage(damager ,  obj ,  SKILL_PLASMABOOST ,  true ,  "character/gunner/plasmaboost/ap_plasmaboost.nut" ,  true);

}

break;

case SKILL_BURSTERBEAMNEW:

local JsValue8 =  obj.getVar("subtype").get_vector(0);

if(JsValue8 ==  1)

{

if(damager && obj.isEnemy(damager) && damager.isObjectType(OBJECTTYPE_ACTIVE))

if(!CNSquirrelAppendage.sq_IsAppendAppendage(damager ,  "character/gunner/bursterbeamnew/ap_bursterbeamnew.nut"))

{

local JsValue9 =  sq_GetCNRDObjectToSQRCharacter(obj.getParent());

CNSquirrelAppendage.sq_AppendAppendage(damager ,  JsValue9 ,  SKILL_BURSTERBEAMNEW ,  true ,  "character/gunner/bursterbeamnew/ap_bursterbeamnew.nut" ,  true);

}

}

break;

case SKILL_FASTDRAW:

if(!damager || !obj.isEnemy(damager) || !damager.isObjectType(OBJECTTYPE_ACTIVE) || isStuck) return;

local JsValue10 =  sq_GetWidthObject(damager)/2 / 2;

local JsValue11 =  sq_GetCenterZPos(boundingBox);

local JsValue12 =  sq_CreateDrawOnlyObject(obj ,  "character/gunner/effect/animation/fastdraw/hit_light.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_SetCurrentPos(JsValue12 , sq_GetDistancePos(damager.getXPos() ,  obj.getDirection() ,  JsValue10) , damager.getYPos() , damager.getZPos()+JsValue11);

break;

case SKILL_SEVENTHFLOW:

if(!damager || !obj.isEnemy(damager) || !damager.isObjectType(OBJECTTYPE_ACTIVE) || isStuck) return;

local JsValue13 =  sq_GetObjectHeight(damager) / 2;

local JsValue12 =  sq_CreateDrawOnlyObject(damager ,  "character/gunner/effect/animation/seventhflow/add_attack/attack_normal.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(JsValue12 ,  2 ,  damager.getZPos()+JsValue13);

sq_SetCurrentDirection(JsValue12 ,  sq_GetOppositeDirection(sq_GetDirection(damager)));

break;

case SKILL_SUPERNOVA:

if(obj.getState() !=  PASSIVEOBJ_SUB_STATE_1) return;

if(!damager

||!obj.isEnemy(damager)

||!damager.isObjectType(OBJECTTYPE_ACTIVE)

||isStuck

||!sq_IsGrabable(obj , damager)) return;

if(!CNSquirrelAppendage.sq_IsAppendAppendage(damager ,  "character/gunner/supernova/ap_supernova.nut"))

CNSquirrelAppendage.sq_AppendAppendage(damager ,  obj ,  SKILL_SUPERNOVA ,  true ,  "character/gunner/supernova/ap_supernova.nut" ,  true);

local JsValue15 =  ENUM_DIRECTION_RIGHT;

local JsValue16 =  damager.getXPos();

local JsValue17 =  obj.getXPos();

if(JsValue17>JsValue16)

JsValue15 =  ENUM_DIRECTION_LEFT;

local JsValue12 =  sq_CreateDrawOnlyObject(damager ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/hit_shadow.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(JsValue12 ,  2 ,  damager.getZPos()+sq_GetObjectHeight(damager) / 2);

sq_SetCurrentDirection(JsValue12 ,  JsValue15);

break;

}

}

function onEndCurrentAni_po_qq506807329new_gunner_24371(obj)

{

	if(!obj)

return;

if(!obj.isMyControlObject())

return;

local JsValue1 =  obj.getVar("skill").get_vector(0);

switch (JsValue1)

{

case SKILL_MSC7:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_SEISMICWAVE:

local JsValue2 =  obj.getVar("subtype").get_vector(0);

local JsValue3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue3);

sq_IntVectorPush(JsValue3 ,  0);

if(JsValue2==  1)

{

local JsValue4 =  obj.getVar("state").get_vector(0);

switch (JsValue4)

{

case PASSIVEOBJ_SUB_STATE_1:

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_3:

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_4:

local JsValue5 =  obj.getVar().get_vector(4);

if(JsValue5>0)

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

else

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_5 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_5:

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

else if(JsValue2==2 || JsValue2== 3)

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_PLASMABOOST:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_BURSTERBEAMNEW:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_DEADLYAPPROACH:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_WIPEOUT:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_SEVENTHFLOW:

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_GRAVITYGRENADE:

local JsValue4 =  obj.getState();

switch (JsValue4)

{

case PASSIVEOBJ_SUB_STATE_2:

local JsValue3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue3);

sq_IntVectorPush(JsValue3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_4:

sq_SendDestroyPacketPassiveObject(obj);

break;

}

break;

case SKILL_DANGERCLOSE:

local JsValue2 =  obj.getVar("subtype").get_vector(0);

if(JsValue2== 2)

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_G38ARG:

local JsValue2 =  obj.getVar("subtype").get_vector(0);

if(JsValue2==  1)

{

local JsValue4 =  obj.getState();

switch (JsValue4)

{

case PASSIVEOBJ_SUB_STATE_3:

local JsValue3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue3);

sq_IntVectorPush(JsValue3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_4:

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

else if(JsValue2== 2)

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_SUPERNOVA:

local JsValue2 =  obj.getVar("subtype").get_vector(0);

if(JsValue2==  1)

{

local JsValue4 =  obj.getState();

if(JsValue4== PASSIVEOBJ_SUB_STATE_1)

{

local JsValue3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue3);

sq_IntVectorPush(JsValue3 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(JsValue4== PASSIVEOBJ_SUB_STATE_3)

sq_SendDestroyPacketPassiveObject(obj);

}

else if(JsValue2== 2)

{

sq_SendDestroyPacketPassiveObject(obj);

}

break;

case SKILL_DIMENSIONRUNNER:

local JsValue2 =  obj.getVar("subtype").get_vector(0);

if(JsValue2 ==  1)

{

local JsValue3 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue3);

sq_IntVectorPush(JsValue3 ,  0);

local JsValue4 =  obj.getState();

switch(JsValue4)

{

case PASSIVEOBJ_SUB_STATE_1:

local JsValue18 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/targetarea.ani" ,  ENUM_DRAWLAYER_BOTTOM ,  true);

sq_setCurrentAxisPos(JsValue18 ,  0 ,  sq_GetDistancePos(obj.getXPos() ,  obj.getDirection() ,  120));

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_DIMENSIONRUNNER);

sq_BinaryWriteDword(3);

sq_BinaryWriteDword(obj.getVar().get_vector(1));

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  120 ,  0 ,  0 , obj.getDirection());

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_2:

local JsValue19 =  obj.getVar().get_vector(0);

if(JsValue19>0)

{

local JsValue20 =  [19 , 58 , -27 , -56];

local JsValue21 =  [148 , 125 , 149 , 127];

local JsValue22 =  ["passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_a.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_b.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_c.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilefireglow_d.ani"];

local JsValue23 =  ["passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfirea_00.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfireb_00.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfirec_00.ani"

"passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/dimensionrunnerfired_00.ani"];

local JsValue24 =  sq_getRandom(0 , 3);

local JsValue25 =  obj.getYPos()-1;

for(local i= 0;i<4;i++)

{

if(i== JsValue24) continue;

local JsValue26 =  JsValue20[i];

local JsValue27 =  JsValue21[i];

sq_CreateDrawOnlyObject(obj ,  JsValue22[i] ,  ENUM_DRAWLAYER_NORMAL ,  true);

local JsValue18 =  sq_CreateDrawOnlyObject(obj ,  JsValue23[i] ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(JsValue18 ,  1 ,  JsValue25);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_DIMENSIONRUNNER);

sq_BinaryWriteDword(2);

sq_SendCreatePassiveObjectPacket(obj ,  24371 ,  0 ,  JsValue26 ,  1 ,  JsValue27 , obj.getDirection());

}

obj.getVar().set_vector(0 , JsValue19-1);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_3:

local JsValue29 =  obj.getVar().get_vector(3);

local JsValue30 =  obj.sq_FindFirstTarget(0 ,  JsValue29 ,  80 ,  200);

if(JsValue30)

{

obj.getVar("atkobj").clear_vector();

obj.getVar("atkobj").push_vector(JsValue30.getXPos());

obj.getVar("atkobj").push_vector(JsValue30.getYPos());

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_6 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_5:

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_6 ,  JsValue3 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case PASSIVEOBJ_SUB_STATE_6:

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

else if(JsValue2 ==  2)

sq_SendDestroyPacketPassiveObject(obj);

break;

case SKILL_HELLMARCH:

local JsValue2 =  obj.getVar("subtype").get_vector(0);

if(JsValue2==2 || JsValue2== 3)

sq_SendDestroyPacketPassiveObject(obj);

break;

}

}

function onKeyFrameFlag_po_qq506807329new_gunner_24371(obj ,  flagIndex)

{

if(!obj) return false;

if(!obj.isMyControlObject()) return false;

local JsValue1 =  obj.getVar("skill").get_vector(0);

switch (JsValue1)

{

case SKILL_MSC7:

local JsValue2 =  obj.getVar("state").get_vector(0);

if(JsValue2==PASSIVEOBJ_SUB_STATE_2&&flagIndex== 1)

sq_SetMyShake(obj , 10 , 120);

break;

case SKILL_SEISMICWAVE:

local JsValue3 =  obj.getVar("subtype").get_vector(0);

if(JsValue3==  1)

{

local JsValue2 =  obj.getVar("state").get_vector(0); 

if(JsValue2== PASSIVEOBJ_SUB_STATE_3)

{

if(flagIndex== 1)

obj.resetHitObjectList();

else if(flagIndex== 2)

sq_SetMyShake(obj , 3 , 150);

}

else if(JsValue2==PASSIVEOBJ_SUB_STATE_5 && flagIndex== 2)

sq_flashScreen(obj ,  0 ,  80 ,  100 ,  76 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

}

break;

case SKILL_BURSTERBEAMNEW:

local JsValue3 =  obj.getVar("subtype").get_vector(0);

if(JsValue3 ==  2)

{

switch (flagIndex)

{

case 1:

sq_flashScreen(obj ,  40 ,  60 ,  80 ,  153 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 2 , 240);

break;

case 2:

sq_flashScreen(obj ,  40 ,  60 ,  80 ,  165 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 3 , 180);

break;

case 3:

sq_flashScreen(obj ,  40 ,  60 ,  160 ,  204 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 5 , 120);

break;

case 4:

sq_flashScreen(obj ,  80 ,  480 ,  480 ,  229 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 20 , 2000);

break;

case 5:

sq_SetMyShake(obj , 1 , 480);

break;

}

}

break;

case SKILL_GRAVITYGRENADE:

if(obj.getState()== PASSIVEOBJ_SUB_STATE_4)

if(flagIndex== 1)

sq_flashScreen(obj ,  0 ,  50 ,  0 ,  102 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

else if(flagIndex== 2)

{

sq_flashScreen(obj ,  0 ,  20 ,  180 ,  127 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

sq_SetMyShake(obj , 3 , 200);

}

break;

case SKILL_SUPERNOVA:

local JsValue2 =  obj.getState();

if(JsValue2== PASSIVEOBJ_SUB_STATE_1)

{

switch (flagIndex)

{

case 1: sq_SetMyShake(obj , 4 , 200); break;

case 2: sq_SetMyShake(obj , 2 , 120); break;

case 3: sq_SetMyShake(obj , 1 , 160); break;

}

}

else if(JsValue2== PASSIVEOBJ_SUB_STATE_2)

{

if(flagIndex==  1)

{

sq_SetMyShake(obj , 1 , 80);

}

}

break;

case SKILL_HELLMARCH:

local JsValue3 =  obj.getVar("subtype").get_vector(0);

if(JsValue3== 3)

{

local JsValue8 =  obj.getVar().get_vector(0);

local JsValue9 =  sq_GetCurrentAnimation(obj);

local JsValue10 =  sq_GetAnimationFrameIndex(JsValue9);

local JsValue11 =  JsValue9.getDelaySum(JsValue10 ,  JsValue10);

obj.setTimeEvent(5 ,  JsValue11 / JsValue8 ,  JsValue8 ,  false);

}

break;

}

return true;

}

function onTimeEvent_po_qq506807329new_gunner_24371(obj ,  timeEventIndex ,  timeEventCount)

{

if(!obj)

return;

if(!obj.isMyControlObject())

return;

local JsValue1 =  obj.getVar("skill").get_vector(0);

switch (JsValue1)

{

case SKILL_PLASMABOOST:

obj.resetHitObjectList();

break;

case SKILL_WIPEOUT:

obj.resetHitObjectList();

break;

case SKILL_WIPEOUT:

obj.resetHitObjectList();

break;

case SKILL_SEVENTHFLOW:

obj.resetHitObjectList();

break;

case SKILL_GRAVITYGRENADE:

if(timeEventIndex== 0)

{

local JsValue2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue2);

sq_IntVectorPush(JsValue2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(timeEventIndex== 1)

obj.resetHitObjectList();

else if(timeEventIndex== 2)

{

local JsValue2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue2);

sq_IntVectorPush(JsValue2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  JsValue2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

break;

case SKILL_DANGERCLOSE:

local JsValue4 =  obj.getVar("subtype").get_vector(0);

if(JsValue4==  1)

{

local JsValue5 =  obj.getVar();

local JsValue6 =  JsValue5.get_vector(1);

if(JsValue6<= 0)

{

obj.stopTimeEvent(0);

sq_SendDestroyPacketPassiveObject(obj);

}

local JsValue7 =  JsValue5.get_vector(0);

local JsValue8 =  JsValue5.get_vector(3);

local JsValue9 =  JsValue5.get_vector(4);

sq_BinaryStartWrite();

sq_BinaryWriteDword(SKILL_DANGERCLOSE);

sq_BinaryWriteDword(2);

sq_BinaryWriteDword(JsValue7);

sq_SendCreatePassiveObjectPacketPos(obj ,  24371 ,  0 ,  JsValue8 ,  JsValue9 ,  800);

JsValue5.set_vector(1 , JsValue6-1);

}

else if(JsValue4== 2)

{

local JsValue10 =  (obj.getVar().get_vector(5)).tofloat() / 10000000.0;

local JsValue11 =  null;

if(timeEventIndex== 0)

{

JsValue11 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/dangersmoke.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

}

else if(timeEventIndex==  1)

{

JsValue11 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dangerclose/missilesmoke"+(sq_getRandom(1 , 3)).tostring()+".ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(JsValue11 ,  1 ,  JsValue11.getYPos()-1);

}

sq_SetCustomRotate(JsValue11 ,  JsValue10);

}

break;

case SKILL_G38ARG:

if(timeEventIndex== 0)

{

local JsValue2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue2);

sq_IntVectorPush(JsValue2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_4 ,  JsValue2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(timeEventIndex==  1)

{

obj.sq_RemoveMoveParticle();

}

break;

case SKILL_SUPERNOVA:

if(timeEventIndex== 0)

{

local JsValue2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue2);

sq_IntVectorPush(JsValue2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_3 ,  JsValue2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

}

else if(timeEventIndex==  1)

{

obj.resetHitObjectList();

}

else if(timeEventIndex== 2)

{

local JsValue14 =  obj.getVar("time").get_vector(0);

sq_flashScreen(obj ,  JsValue14+200 ,  50 ,  300 ,  255 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_COVER);

}

else if(timeEventIndex== 3)

{

local JsValue15 =  sq_CreateAnimation("" , "passiveobject/script_sqr_nut_qq506807329/gunner/animation/supernova/floorend/floorend_floornormal.ani");

local JsValue16 =  (obj.getVar().get_vector(0)).tofloat() / 350.0;

JsValue15.setImageRateFromOriginal(JsValue16 ,  JsValue16);

JsValue15.setAutoLayerWorkAnimationAddSizeRate(JsValue16);

obj.setCurrentAnimation(JsValue15);

}

break;

case SKILL_DIMENSIONRUNNER:

if(timeEventIndex== 0)

{

local JsValue17 =  obj.getParent();

if(JsValue17 && JsValue17.getState() < PASSIVEOBJ_SUB_STATE_6)

{

local JsValue18 =  sq_GetCNRDObjectToCollisionObject(obj.getParent());

local JsValue19 =  JsValue18.getVar("atkcount").get_vector(0);

local JsValue20 =  JsValue18.getVar("atkcount").get_vector(1);

if(JsValue20<JsValue19)

{

obj.resetHitObjectList();

JsValue18.getVar("atkcount").set_vector(1 , JsValue20+1);

}

}

else

sq_SendDestroyPacketPassiveObject(obj);

}

else if(timeEventIndex==  1)

{

local JsValue11 =  sq_CreateDrawOnlyObject(obj ,  "passiveobject/script_sqr_nut_qq506807329/gunner/animation/dimensionrunner/new/missilesmoke_00.ani" ,  ENUM_DRAWLAYER_NORMAL ,  true);

sq_setCurrentAxisPos(JsValue11 ,  1 ,  obj.getYPos()-1);

}

break;

case SKILL_HELLMARCH:

switch (timeEventIndex)

{

case 0:

sq_flashScreen(obj ,  0 ,  80 ,  600 ,  255 ,  sq_RGB(0 , 0 , 0) ,  GRAPHICEFFECT_NONE ,  ENUM_DRAWLAYER_BOTTOM);

break;

case 1:

sq_SetMyShake(obj , 2 , 1000);

break;

case 2:

sq_flashScreen(obj ,  0 ,  0 ,  160 ,  178 ,  sq_RGB(255 , 255 , 255) ,  GRAPHICEFFECT_DODGE ,  ENUM_DRAWLAYER_BOTTOM);

break;

case 3:

local JsValue2 =  sq_GetGlobalIntVector();

sq_IntVectorClear(JsValue2);

sq_IntVectorPush(JsValue2 ,  0);

obj.addSetStatePacket(PASSIVEOBJ_SUB_STATE_2 ,  JsValue2 ,  STATE_PRIORITY_AUTO ,  false ,  "");

break;

case 4:

sq_SetMyShake(obj , 1 , 100);

break;

case 5:

obj.resetHitObjectList();

break;

}

break;

}

}

function getCustomHitEffectFileName_po_qq506807329new_gunner_24371(obj ,  isAttachOnDamager)

{

if(!obj)

return "";

local JsValue1 =  obj.getVar("skill").get_vector(0);

switch (JsValue1)

{

case SKILL_WIPEOUT:

local JsValue2 =  obj.getVar("subtype").get_vector(0);

if(JsValue2== 2)

return "character/gunner/effect/animation/hiteffect/updefault.ani";

case SKILL_DEADLYAPPROACH:

case SKILL_FASTDRAW:

case SKILL_SEVENTHFLOW:

return "character/gunner/effect/animation/hiteffect/updefault.ani";

default:

return "";

}

}

