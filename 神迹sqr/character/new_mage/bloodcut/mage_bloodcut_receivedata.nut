
function setCustomDataEtc_po_mage_bloodcut(obj, receiveData)
{


	local attackBonusRate = receiveData.readDword();// ?????(%)	
	local id = receiveData.readDword();

    obj.getVar("id").clear_vector();
    obj.getVar("id").push_vector(id);

	if (id == 224)
    {

        local atkID = receiveData.readDword();
        local lastX = receiveData.readDword();
        local lastY = receiveData.readDword();
        local lastZ = receiveData.readDword();

        local flyT = receiveData.readDword();

        local ani = obj.getVar().GetAnimationMap("0", 
                    "passiveobject/zrr_skill/gunblader/animation/basicattack/hitmanbullet_00.ani"); 
        obj.setCurrentAnimation(ani);

        obj.getVar("chrY").clear_vector();
        obj.getVar("chrY").push_vector( obj.getYPos() );

        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector( obj.getXPos() );
        obj.getVar("pos").push_vector( obj.getYPos() );
        obj.getVar("pos").push_vector( obj.getZPos() );
        obj.getVar("pos").push_vector( lastX );
        obj.getVar("pos").push_vector( lastY );
        obj.getVar("pos").push_vector( lastZ );

        obj.getVar("pos").push_vector( flyT );

        local angle = getRorateAngleByCurrentPos(obj,obj.getVar("pos").get_vector(0),
                                                     obj.getVar("pos").get_vector(1),
                                                     obj.getVar("pos").get_vector(2),
                                                     obj.getVar("pos").get_vector(3),
                                                     obj.getVar("pos").get_vector(4),
                                                     obj.getVar("pos").get_vector(5) );

        sq_SetCustomRotate(obj,angle);

        local attackInfo = sq_GetCustomAttackInfo(obj, atkID);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );


    }else if (id == 223)
    {
        local atkID = receiveData.readDword();
        local lastX = receiveData.readDword();
        local lastY = receiveData.readDword();
        local lastZ = receiveData.readDword();

        local flyT = receiveData.readDword();

        local ani = obj.getVar().GetAnimationMap("0", 
                    "passiveobject/zrr_skill/gunblader/animation/basicattack/hitmanbullet_00.ani"); 
        obj.setCurrentAnimation(ani);

        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector( obj.getXPos() );
        obj.getVar("pos").push_vector( obj.getYPos() );
        obj.getVar("pos").push_vector( obj.getZPos() );
        obj.getVar("pos").push_vector( lastX );
        obj.getVar("pos").push_vector( lastY );
        obj.getVar("pos").push_vector( lastZ );

        obj.getVar("pos").push_vector( flyT );

        local angle = getRorateAngleByCurrentPos(obj,obj.getVar("pos").get_vector(0),
                                                     obj.getVar("pos").get_vector(1),
                                                     obj.getVar("pos").get_vector(2),
                                                     obj.getVar("pos").get_vector(3),
                                                     obj.getVar("pos").get_vector(4),
                                                     obj.getVar("pos").get_vector(5) );

        sq_SetCustomRotate(obj,angle);

        local attackInfo = sq_GetCustomAttackInfo(obj, atkID);
//        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);

        local mage = obj.getTopCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	
        mage.applyBasicAttackUp(sq_GetCurrentAttackInfo(obj),mage.getState());	
        sq_SetCurrentAttackInfo(obj,sq_GetCurrentAttackInfo(obj));

        
    }
    if (id == 222)
    {
        local ani = obj.getVar().GetAnimationMap("0", 
            "passiveobject/zrr_skill/newthier/animation/ballacreadvent/lasteffect_set02d15.ani"); 
        obj.setCurrentAnimation(ani);
        onSetStateBellacre_AdventObj(obj,3);

    }else if (id == 221)
    {
        local ani = obj.getVar().GetAnimationMap("0", 
            "passiveobject/zrr_skill/newthier/animation/ballacreadvent/bigballacre02_finger.ani"); 
        obj.setCurrentAnimation(ani);
        onSetStateBellacre_AdventObj(obj,2);

    }else if (id == 220)
    {
        local ani = obj.getVar().GetAnimationMap("0", 
            "passiveobject/zrr_skill/newthier/animation/ballacreadvent/bigballacre01_hand.ani"); 
        obj.setCurrentAnimation(ani);
        onSetStateBellacre_AdventObj(obj,1);

    }else if (id == 219)
    {
        local ani = obj.getVar().GetAnimationMap("0", 
            "passiveobject/zrr_skill/newthier/animation/ballacreadvent/beadstart02_set07n.ani"); 
        obj.setCurrentAnimation(ani);
        onSetStateBellacre_AdventObj(obj,0);



    }else if (id == 218)
    {

        local rand = sq_getRandom(0,100).tointeger();

        if (rand < 33)
        {
            local ani = obj.getVar().GetAnimationMap("0", 
                    "passiveobject/zrr_skill/newthier/animation/livingdead/darkmatter/newdarkmatter2_01.ani"); 
            obj.setCurrentAnimation(ani);
        }else if (rand < 66)
        {
            local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/newthier/animation/livingdead/darkmatter/newdarkmatter2_01.ani"); 
            obj.setCurrentAnimation(ani);
        }else{
            local ani = obj.getVar().GetAnimationMap("2", 
                    "passiveobject/zrr_skill/newthier/animation/livingdead/darkmatter/newdarkmatter3_01.ani"); 
            obj.setCurrentAnimation(ani);
        }

        if (rand <  50)
        {
            local attackInfo = sq_GetCustomAttackInfo(obj, 185);
            sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
            sq_SetCurrentAttackInfo(obj, attackInfo);
        }else
        {
            local attackInfo = sq_GetCustomAttackInfo(obj, 186);
            sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
            sq_SetCurrentAttackInfo(obj, attackInfo);
        }
        local maxD = receiveData.readDword();
        local minS = receiveData.readDword();
        local maxS = receiveData.readDword();
        local maxT = receiveData.readDword();

        local z = receiveData.readDword();
        local isP = receiveData.readDword();
        local y = receiveData.readDword();

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( obj.getXPos() );
        obj.getVar("var").push_vector( obj.getYPos() );
        obj.getVar("var").push_vector( obj.getZPos() );
        obj.getVar("var").push_vector( maxD );
        obj.getVar("var").push_vector( minS );
        obj.getVar("var").push_vector( maxS );
        obj.getVar("var").push_vector( maxT );
        obj.getVar("var").push_vector(z);
        obj.getVar("var").push_vector( isP );
        obj.getVar("var").push_vector( y );


    }else if (id == 217)
    {
        local isP = receiveData.readDword();
        local saveT = receiveData.readDword();
        local atkT = receiveData.readDword();
        local pushA = receiveData.readDword();

        local distance = receiveData.readDword();
        local minSmoke = receiveData.readDword();
        local maxSmoke = receiveData.readDword();
        local maxT = receiveData.readDword();

        local offsetY = receiveData.readDword();
        local offsetZ = receiveData.readDword();

		obj.getVar("var").clear_vector();
		obj.getVar("var").push_vector(isP);
		obj.getVar("var").push_vector(saveT);
		obj.getVar("var").push_vector(atkT);
		obj.getVar("var").push_vector(pushA);

		obj.getVar("var").push_vector(distance);
		obj.getVar("var").push_vector(minSmoke);
		obj.getVar("var").push_vector(maxSmoke);
		obj.getVar("var").push_vector(maxT);

		obj.getVar("var").push_vector(offsetY)
		obj.getVar("var").push_vector(offsetZ);

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);

        local ani = obj.getVar().GetAnimationMap("0", 
                    "passiveobject/zrr_skill/newthier/animation/livingdead/start_livingdead.ani"); 
        obj.setCurrentAnimation(ani);

    }else if (id == 216)
    {
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/priest/animation/wrathofgod/finishatkeff_smoke.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 184);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);
    }else if (id == 215)
    {
		createFlameCircleExplosionEffectBack(obj);
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/character/mage/animation/atflamecircle/exp/exp_front06.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 183);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);
    }else if (id == 214)
    {
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/priest/animation/nuclearpunch/nuclearpunch_attack_shockbackglow.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 182);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);

    }else if (id == 213)
    {
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/priest/animation/demolitionpunch/demolitionpunch_c_shockb.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 181);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);

    }else if (id == 212)
    {

        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/priest/animation/gatlingpunch/boom_back.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 180);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);

    }else if (id == 211)
    {
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

        local fsObj = sq_flashScreen(obj,100,99999999,0,75, 
        sq_RGB(245,0,249), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_COVER);

        obj.getVar("flashScreenObj").clear_obj_vector();
        obj.getVar("flashScreenObj").push_obj_vector(fsObj);

        local hitT = receiveData.readDword();
        local saveT = receiveData.readDword();

        obj.setTimeEvent(0, hitT , 0 ,false);
        obj.setTimeEvent(1, saveT , 0 ,false);

        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/fighter/animation/dragonmine/poisonloop_dragonmine_bottom.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 179);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate );

        local poisonLV = receiveData.readDword();
        local poisonTime = receiveData.readDword();
        local poisonProc = receiveData.readDword();
        local poisonRate = receiveData.readDword();

        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, 
        ACTIVESTATUS_POISON, poisonProc, poisonLV, poisonTime, poisonRate);
        sq_SetCurrentAttackInfo(obj, attackInfo);






    }else if (id == 210)
    {

        local hitCount = receiveData.readDword();

        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/fighter/animation/dragonmine/explosion/boom_dragonmine_boom4.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 178);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate );

        obj.setTimeEvent(0,(14 * 60) / hitCount , hitCount ,false);
        sq_SetCurrentAttackInfo(obj, attackInfo);

    }else if (id == 209)
    {
        sq_SetMyShake(obj,10,200);
        local isOut = receiveData.readDword();
        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector(isOut);

        if (isOut == 1)
            obj.getVar("var").push_vector( receiveData.readDword() );

        local maxCount = receiveData.readDword();
        obj.getVar("currentNum").clear_vector();
        obj.getVar("currentNum").push_vector( maxCount );
        obj.getVar("currentNum").push_vector( 0 );

        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/fighter/animation/poisonexplosion/explosion_01_shockwave_d.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 177);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate );


        local chr = obj.getParent();

        chr = sq_ObjectToSQRCharacter(chr);

        local poisonProc = sq_GetLevelData(chr, SKILL_POISON_EXPLOSION, 8, sq_GetSkillLevel(chr, SKILL_POISON_EXPLOSION) );
        local poisonRate = sq_GetLevelData(chr, SKILL_POISON_EXPLOSION, 9, sq_GetSkillLevel(chr, SKILL_POISON_EXPLOSION) );
        local poisonLV = sq_GetLevelData(chr, SKILL_POISON_EXPLOSION, 10, sq_GetSkillLevel(chr, SKILL_POISON_EXPLOSION) );
        local poisonTime = sq_GetLevelData(chr, SKILL_POISON_EXPLOSION, 11, sq_GetSkillLevel(chr, SKILL_POISON_EXPLOSION) );

        local burnProc = sq_GetLevelData(chr, SKILL_POISON_EXPLOSION, 12, sq_GetSkillLevel(chr, SKILL_POISON_EXPLOSION) );
        local burnLv = sq_GetLevelData(chr, SKILL_POISON_EXPLOSION, 13, sq_GetSkillLevel(chr, SKILL_POISON_EXPLOSION) );
        local burnTime = sq_GetLevelData(chr, SKILL_POISON_EXPLOSION, 14, sq_GetSkillLevel(chr, SKILL_POISON_EXPLOSION) );
        local burnRate = sq_GetLevelData(chr, SKILL_POISON_EXPLOSION, 15, sq_GetSkillLevel(chr, SKILL_POISON_EXPLOSION) );

        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_POISON, poisonProc, poisonLV, poisonTime, poisonRate);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 1, ACTIVESTATUS_BURN, burnProc, burnLv, burnTime, burnRate);

        sq_SetCurrentAttackInfo(obj, attackInfo);



    }else if (id == 208)
    {
        sq_SetMyShake(obj,10,200);
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/fighter/animation/poisonexplosion/explosion_00_shockwave_n.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 176);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);



    }else if (id == 207)
    {

        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/atswordman/animation/atgonewiththepetal/explosiona2_02.ani"); 
		
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 175);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);


    }else if (id == 206)
    {


        local objId = receiveData.readDword();
        local attackInfo = sq_GetCustomAttackInfo(obj, 174);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);


        local target = sq_GetObjectByObjectId(obj,objId);
        if (target)
            sq_SendHitObjectPacketWithNoStuck(obj,target,0,0,0);	
        sq_SendDestroyPacketPassiveObject(obj);

    }else if (id == 205)
    {
        local atkT = receiveData.readDword();
        local saveT = receiveData.readDword();
        local hitC  = receiveData.readDword();
        local atk3 = receiveData.readDword();

        obj.getVar("atkHit").clear_vector();
        obj.getVar("atkHit").push_vector(atk3);

        obj.getVar("target").clear_obj_vector();
        local target = sq_GetObjectByObjectId(obj,atkT);
        if (target)
        {
            obj.setCurrentPos(target.getXPos(),target.getYPos(),target.getZPos() );

            obj.getVar("target").push_obj_vector( target );
        }

        obj.setTimeEvent(0, saveT ,1,false);
        obj.setTimeEvent(1, saveT / hitC ,hitC,true);

        local attackInfo = sq_GetCustomAttackInfo(obj, 173);
        sq_SetCurrentAttackBonusRate(attackInfo, atk3 );
        sq_SetCurrentAttackInfo(obj, attackInfo);


    }else if (id == 204)
    {
        local atkRate = receiveData.readDword();
        local saveT = receiveData.readDword();
        local hitC = receiveData.readDword();
        local atkRate2 = receiveData.readDword();

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( atkRate );
        obj.getVar("var").push_vector( saveT );
        obj.getVar("var").push_vector( hitC );
        obj.getVar("var").push_vector( atkRate2 );

        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/atswordman/animation/atfistofexplosion/shootfront_08.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 172);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);

    }else if (id == 203)
    {
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/gunner/animation/deathcrisis/deathcrisisfinishmultihitshoot.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 171);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);
		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);


        local atkT = receiveData.readDword();
        if (atkT != -1)
            obj.setTimeEvent(0, atkT ,0,true);


    }else if (id == 202)
    {
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/gunner/animation/deathcrisis/deathcrisisfinishgunhawkattack.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 170);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);
		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);


        local atkT = receiveData.readDword();
        if (atkT != -1)
            obj.setTimeEvent(0, atkT ,0,true);

    }else if (id == 201)
    {
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/gunner/animation/deathcrisis/deathcrisisfrontshootattack.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 169);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);
		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);


        local atkT = receiveData.readDword();
        if (atkT != -1)
            obj.setTimeEvent(0, atkT ,0,true);


    }else if (id == 200)
    {
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/gunner/animation/deathcrisis/deathcrisisshootattack.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 168);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);
		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);


        local atkT = receiveData.readDword();
        if (atkT != -1)
            obj.setTimeEvent(0, atkT ,0,true);


    }else if (id == 199)
    {
        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/gunner/animation/deathcrisis/deathcrisisshootattack.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 167);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);
		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);


        local atkT = receiveData.readDword();
        if (atkT != -1)
            obj.setTimeEvent(0, atkT ,0,true);

    }else if (id == 198)
    {

        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/zrr_skill/gunner/animation/deathcrisis/deathcrisismultishootattack.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 166);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );
        sq_SetCurrentAttackInfo(obj, attackInfo);
		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);


        local atkT = receiveData.readDword();
        if (atkT != -1)
            obj.setTimeEvent(0, atkT ,0,true);

    }else if (id == 197)
    {
        local objId = receiveData.readDword();
        local attacker = obj.getParent();
        local attackInfo = sq_GetCurrentAttackInfo(attacker);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        local target = scanObjectManagerMonsterByID(obj,objId);//sq_GetObjectByObjectId(obj,objId);
        if (target)
            sq_SendHitObjectPacketWithNoStuck(obj,target,0,0,0);	
        sq_SendDestroyPacketPassiveObject(obj);

    }else if (id == 196)
    {

        local objId = receiveData.readDword();
        local atk1 = receiveData.readDword();
        local atk2 = receiveData.readDword();
        local saveT = receiveData.readDword();
        local atkT = receiveData.readDword();

        local ani = obj.getVar().GetAnimationMap("1", 
                    "passiveobject/character/swordman/animation/shockwaveareahold_.ani"); 
        obj.setCurrentAnimation(ani);

        local attackInfo = sq_GetCustomAttackInfo(obj, 164);
        sq_SetCurrentAttackPower(attackInfo, atk1 );
        sq_SetCurrentAttackInfo(obj, attackInfo);


        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector( 0 );
        obj.getVar("state").push_vector( atk2 );

        local target = sq_GetObjectByObjectId(obj,objId);
        if (target)
        {
            obj.getVar("fuckObj").clear_obj_vector();
            obj.getVar("fuckObj").push_obj_vector( target );

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(target, obj, SKILL_BLOODBOOM, false,
            "character/newswordman/shockwavearea/ap_shockwavearea_new.nut", true);				 

            
        }

        obj.setTimeEvent(0, saveT ,0,false);
        obj.setTimeEvent(1, atkT ,0,true);

    }else if (id == 195)
    {


        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/gunner/animation/trytread.ani"); 
        obj.setCurrentAnimation(ani);

        local attackInfo = sq_GetCustomAttackInfo(obj, 163);
        sq_SetCurrentAttackInfo(obj, attackInfo);


    }else if (id == 194)
    {

        local id = receiveData.readDword();

        local ani = getRapidStepExplosionAnimationByID(obj,id);
        obj.setCurrentAnimation(ani);

        local attackInfo = sq_GetCustomAttackInfo(obj, 162);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );

    }else if (id == 193)
    {
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atgodwind/atgodwind_tornado_normal.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 15);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("movePos").clear_vector();
        obj.getVar("movePos").push_vector( receiveData.readDword() );
        obj.getVar("movePos").push_vector( receiveData.readDword() );
        obj.getVar("movePos").push_vector( receiveData.readDword() );
        obj.getVar("movePos").push_vector( receiveData.readDword() );
        obj.getVar("movePos").push_vector( receiveData.readDword() );
        obj.getVar("movePos").push_vector( receiveData.readDword() );
        obj.getVar("movePos").push_vector( receiveData.readDword() );
        obj.getVar("movePos").push_vector( receiveData.readDword() );


    }else if (id == 192)
    {

        local objId = receiveData.readDword();
        local hitCount = receiveData.readDword();

        obj.setTimeEvent(0, 100 / hitCount ,0,true);

        local ani = obj.getVar().GetAnimationMap("DummyAni", 
        "passiveobject/zrr_skill/atmage/animation/b30a/atstormstrikes/dummy.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 1);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );

		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);

        obj.getVar("hitCount").clear_vector();
        obj.getVar("hitCount").push_vector( hitCount );

        local target = sq_GetObjectByObjectId(obj,objId);
        if (target)
        {
            obj.getVar("fuckObj").clear_obj_vector();
            obj.getVar("fuckObj").push_obj_vector( target );

        }


    }else if (id == 191)
    {
        local hitCount = receiveData.readDword();
        obj.setTimeEvent(0, 480 / hitCount ,0,true);

        local ani = obj.getVar().GetAnimationMap("MulitingHitAni", 
        "passiveobject/zrr_skill/priest/animation/doomcrush/doomcrush_boom_finishsmoke.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 161);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );

		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);

    }else if (id == 190)
    {

        local size = receiveData.readDword();
        local ani = obj.getVar().GetAnimationMap("MulitingHitAni", 
        "passiveobject/zrr_skill/priest/animation/darkhowling/dh1_shockwave_normal.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 160);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );


        local currentAni = sq_GetCurrentAnimation(obj);

        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

    }else if (id == 189)
    {
        local ani = obj.getVar().GetAnimationMap("MulitingHitAni", 
        "passiveobject/zrr_skill/newswordman/animation/mulitinghit.ani"); 
        obj.setCurrentAnimation(ani );

        local mage = obj.getTopCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	
        local attackInfo = sq_GetCurrentAttackInfo(mage);
        sq_SetCurrentAttackInfo(obj, attackInfo);

        local tarID = receiveData.readDword();

        obj.getVar("dama").clear_obj_vector();
        local object = sq_GetObjectByObjectId(obj,tarID);
        if (object)
            obj.getVar("dama").push_obj_vector( object );



    }else if (id == 188)
    {
        local ani = obj.getVar().GetAnimationMap("bloodyRave", 
        "character/swordman/animation/bloodyravedummy.ani"); 
        obj.setCurrentAnimation(ani );
        local mage = obj.getTopCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	
        local attackInfo = sq_GetCurrentAttackInfo(mage);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        obj.setTimeEvent(0, 200 ,0,true);


    }else if (id == 187)
    {
        local moveDistance = receiveData.readDword();
        local moveTime = receiveData.readDword();
        local atk2 = receiveData.readDword();

        obj.getVar("etcVar").clear_vector();
        obj.getVar("etcVar").push_vector( atk2 );

        local ani = obj.getVar().GetAnimationMap("BigJangLaunchBody", 
        "passiveobject/zrr_skill/atswordman/animation/atbigjang/normal_throw_hand.ani"); 
        obj.setCurrentAnimation(ani );

//////////////////////////////////////////////
		local mage = obj.getTopCharacter();
		mage = sq_ObjectToSQRCharacter(mage);
		local sizeRate = mage.sq_GetIntData(SKILL_BIG_JANG,6);
		local imageRate = sizeRate.tofloat() / 100.0;
		ani.setImageRateFromOriginal(imageRate, imageRate);
		ani.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(ani, imageRate, imageRate, imageRate);
//////////////////////////////////////////////

        local attackInfo = sq_GetCustomAttackInfo(obj, 158);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );

        obj.getVar("moveVar").clear_vector();
        obj.getVar("moveVar").push_vector( obj.getXPos() );
        obj.getVar("moveVar").push_vector( moveDistance );
        obj.getVar("moveVar").push_vector( moveTime );


        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector( 0 );

    }else if (id == 186)
    {
        local ani = obj.getVar().GetAnimationMap("ZweivolTageExVertexSlashExplosionAnimation", 
        "passiveobject/zrr_skill/atswordman/animation/atzweivoltage/explosion/zweivoltage_finisheff_leaf_00.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 157);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate );

    }else if (id == 185)
    {
        local atk2 = receiveData.readDword();
        local saveT = receiveData.readDword();

        obj.getVar("etcVar").clear_vector();
        obj.getVar("etcVar").push_vector( atk2 );
        obj.getVar("etcVar").push_vector( saveT );
        obj.getVar("etcVar").push_vector( attackBonusRate );

        onSetStatePassiveobject_ZweivolTageExVertexSlash(obj,0);

    }else if (id == 184)
    {
        obj.getVar("etcVar").clear_vector();
        obj.getVar("etcVar").push_vector( attackBonusRate );
        onSetStatePassiveobject_ZweivolTageExHorizenSlash(obj,0);

    }else if (id == 183)
    {
        local ani = obj.getVar().GetAnimationMap("GhostStepSlashMainBody", 
        "character/swordman/animation/zrr/ghoststepslash_dummy.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 154);
        sq_SetCurrentAttackInfo(obj, attackInfo);

        obj.getVar("dama").clear_obj_vector();
    
        obj.getVar("num").clear_vector();
        obj.getVar("num").push_vector( receiveData.readDword() );


    }else if (id == 182)
    {
        local ani = obj.getVar().GetAnimationMap("FatalFlowerMainBody", 
        "passiveobject/zrr_skill/atswordman/animation/atfatalflower/newhellfireb_21.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 153);
        sq_SetCurrentAttackInfo(obj, attackInfo);

        local appearHit = receiveData.readDword();
        local mulitHit = receiveData.readDword();
        local mulitCount = receiveData.readDword();
        local explosion = receiveData.readDword();


        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, appearHit);

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( mulitHit );
        obj.getVar("var").push_vector( mulitCount );
        obj.getVar("var").push_vector( explosion );
        obj.getVar("var").push_vector( 0 );
		obj.sq_PlaySound("FATAL_FLOWER_START");

    }else if (id == 181)
    {
        createBlastSwordExplosionBottomPooledObject(obj);
        local ani = obj.getVar().GetAnimationMap("BlastSwordExplosionEffect", 
        "passiveobject/zrr_skill/atswordman/animation/atblastsword/boom_base.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 152);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

//////////////////////////////////////////////
		local mage = obj.getTopCharacter();
		mage = sq_ObjectToSQRCharacter(mage);
		local sizeRate = mage.sq_GetIntData(SKILL_BLAST_SWORD,3);
		local imageRate = sizeRate.tofloat() / 100.0;
		ani.setImageRateFromOriginal(imageRate, imageRate);
		ani.setAutoLayerWorkAnimationAddSizeRate(imageRate);
		sq_SetAttackBoundingBoxSizeRate(ani, imageRate, imageRate, imageRate);
//////////////////////////////////////////////


    }else if (id == 180)
    {
        local atk2 = receiveData.readDword();
        local hitCount = receiveData.readDword();
        local ani = obj.getVar().GetAnimationMap("OverBlowSlashBody", 
        "passiveobject/zrr_skill/atswordman/atoverblowslash/overblowslashneweffect_23.ani"); 
        obj.setCurrentAnimation(ani );

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( atk2 );
        obj.getVar("var").push_vector( hitCount );
        obj.getVar("var").push_vector( attackBonusRate );


    }else if (id == 179)
    {
        local ani = obj.getVar().GetAnimationMap("EarthPressureMain", 
        "passiveobject/zrr_skill/atswordman/animation/atearthpressure/flooreffect.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 150);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

    }else if (id == 178)
    {
        local ani = obj.getVar().GetAnimationMap("NearBlowDummyHitObject", 
        "passiveobject/zrr_skill/atswordman/animation/atnearblow/pierce_throw(d).ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 149);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

    }else if (id == 177)
    {
        local ani = obj.getVar().GetAnimationMap("SpaceIgniteMainBody", 
        "passiveobject/zrr_skill/atswordman/animation/atspaceignite/explosion_ex.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 148);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 176)
    {
        local ani = obj.getVar().GetAnimationMap("CommonAnimationShockAnimation", 
        "passiveobject/zrr_skill/atswordman/animation/atinhalation/shock.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 147);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

    }else if (id == 175)
    {
    	local distance = receiveData.readDword();
        local ani = obj.getVar().GetAnimationMap("AtSwordManThreeSide", 
        "passiveobject/zrr_skill/atswordman/animation/atthreeside/threeside_03.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 146);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("dis").clear_vector();
        obj.getVar("dis").push_vector( distance );
        obj.getVar("dis").push_vector( obj.getXPos() );

    }else if (id == 174)
    {
        local ani = obj.getVar().GetAnimationMap("AccelnationalTriggerShootDEffect", 
        "character/gunner/animation/ani_als/accelationtrigger_second/accelationtriggershootd_00.ani"); 
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 145);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 173)
    {
        sq_SetMyShake(obj,10,200);
        local ani = obj.getVar().GetAnimationMap("devilBoomEffect", 
        "passiveobject/zrr_skill/priest/animation/inviteofdevil/devilinvitation_boom_04.ani"); 
        local isAwake = receiveData.readDword();
        if ( isAwake == 1)
        {
             ani = obj.getVar().GetAnimationMap("devilBoomEffectBoom", 
            "passiveobject/zrr_skill/priest/animation/inviteofdevil/devilinvitation_boom_04.ani"); 
        }
        obj.setCurrentAnimation(ani );
        local attackInfo = sq_GetCustomAttackInfo(obj, 144);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 172)
    {


        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);
        obj.setTimeEvent(0, receiveData.readDword() ,0,false);
        local attackInfo = sq_GetCustomAttackInfo(obj, 143);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        local isAwake = receiveData.readDword();
        obj.getVar("isAwake").clear_vector();
        obj.getVar("isAwake").push_vector( isAwake  );
        local ani = obj.getVar().GetAnimationMap("devilLeft", 
        "passiveobject/zrr_skill/priest/animation/inviteofdevil/devilinvitation_left_03.ani"); 
        if (isAwake == 1)
        {
             ani = obj.getVar().GetAnimationMap("devilLeftAW", 
            "passiveobject/zrr_skill/priest/animation/inviteofdevil/devilinvitation_w_left_04.ani"); 
        }
        obj.setCurrentAnimation(ani );

    }else  if (id == 171)
    {

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);
        obj.setTimeEvent(0, receiveData.readDword() ,0,false);
        local attackInfo = sq_GetCustomAttackInfo(obj, 143);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        local attackBouns = receiveData.readDword();
        obj.getVar("attackBouns").clear_vector();
        obj.getVar("attackBouns").push_vector( attackBouns );
        local isAwake = receiveData.readDword();
        obj.getVar("isAwake").clear_vector();
        obj.getVar("isAwake").push_vector( isAwake  );
        local ani = obj.getVar().GetAnimationMap("devilRight", 
        "passiveobject/zrr_skill/priest/animation/inviteofdevil/devilinvitation_right_04.ani"); 
        if (isAwake == 1)
        {
             ani = obj.getVar().GetAnimationMap("devilRightAW", 
            "passiveobject/zrr_skill/priest/animation/inviteofdevil/devilinvitation_w_right_03.ani"); 
        }
        obj.setCurrentAnimation(ani );


    }else if (id == 170)
    {

		local moveDistance = receiveData.readDword();//600
        local moveTime = receiveData.readDword();//600
        local spinTime = receiveData.readDword();//200
        local zPos = receiveData.readDword();//200
        local isJump = receiveData.readDword();//200

        obj.getVar("moveInit").clear_vector();
        obj.getVar("moveInit").push_vector( obj.getXPos() );
        obj.getVar("moveInit").push_vector( obj.getYPos() );
        obj.getVar("moveInit").push_vector( obj.getZPos() );

        obj.getVar("moveVar").clear_vector();
        obj.getVar("moveVar").push_vector( moveDistance );
        obj.getVar("moveVar").push_vector( moveTime );
        obj.getVar("moveVar").push_vector( spinTime );
        obj.getVar("moveVar").push_vector( zPos );
        obj.getVar("moveVar").push_vector( isJump );
        obj.getVar("moveVar").push_vector( moveDistance );

		local ani = obj.getVar().GetAnimationMap("CoalBan", 
        "passiveobject/zrr_skill/atswordman/animation/atcoalban/shooting.ani"); 
		obj.setCurrentAnimation(ani );

		local attackInfo = sq_GetCustomAttackInfo(obj, 142);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


        obj.getVar("tailObj").clear_obj_vector();
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
        obj.getVar("tailObj").push_obj_vector( createCoalBanTailPooledObject(obj) );
//
    }else if (id == 161)
    {
        local maxNum = receiveData.readDword();
        local curNum = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("AtExectionMain", 
        "passiveobject/zrr_skill/atswordman/animation/atexecution/start_md.ani"); 


        ani.setSpeedRate(200.0);				

		obj.setCurrentAnimation(ani );
		local attackInfo = sq_GetCustomAttackInfo(obj, 141);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( maxNum );
        obj.getVar("var").push_vector( curNum );

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);


    }else if (id == 160)
    {
        createHighSpeedShootRevolerThrow(obj);
		local ani = obj.getVar().GetAnimationMap("ShootEffect", 
        "passiveobject/zrr_skill/gunner/animation/fastdraw/fastdraw_bullet_normal.ani"); 

		local attackInfo = sq_GetCustomAttackInfo(obj, 140);

		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("moveInitVar").clear_vector();
        obj.getVar("moveInitVar").push_vector(300);
        obj.getVar("moveInitVar").push_vector( obj.getXPos() );
        obj.getVar("moveInitVar").push_vector( obj.getYPos() );
        obj.getVar("moveInitVar").push_vector( obj.getZPos() );


        local target = findAngleTarget(obj, 600, 180, 100);
        if (target)
        {

            target = sq_GetCNRDObjectToActiveObject(target);
            
            obj.getVar("moveVar").clear_vector();
            obj.getVar("moveVar").push_vector( sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 600) );
            obj.getVar("moveVar").push_vector( target.getYPos() );
            obj.getVar("moveVar").push_vector( target.getZPos() + target.getObjectHeight()/2 + sq_getRandom(-10,40).tointeger());


        }else{


            obj.getVar("moveVar").clear_vector();
            obj.getVar("moveVar").push_vector( sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 600) );
            obj.getVar("moveVar").push_vector( obj.getYPos() );
            obj.getVar("moveVar").push_vector( obj.getZPos() + sq_getRandom(-50,15).tointeger());

        }


        local angle = getRorateAngleByCurrentPos(obj,obj.getVar("moveInitVar").get_vector(1),
                                                     obj.getVar("moveInitVar").get_vector(2),
                                                     obj.getVar("moveInitVar").get_vector(3),
                                                     obj.getVar("moveVar").get_vector(0),
                                                     obj.getVar("moveVar").get_vector(1),
                                                     obj.getVar("moveVar").get_vector(2) );
//        sq_SetfRotateAngle(ani, angle);
		obj.setCurrentAnimation(ani );
        sq_SetCustomRotate(obj,angle);



    }

    if (id == 159)
    {
		local ani = obj.getVar().GetAnimationMap("Dummy", 
        "passiveobject/zrr_skill/fighter/animation/double_dragon/dummy.ani"); 
		obj.setCurrentAnimation(ani );
        obj.getVar("currentT").clear_vector();
        obj.getVar("currentT").push_vector(0);


        obj.getVar("fristPos").clear_vector();
        obj.getVar("fristPos").push_vector( obj.getXPos() );
        obj.getVar("fristPos").push_vector( obj.getYPos() );
        obj.getVar("fristPos").push_vector( obj.getZPos() );

        obj.getVar("lastPos").clear_vector();
        obj.getVar("lastPos").push_vector( obj.getXPos() + 50 );
        obj.getVar("lastPos").push_vector( obj.getYPos() );
        obj.getVar("lastPos").push_vector( obj.getZPos() );

        obj.getVar("headObj").clear_obj_vector();
        obj.getVar("headObj").push_obj_vector( createDoubleDragonPassiveobjectHead1(obj) );

    }else if (id == 158)
    {
		local ani = obj.getVar().GetAnimationMap("Dummy6", 
        "passiveobject/zrr_skill/newswordman/animation/sprit_swordman/infinitykilling/onehitdummy.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 139);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 157)
    {
		local ani = obj.getVar().GetAnimationMap("Dummy5", 
        "passiveobject/zrr_skill/newswordman/animation/sprit_swordman/infinitykilling/onehitdummy.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 138);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 156)
    {
		local ani = obj.getVar().GetAnimationMap("Dummy4", 
        "passiveobject/zrr_skill/newswordman/animation/sprit_swordman/infinitykilling/onehitdummy.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 137);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 155)
    {
        local hitCount = receiveData.readDword();
        obj.setTimeEvent(0, 1080 / hitCount ,0,true);

		local ani = obj.getVar().GetAnimationMap("Dummy3", 
        "passiveobject/zrr_skill/newswordman/animation/sprit_swordman/infinitykilling/multihitdummy2.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 136);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 154)
    {
        local hitCount = receiveData.readDword();
        obj.setTimeEvent(0, 420 / hitCount ,0,true);

		local ani = obj.getVar().GetAnimationMap("Dummy2", 
        "passiveobject/zrr_skill/newswordman/animation/sprit_swordman/infinitykilling/multihitdummy1.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 135);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 153)
    {
		local ani = obj.getVar().GetAnimationMap("Dummy1", 
        "passiveobject/zrr_skill/newswordman/animation/sprit_swordman/infinitykilling/onehitdummy.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 134);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id >= 148 && id <= 152)
    {


        local ani = getUnlimitedSpeedSlashPassiveObjectAnimation(obj,id - 148);
		obj.setCurrentAnimation(ani);

        local initVar = id - 148;
		local attackInfo = sq_GetCustomAttackInfo(obj, 129 + initVar);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        
    }else if (id == 147)
    {

        local objID = receiveData.readDword();
        local hitCount = receiveData.readDword();
        local time = receiveData.readDword();
        local chrState = receiveData.readDword();

        local activeObj = sq_GetObjectByObjectId(obj, objID);

        obj.getVar("save").clear_vector();
        obj.getVar("save").push_vector(hitCount);
        obj.getVar("save").push_vector(chrState);

        obj.getVar("hitObj").clear_obj_vector();
        obj.getVar("hitObj").push_obj_vector( activeObj );

        obj.setTimeEvent(0, time / hitCount ,0,true);

		local attackInfo = sq_GetCustomAttackInfo(obj, 128);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

		local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);


    }else if (id == 146)
    {

        local moveDistance = receiveData.readDword();
        local moveMaxT = receiveData.readDword();
        local hitCount = receiveData.readDword();

        obj.setTimeEvent(0, moveMaxT / hitCount ,hitCount,true);

		local ani = obj.getVar().GetAnimationMap("SiryumMain", 
        "passiveobject/zrr_skill/atswordman/animation/atsiryun/siryungum.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 127);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector( obj.getXPos() );
        obj.getVar("pos").push_vector( moveDistance );
        obj.getVar("pos").push_vector( moveMaxT );



    }else if (id == 145)
    {
        local hitCount = receiveData.readDword();

		local ani = obj.getVar().GetAnimationMap("RampantMadness", 
        "passiveobject/zrr_skill/newswordman/animation/rampantmadness/rampantmadnessattackcfront_00.ani"); 
		obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 126);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        obj.setTimeEvent(0, 360 / hitCount ,0,true);

    }else if (id == 144)
    {
		local ani = obj.getVar().GetAnimationMap("RampantMadness", 
        "passiveobject/zrr_skill/newswordman/animation/rampantmadness/rampantmadnessattackbfront_00.ani"); 
		obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 125);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

    }else if (id == 143)
    {
        local objID = receiveData.readDword();
        local atk2 = receiveData.readDword();
        local activeObj = sq_GetObjectByObjectId(obj, objID);

		local ani = obj.getVar().GetAnimationMap("SpritMagicWoodHoldAnimationStart", 
        "passiveobject/zrr_skill/newmage/animation/hex/hex_dollhit_start_04.ani"); 
		obj.setCurrentAnimation(ani);
        obj.setCurrentPos(activeObj.getXPos(),activeObj.getYPos() + 3,
        activeObj.getZPos() + activeObj.getObjectHeight()/2);
        obj.setCurrentDirection(activeObj.getDirection());

		local attackInfo = sq_GetCustomAttackInfo(obj, 124);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);
        obj.getVar("atk").clear_vector();
        obj.getVar("atk").push_vector( attackBonusRate );
        obj.getVar("atk").push_vector( objID );
        obj.getVar("atk").push_vector( atk2 );

        obj.getVar("obj").clear_obj_vector();
        obj.getVar("obj").push_obj_vector( createSpritMagicChangeTargetByID(activeObj, 
        getSpritMagicTargetVarByObject(activeObj) ) );

    }else if (id == 142)
    {

        local objID = receiveData.readDword();
        local atk2 = receiveData.readDword();
        obj.getVar("atk").clear_vector();
        obj.getVar("atk").push_vector( attackBonusRate );
        obj.getVar("atk").push_vector( objID );
        obj.getVar("atk").push_vector( atk2 );

		local ani = obj.getVar().GetAnimationMap("SpritMagicWoodHoldAnimation", 
        "passiveobject/zrr_skill/newmage/animation/hex/hex_dollwait.ani"); 
		obj.setCurrentAnimation(ani);

    }else if (id == 141)
    {
		local ani = obj.getVar().GetAnimationMap("stateFinvisibleSwordFlowMindThreeKatana", 
        "passiveobject/zrr_skill/newswordman/animation/stateofinvisiblesword/flowmindthree/flowmindlv95katanathree_katanathreeslashl.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 123);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        local hitCount = receiveData.readDword();

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector(hitCount);

    }else if (id == 140)
    {
		local ani = obj.getVar().GetAnimationMap("stateFinvisibleSwordFlowMindTwoKatana", 
        "passiveobject/zrr_skill/newswordman/animation/stateofinvisiblesword/flowmindtwo/flowmindlv95katanatwo_katanatwoslash.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 122);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        local hitCount = receiveData.readDword();

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector(hitCount);

    }else if (id == 139)
    {
		local ani = obj.getVar().GetAnimationMap("explosionofpathMain", 
        "passiveobject/chunjie/swordman/asura/animation/explosionofpath/endfront_27.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 121);
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
		createobjExplosionOfPathEndback(obj , 0, 0, 0);
		createobjExplosionOfPathEndbottom(obj , 0, 0, 0);
    }else if (id == 138)
    {

        local dummy = receiveData.readDword();
        local atkMulit = receiveData.readDword();
        local atkMulitTime = receiveData.readDword();
        local xPos = receiveData.readDword();
        local yPos = receiveData.readDword();
        local artation = receiveData.readDword();
        local atkMulitSize= receiveData.readDword();

        local ani = obj.getVar().GetAnimationMap("GluttonySlashExplosionEffect", 
                    "passiveobject/zrr_skill/newswordman/animation/gluttonycrevasse/gluttonycrevasseexplosion_08.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 120);

		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( atkMulit );
        obj.getVar("var").push_vector( atkMulitTime );
        obj.getVar("var").push_vector( xPos );
        obj.getVar("var").push_vector( yPos );
        obj.getVar("var").push_vector( artation );
        obj.getVar("var").push_vector( atkMulitSize );

        obj.getVar("dama").clear_obj_vector();


    }else if (id == 137)
    {
        local ani = obj.getVar().GetAnimationMap("GluttonySlashBladeEffect", 
                    "passiveobject/zrr_skill/newswordman/animation/gluttonycrevasse/gluttonycrevassebladespark_05.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 119);

		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


    }else if (id == 136)
    {
        local moveDistance = receiveData.readDword();
        local ani = obj.getVar().GetAnimationMap("HardAttackDemonicCrownSlash", 
                    "passiveobject/character/swordman/animation/hardattackcharge/bladepantom_bladepantombody.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 117);

		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("pos").clear_vector();
        obj.getVar("pos").push_vector( obj.getXPos() );
        obj.getVar("pos").push_vector( moveDistance );

    }else if (id == 135)
    {
        local ani = obj.getVar().GetAnimationMap("MoonLightSlashExplosion", 
                    "passiveobject/zrr_skill/newswordman/animation/moonlightslash/moonexplosion_00.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 116);

		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 134)
    {

        local saveT = receiveData.readDword();
        local atkT = receiveData.readDword();
        local size = receiveData.readDword();


        local curseProc = receiveData.readDword();
        local curseLevel = receiveData.readDword();
        local curseT = receiveData.readDword();
        local curseRate = receiveData.readDword();

        local blindProc = receiveData.readDword();
        local blindLV = receiveData.readDword();
        local blindT = receiveData.readDword();

        obj.getVar("status").clear_vector();
        obj.getVar("status").push_vector( curseProc );
        obj.getVar("status").push_vector( curseLevel );
        obj.getVar("status").push_vector( curseT );
        obj.getVar("status").push_vector( curseRate );
        obj.getVar("status").push_vector( blindProc );
        obj.getVar("status").push_vector( blindLV );
        obj.getVar("status").push_vector( blindT );



        local ani = obj.getVar().GetAnimationMap("EpidRasaLoop", 
                    "passiveobject/character/swordman/animation/epidemicrasa/rasa.ani"); 
        obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 115);

		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        createEpidMicrasaAppear1Effect(obj,size);
        createEpidMicrasaAppear2Effect(obj,size);



        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( saveT );
        obj.getVar("var").push_vector( attackBonusRate );
        obj.getVar("var").push_vector( atkT );
        obj.getVar("var").push_vector( size );

        obj.getVar("effect").clear_obj_vector();
        obj.getVar("effectFlag").clear_vector();
        obj.getVar("effectFlag").push_vector(0);

        obj.getVar("effectGhost").clear_obj_vector();
        createEpidMicrasaGhostNoAttack(obj,-150 * size / 100,0,0);
        createEpidMicrasaGhostNoAttack(obj,150 * size / 100,0,0);
        createEpidMicrasaGhostNoAttack(obj,-100 * size / 100,-50 * size / 100,0);
        createEpidMicrasaGhostNoAttack(obj,-100 * size / 100,50 * size / 100,0);
        createEpidMicrasaGhostNoAttack(obj,100 * size / 100,-50 * size / 100,0);
        createEpidMicrasaGhostNoAttack(obj,100 * size / 100,50 * size / 100,0);
        obj.setTimeEvent(0, atkT ,0,true);
    }else if (id == 133)
    {
        local flagIndex = receiveData.readDword();
        local ani = obj.getVar().GetAnimationMap("ContinueFireBullet", 
                    "passiveobject/zrr_skill/gunblader/animation/continuousfire/bullet_00.ani"); 
        obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 112);
        if (flagIndex == 3)
			attackInfo = sq_GetCustomAttackInfo(obj, 113);

		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("flagIndex").clear_vector();
        obj.getVar("flagIndex").push_vector(flagIndex);
        obj.getVar("flagIndex").push_vector(attackBonusRate);
//

        obj.getVar("moveInitVar").clear_vector();
        obj.getVar("moveInitVar").push_vector(500);
        obj.getVar("moveInitVar").push_vector( obj.getXPos() );
        obj.getVar("moveInitVar").push_vector( obj.getYPos() );
        obj.getVar("moveInitVar").push_vector( obj.getZPos() );


        local target = findAngleTarget(obj, 400, 180, 100);
        if (target)
        {
            local var = -20;
            if (flagIndex == 1)
                var = -40;

            target = sq_GetCNRDObjectToActiveObject(target);
            obj.getVar("moveVar").clear_vector();
            obj.getVar("moveVar").push_vector( 400 );
            obj.getVar("moveVar").push_vector( target.getYPos() - obj.getYPos() );
            obj.getVar("moveVar").push_vector( target.getZPos() + var + target.getObjectHeight()/2 - obj.getZPos() );

            local h = (target.getYPos() - 0) - (obj.getYPos() - obj.getZPos() );
            local width = 400;//sq_Abs(target.getXPos() - obj.getXPos() );
            local angle = -sq_Atan2( h.tofloat(), width.tofloat()) + 0.1;


            local pAni = obj.getCurrentAnimation();
            sq_SetfRotateAngle(pAni, angle);		
            obj.getVar("rorate").clear_vector();
            obj.getVar("rorate").push_vector( (angle *1000).tointeger() );
            obj.getVar("rorateObj").clear_obj_vector();
            obj.getVar("rorateObj").push_obj_vector( createContinueFireBulletEffect01(obj) );
            obj.getVar("rorateObj").push_obj_vector( createContinueFireBulletEffect02(obj) );


        }else{

            local var = -20;
            if (flagIndex == 1)
                var = -40;


            obj.getVar("moveVar").clear_vector();
            obj.getVar("moveVar").push_vector( 400 );
            obj.getVar("moveVar").push_vector( obj.getYPos() - obj.getYPos() );
            obj.getVar("moveVar").push_vector( obj.getZPos() + var - obj.getZPos() );

            local h = (obj.getYPos() - 0) - (obj.getYPos() - obj.getZPos() );
            local width = 400;//sq_Abs(target.getXPos() - obj.getXPos() );
            local angle = -sq_Atan2( h.tofloat(), width.tofloat()) + 0.1;


            local pAni = obj.getCurrentAnimation();
            sq_SetfRotateAngle(pAni, angle);		
            obj.getVar("rorate").clear_vector();
            obj.getVar("rorate").push_vector( (angle *1000).tointeger() );
            obj.getVar("rorateObj").clear_obj_vector();
            obj.getVar("rorateObj").push_obj_vector( createContinueFireBulletEffect01(obj) );
            obj.getVar("rorateObj").push_obj_vector( createContinueFireBulletEffect02(obj) );

        }

    }else if (id == 132)
    {
        local ani = obj.getVar().GetAnimationMap("SightingShootBullet", 
                    "passiveobject/zrr_skill/gunblader/animation/sigtingshot/bullet_00.ani"); 
        obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 111);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("moveInitVar").clear_vector();
        obj.getVar("moveInitVar").push_vector(200);
        obj.getVar("moveInitVar").push_vector( obj.getXPos() );
        obj.getVar("moveInitVar").push_vector( obj.getYPos() );
        obj.getVar("moveInitVar").push_vector( obj.getZPos() );


        local target = findAngleTarget(obj, 400, 180, 100);
        if (target)
        {
            target = sq_GetCNRDObjectToActiveObject(target);
            obj.getVar("moveVar").clear_vector();
            obj.getVar("moveVar").push_vector( 400 );
            obj.getVar("moveVar").push_vector( target.getYPos() - obj.getYPos() );
            obj.getVar("moveVar").push_vector( target.getZPos() + 50 - obj.getZPos() );

            local h = (target.getYPos() - 0) - (obj.getYPos() - obj.getZPos() );
            local width = 400;//sq_Abs(target.getXPos() - obj.getXPos() );
            local angle = -sq_Atan2( h.tofloat(), width.tofloat()) + 0.1;




            local pAni = obj.getCurrentAnimation();
            sq_SetfRotateAngle(pAni, angle);		
            obj.getVar("rorate").clear_vector();
            obj.getVar("rorate").push_vector( (angle *1000).tointeger() );
            obj.getVar("rorateObj").clear_obj_vector();
            obj.getVar("rorateObj").push_obj_vector( createSightingShootBulletEffect01(obj) );
            obj.getVar("rorateObj").push_obj_vector( createSightingShootBulletEffect02(obj) );
            obj.getVar("rorateObj").push_obj_vector( createSightingShootBulletEffect03(obj) );


        }else{


            obj.getVar("moveVar").clear_vector();
            obj.getVar("moveVar").push_vector(400);
            obj.getVar("moveVar").push_vector(0);
            obj.getVar("moveVar").push_vector(0);

            obj.getVar("rorate").clear_vector();
            obj.getVar("rorate").push_vector( 0 );
            obj.getVar("rorateObj").clear_obj_vector();
            obj.getVar("rorateObj").push_obj_vector( createSightingShootBulletEffect01(obj) );
            obj.getVar("rorateObj").push_obj_vector( createSightingShootBulletEffect02(obj) );
            obj.getVar("rorateObj").push_obj_vector( createSightingShootBulletEffect03(obj) );

        }

    }else if (id == 131)
    {
        local ani = obj.getVar().GetAnimationMap("sestoElementoMulit", 
                    "passiveobject/zrr_skill/newmage/animation/sestoelemento/start_main.ani"); 
        obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 110);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        local atk = receiveData.readDword();
        local atkC = receiveData.readDword();
        local moveX = receiveData.readDword();
        local moveY = receiveData.readDword();

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( atkC );
        obj.getVar("var").push_vector( atk );
        obj.getVar("var").push_vector( moveX );
        obj.getVar("var").push_vector( moveY );

        obj.setTimeEvent(0, (2680 + 160) / atkC ,atkC,true);
        sq_flashScreen(obj,500,3000,500,255, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);

        obj.getVar("dama").clear_obj_vector();
        obj.setTimeEvent(1, 10 ,0,true);

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);

    }else if (id == 130)
    {

        obj.getVar("atk").clear_vector();
        obj.getVar("atk").push_vector(attackBonusRate);

        local t1 = receiveData.readDword();
        local t2 = receiveData.readDword();
        local t3 = receiveData.readDword();
        local t4 = receiveData.readDword();

        obj.setTimeEvent(0, t1 ,1,false);
        obj.setTimeEvent(1, t2 ,1,false);
        obj.setTimeEvent(2, t3 ,1,false);
        obj.setTimeEvent(3, t4 ,1,false);
        createCrystalOfOverMindGrowEffect_01(obj);
        obj.getVar("effect").clear_obj_vector();
        obj.getVar("effect").push_obj_vector( createCrystalOfOverMindGrow1Effect(obj) );

        obj.getVar("effectFloor").clear_obj_vector();
        obj.getVar("effectFloor").push_obj_vector( createCrystalOfOverMindGrobalFrontEffect(obj) );
        obj.getVar("effectFloor").push_obj_vector( createCrystalOfOverMindGrobalBackEffect(obj) );

        obj.getVar("effectFloor2").clear_obj_vector();
        obj.getVar("effectFloor2").push_obj_vector( createCrystalOfOverMindGrobalGroundEffect(obj) );
//

    }else if (id == 129)
    {
        local ani = obj.getVar().GetAnimationMap("ElementalCurtainExplosionEffect", 
                    "passiveobject/zrr_skill/newmage/animation/elementalcurtain/elementalcurtain_auroraend_broken.ani"); 
        obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 108);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 128)
    {
//        local ani = obj.getCustomAnimation(0);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/stateoflimit/illusionslash/state_of_limit_illusion_wave_shadow.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 0);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        obj.setTimeEvent(0, receiveData.readDword() ,0,true);

        obj.getVar("len").push_vector( obj.getXPos() );
        obj.getVar("len").push_vector( 300 );
        obj.getVar("len").push_vector( 400 );


    }else if (id == 127)
    {

        local hitT = receiveData.readDword();
        local v1 = receiveData.readDword();
        local v2 = receiveData.readDword();
        local v3 = receiveData.readDword();
        local v4 = receiveData.readDword();

        obj.setTimeEvent(0, hitT ,0,true);

//        local ani = obj.getCustomAnimation(184);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/zigadvent/ghostwind/ghostwind_1.ani"); 

        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 107);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_CURSE, v1, v2, v3,v4);

        sq_SetMyShake(obj,2,3500);
        sq_flashScreen(obj,60,3000,500,102, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);

    }else if (id == 126)
    {
        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);

        obj.getVar("rate").clear_vector();
        obj.getVar("rate").push_vector( receiveData.readDword() );
        obj.getVar("rate").push_vector( receiveData.readDword() );
        obj.getVar("rate").push_vector( receiveData.readDword() );
        obj.getVar("rate").push_vector( receiveData.readDword() );
        obj.getVar("rate").push_vector( 200 );

        obj.getVar("rate").push_vector( receiveData.readDword() );
        obj.getVar("rate").push_vector( receiveData.readDword() );
        obj.getVar("rate").push_vector( receiveData.readDword() );
        obj.getVar("rate").push_vector( receiveData.readDword() );
        onSetPassiveObjectSummonZigState(obj,0);

        obj.getVar("dama").clear_obj_vector();


    }else if (id == 125)
    {
        local Maxcount = receiveData.readDword();
        local CurrentCount = receiveData.readDword();
        local dist = receiveData.readDword();
        local size = receiveData.readDword();
        local yPos = receiveData.readDword();
        local maxT = receiveData.readDword();

        local burnProc = receiveData.readDword();
        local burnLevel = receiveData.readDword();
        local burnTime = receiveData.readDword();
        local atk2 = receiveData.readDword();

//        local ani = obj.getCustomAnimation(180);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/icewave.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 103);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate,sizeRate);

        obj.getVar("effectObj").clear_obj_vector();
        obj.getVar("effectObj").push_obj_vector( createIceWaveExAnimation(obj,size,100) );

        local particleCreater = obj.sq_var.GetparticleCreaterMap("IceWaveEx",
        "passiveobject/character/swordman/particle/icewaveexiceexplosionparticle1.ptl", obj);

        local attackInfo = sq_GetCurrentAttackInfo(obj);

        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0,ACTIVESTATUS_FREEZE, burnProc, burnLevel, burnTime);

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector(attackBonusRate);
        obj.getVar("var").push_vector(Maxcount);
        obj.getVar("var").push_vector(CurrentCount );
        obj.getVar("var").push_vector(dist);
        obj.getVar("var").push_vector(size );
        obj.getVar("var").push_vector(yPos );
        obj.getVar("var").push_vector(maxT);
        obj.getVar("var").push_vector(burnProc );
        obj.getVar("var").push_vector(burnLevel );
        obj.getVar("var").push_vector(burnTime );
        obj.getVar("var").push_vector(atk2 );

        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);




    }else if (id == 124)
    {
        local Maxcount = receiveData.readDword();
        local CurrentCount = receiveData.readDword();
        local dist = receiveData.readDword();
        local size = receiveData.readDword();
        local increaseSize = receiveData.readDword();

        local burnProc = receiveData.readDword();
        local burnLevel = receiveData.readDword();
        local burnTime = receiveData.readDword();
        local burnRate = receiveData.readDword();


//        local ani = obj.getCustomAnimation(179);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/flame/flame_dodge.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 102);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate,sizeRate);

        local attackInfo = sq_GetCurrentAttackInfo(obj);

        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0,ACTIVESTATUS_BURN, burnProc, burnLevel, burnTime, burnRate);


        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector(attackBonusRate);
        obj.getVar("var").push_vector(Maxcount);
        obj.getVar("var").push_vector(CurrentCount );
        obj.getVar("var").push_vector(dist);
        obj.getVar("var").push_vector(size );
        obj.getVar("var").push_vector(increaseSize );

        obj.getVar("var").push_vector(burnProc );
        obj.getVar("var").push_vector(burnLevel );
        obj.getVar("var").push_vector(burnTime );
        obj.getVar("var").push_vector(burnRate );



    }else if (id == 123)
    {
//        local ani = obj.getCustomAnimation(175);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/weapon_katana_blood/atk.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 99);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_BLEEDING ,0, 0,0);
        local id = receiveData.readDword();
        local object = sq_GetObjectByObjectId(obj, id);

        sq_SendHitObjectPacketWithNoStuck(obj,object,0,0, object.getObjectHeight()/2 );
        sq_SendDestroyPacketPassiveObject(obj);

    }else if (id == 122)
    {
//        local ani = obj.getCustomAnimation(174);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/invisiblebladeswordcut/slasheffectb_00.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 98);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 121)
    {

        local atk2 = receiveData.readDword();
        local hitT = receiveData.readDword();

        obj.getVar().clear_vector();
        obj.getVar().push_vector(atk2);

        obj.setTimeEvent(0,1320 / hitT,hitT,true);

//        local ani = obj.getCustomAnimation(173);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/invisiblebladeswordcut/slasheffecta_67.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 97);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        createInvisibleBladeSwordCut_SLashA(obj);
        createInvisibleBladeSwordCut_HitEffectB(obj);
    }else if (id == 120)
    {
        obj.getVar().clear_obj_vector();
        obj.getVar().push_obj_vector( createBlacheStartEffect(obj) );
        obj.getVar().push_obj_vector( createBlacheStartEffect1(obj,0,1,0) );
        obj.getVar().push_obj_vector( createBlacheStartEffect2(obj) );
        obj.setTimeEvent(0,10000,0,false);
        obj.setTimeEvent(0,100,1,false);
        obj.setTimeEvent(0,250,2,false);
        local ani = obj.getCustomAnimation(0);
        obj.setCurrentAnimation(ani);
    }else if (id == 119)
    {
        local dist = receiveData.readDword();
        local maxt = receiveData.readDword();

//        local ani = obj.getCustomAnimation(172);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/character/swordman/animation/kalla/shadowland2.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 94);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        obj.getVar().clear_vector();
        obj.getVar().push_vector( obj.getXPos() );
        obj.getVar().push_vector( dist );
        obj.getVar().push_vector( maxt );
		obj.sq_PlaySound("KALA_THROW");
    }else if (id == 118)
    {
        local ani = obj.getCustomAnimation(171);
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 93);
		sq_SetCurrentAttackInfo(obj, attackInfo);
    }else if (id == 117)
    {
//        local ani = obj.getCustomAnimation(170);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atviolentstorm/stormend_19.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 92);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 116)
    {

        local hitT = receiveData.readDword();
        local xz = receiveData.readDword();



//        local ani = obj.getCustomAnimation(169);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atbloodwing/bloodwingmove_01.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 91);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        obj.setTimeEvent(0,hitT,0,false);
        sq_SetCustomRotate(obj, xz.tofloat() / 100.0);	
    }else if (id == 115)
    {
//        local ani = obj.getCustomAnimation(168);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atgodwind/last.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 16);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if(id == 114)
    {
        local size = receiveData.readDword();

//        local ani = obj.getCustomAnimation(167);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atfighter/animation/atdropfire/atdropfire_boom_06.ani"); 
		obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 87);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(1.0, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate,sizeRate);
    }else if(id == 113)
    {
        local size = receiveData.readDword();

//        local ani = obj.getCustomAnimation(166);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atdimensionlay/atk2.ani"); 
		obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 86);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(1.0, sizeRate);
//        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, 1.0, sizeRate,1.0);



    }else if (id == 112)
    {
//        local ani = obj.getCustomAnimation(164);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atnyarlyatg/g/gstart_body.ani"); 
		obj.setCurrentAnimation(ani);
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);

//        local mage = obj.getTopCharacter();
//        mage = sq_ObjectToSQRCharacter(mage);	
//        local power = mage.sq_GetPowerWithPassive(SKILL_ATG, STATE_ATG, 2, -1, 1.0);

        obj.getVar("value").clear_vector();
        obj.getVar("value").push_vector( receiveData.readDword() ); //atkRate
        obj.getVar("value").push_vector( receiveData.readDword() );//atkT
        obj.getVar("value").push_vector( receiveData.readDword() );//atkC

        createAtgFlash(obj);
        createAtgFront(obj);
        createAtgBack(obj);
    }else if (id == 111)
    {

        local power = receiveData.readDword();
        local atkT = receiveData.readDword();
        local atkC = receiveData.readDword();

        local isTarget = receiveData.readDword();

        if (isTarget == 1)
        {
            local tarID = receiveData.readDword();
            local power2 = receiveData.readDword();

            local object = sq_GetObjectByObjectId(obj,tarID);
            if (object)
            {
                local attackInfo = sq_GetCustomAttackInfo(obj, 85);
                sq_SetCurrentAttackInfo(obj, attackInfo);
                attackInfo = sq_GetCurrentAttackInfo(obj);
                sq_SetCurrentAttackPower(attackInfo, power2);
                sq_SendHitObjectPacket(obj,object,0,0,0);

                obj.setCurrentPos(object.getXPos(),object.getYPos() + 1,object.getZPos()+200);

            }
        }

//        local ani = obj.getCustomAnimation(163);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atnyarlyatg/word/g_word_nomal.ani"); 
		obj.setCurrentAnimation(ani);
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);


        obj.getVar().clear_vector();
        obj.getVar().push_vector(power);
        obj.getVar().push_vector(atkT );
        obj.getVar().push_vector(atkC );
    }else if (id == 110)
    {
        local isBoom = receiveData.readDword();
//        local ani = obj.getCustomAnimation(161);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/ataccident/accident_shock_a01.ani"); 
        if (isBoom == 1)
        {
//            ani = obj.getCustomAnimation(162);
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/ataccident/accident_shock_b03.ani"); 
        }

		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 84);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
        sq_SetMyShake(obj,2,100);
        local mage = obj.getTopCharacter();
        mage = sq_ObjectToSQRCharacter(mage);	

        local xyProc = sq_GetLevelData(mage, SKILL_DROPBOX, 4, sq_GetSkillLevel(mage, SKILL_DROPBOX) );
        local xyLevel = sq_GetLevelData(mage, SKILL_DROPBOX, 3, sq_GetSkillLevel(mage, SKILL_DROPBOX) );
        local xyTime = sq_GetLevelData(mage, SKILL_DROPBOX, 5, sq_GetSkillLevel(mage, SKILL_DROPBOX) );

        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_STUN, xyProc, xyLevel, xyTime);

        local size = mage.sq_GetIntData(SKILL_DROPBOX, 7);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);



    }else if (id == 109)
    {

        local dropT = receiveData.readDword();
        local waveA = receiveData.readDword();
        local isBoom = receiveData.readDword();
//        local ani = obj.getCustomAnimation(159);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/ataccident/accident_box_a01.ani"); 

		local attackInfo = sq_GetCustomAttackInfo(obj, 82);
        if (isBoom == 1)
        {
//            ani = obj.getCustomAnimation(160);
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/ataccident/accident_box_b01.ani"); 

            attackInfo = sq_GetCustomAttackInfo(obj, 83);
        }

		obj.setCurrentAnimation(ani);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        obj.getVar("posZ").clear_vector();
        obj.getVar("posZ").push_vector( obj.getZPos() );
        obj.getVar("posZ").push_vector( dropT );
        obj.getVar("posZ").push_vector( waveA );
        obj.getVar("posZ").push_vector( isBoom);
    }else if (id == 108)
    {
        local dropT = receiveData.readDword();
        local atk2 = receiveData.readDword();

        local isBoom = receiveData.readDword();

//        local ani = obj.getCustomAnimation(157);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/ataccident/accident_magiccircle_a01.ani"); 
    
        if (isBoom == 1)
        {
//            ani = obj.getCustomAnimation(158);
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/ataccident/accident_magiccircle_b01.ani"); 
        }
		obj.setCurrentAnimation(ani);
        
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        obj.getVar("va").clear_vector();
        obj.getVar("va").push_vector(attackBonusRate );
        obj.getVar("va").push_vector(dropT);
        obj.getVar("va").push_vector(atk2 );
        obj.getVar("va").push_vector(isBoom );
    }else if (id == 107)
    {
        local dashD = receiveData.readDword();
        local dashT = receiveData.readDword();

//        local ani = obj.getCustomAnimation(155);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atswarm/swarm_02.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 80);
        sq_SetCurrentAttackInfo(obj, attackInfo);

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);
        obj.getVar("state").push_vector(attackBonusRate);
        obj.getVar("state").push_vector(dashD);
        obj.getVar("state").push_vector(dashT);
        obj.getVar("state").push_vector(obj.getXPos() );
        createSwarmOutEffect(obj,0,1,0);

    }else if (id == 105)//Mirror
    {
        local etcID = receiveData.readDword();


//        local ani = obj.getCustomAnimation(151 + etcID);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atkaleidoscope/" + etcID + "_attack" + etcID + "_boom.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 75 + etcID);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

    }else if (id == 104)//blackHole
    {
        local etcID = receiveData.readDword();
        local atkT = receiveData.readDword();
        local saveT = receiveData.readDword();
        local rorate = receiveData.readDword();
        obj.getVar("effectObj").clear_obj_vector();
        obj.setTimeEvent(0,atkT,0,false);
        obj.setTimeEvent(1,saveT,0,false);
        sq_SetCustomRotate(obj,rorate.tofloat() / 100.0);	

//        local ani = obj.getCustomAnimation(148 + etcID);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atpositron/alaser_03.ani"); 
        if (etcID == 1)
        {
                ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atpositron/blaser_03.ani"); 
        }else if (etcID == 2)
        {
                ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atpositron/blasera_03.ani"); 
        }

		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 72 + etcID);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);


        obj.getVar().clear_vector();
        obj.getVar().push_vector(etcID);

        if (etcID == 0)
        {

            addPartlcAniBlockHole_1(obj,"passiveobject/zrr_skill/atmage/animation/atpositron/2crackloop_01.ani"
            ,510 - 45,-140, -39);

            addPartlcAniBlockHole_1(obj,"passiveobject/zrr_skill/atmage/animation/atpositron/3crackloop_01.ani"
            ,582 - 45,32,-39);

            addPartlcAniBlockHole_1(obj,"passiveobject/zrr_skill/atmage/animation/atpositron/1acrackloop_01.ani"
            ,45 - 45,1,0);

            addPartlcAniBlockHole_1(obj,"passiveobject/zrr_skill/atmage/animation/atpositron/bcenterloop_10.ani"
            ,300 - 45,1,0);
        }


    }else if (id == 103)//particleStrom
    {

        local size = receiveData.readDword();
//        local ani = obj.getCustomAnimation(147);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atdimensionbomb/dimensionbomb_a.ani"); 

		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 71);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);


        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);


        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);

    }else if (id == 102)//particleLine
    {

        local hitCount = receiveData.readDword();

//        local ani = obj.getCustomAnimation(146);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atdimensionlay/atk1.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 70);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        obj.setTimeEvent(0,600 / hitCount,hitCount,false);

    }else if (id == 99)//BloodMage Monster Effect
    {

        local targetid = receiveData.readDword();
        local object = sq_GetObjectByObjectId(obj, targetid);

        local ani = null;
		obj.setCurrentAnimation(ani);

        obj.getVar("target").clear_obj_vector();
        obj.getVar("target").push_obj_vector(object);

    }else if (id == 98)//BloodAndShaow LastEffect
    {
//        local ani = obj.getCustomAnimation(131);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newthier/animation/zetsuei/lastattackeffect/exp01_normal01.ani"); 

		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 67);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 97)//bloodshaowslash_drophitpassiveobject
    {
//        local ani = obj.getCustomAnimation(130);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newthier/animation/finaldistruction/finaldestruction_finish_crash.ani"); 
		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 66);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 96)//shaowarea_shadownormalattack 
    {
        obj.setTimeEvent(0,1000,0,false);
        local aniID = receiveData.readDword();
        local dir = receiveData.readDword();

		obj.setCurrentDirection( dir );
        local parentObj = obj.getTopCharacter();
        parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);

        local ani = parentObj.sq_GetCustomAni(CUSTOM_ANI_SHAOWAREA_NORMALATTACK + aniID);

        parentObj.sq_SetCurrentTimeByFrame(ani, 0);

		obj.setCurrentAnimation(ani);




    }else if (id == 95)
    {
//        local ani = obj.getCustomAnimation(129);

        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newthier/animation/gotohell/gotohell_finish2_smoke_a.ani"); 

		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 65);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


        local size = receiveData.readDword();
        local currentAni = sq_GetCurrentAnimation(obj);

        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

    }else if (id == 94)
    {
        createGhostCastleTomeBoomEffectGroundDust(obj, 0, -1, 0);
        sq_SetMyShake(obj,15,240);
//        local ani = obj.getCustomAnimation(128);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/tombstoneswamp/explosion_02.ani"); 

		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 64);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 93)
    {
        local saveT = receiveData.readDword();
        local ani = obj.getCustomAnimation(125);
		obj.setCurrentAnimation(ani);

        obj.setTimeEvent(0,saveT,0,false);

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);

    }else if (id == 92)//119
    {
        local size = receiveData.readDword();
        sq_SetMyShake(obj,3,300);
//        local ani = obj.getCustomAnimation(124);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/character/swordman/animation/bloodswordexplosion/explosion_28.ani"); 

        local sizeRate = size.tofloat()/100.0;
        ani.setImageRateFromOriginal(sizeRate, sizeRate);
        ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate);

		obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 63);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);




    }else if (id == 91)//119
    {

        local targetid = receiveData.readDword();
        local count = receiveData.readDword();
        local time = receiveData.readDword();
        local atk = receiveData.readDword();
        local object = sq_GetObjectByObjectId(obj, targetid);

        obj.getVar("v").clear_vector();
        obj.getVar("v").push_vector( count);
        obj.getVar("v").push_vector( atk);


        obj.setCurrentPos(object.getXPos(),object.getYPos(),object.getZPos());

        obj.getVar("dama").clear_obj_vector();
        obj.getVar("dama").push_obj_vector(object);

        local ani = null;
		obj.setCurrentAnimation(ani);




		local attackInfo = sq_GetCustomAttackInfo(obj, 41);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


        obj.setTimeEvent(0,time,0,false);

        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);

    }else if (id == 90)
    {
//        local ani = obj.getCustomAnimation(110);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newmage/animation/dot/maddefance/maddyguard2/maddyguardclaw_00.ani"); 

		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 60);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
    }else if (id == 89)
    {
        local ani = obj.getCustomAnimation(109);
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 59);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 88)
    {
        local ani = obj.getCustomAnimation(108);
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 58);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 87)
    {
        local ani = obj.getCustomAnimation(107);
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 57);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 86)
    {
        local ani = obj.getCustomAnimation(106);
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 56);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 85)
    {
        local ani = obj.getCustomAnimation(105);
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 55);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 84)
    {
//        local ani = obj.getCustomAnimation(104);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/stateoflimit/state_of_limit_illusion_02.ani"); 
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 54);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 83)
    {
//        local ani = obj.getCustomAnimation(103);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/stateoflimit/state_of_limit_illusion_01.ani"); 
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 54);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 82)
    {
//        local ani = obj.getCustomAnimation(102);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/stateoflimit/state_of_limit_illusion_00.ani"); 
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 54);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 81)
    {
        obj.setTimeEvent(0,receiveData.readDword(),0,false);
//        local ani = obj.getCustomAnimation(101);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/stateoflimit/state_of_limit_dragon_02.ani"); 
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 53);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("startPos").clear_vector();
        obj.getVar("startPos").push_vector(obj.getXPos() );
        obj.getVar("startPos").push_vector(obj.getYPos() );
        obj.getVar("startPos").push_vector(receiveData.readDword() );

        local followObj = receiveData.readDword();
        local object = sq_GetObjectByObjectId(obj,followObj);

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);

        obj.getVar("followObj").clear_obj_vector();
        obj.getVar("followObj").push_obj_vector(object);
        obj.getVar("startPos").push_vector(receiveData.readDword() );


        local size = receiveData.readDword();
        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal( sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
        obj.getVar("startPos").push_vector(receiveData.readDword() );

        //receiveData.readDword()

    }else if (id == 80)
    {
        local dist = receiveData.readDword();
        local maxTime = receiveData.readDword();

//        local ani = obj.getCustomAnimation(100);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/stateoflimit/state_of_limit_backstep_01.ani"); 
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 52);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("mov").clear_vector();
        obj.getVar("mov").push_vector(0);
        obj.getVar("mov").push_vector(dist);
        obj.getVar("mov").push_vector(maxTime);
        obj.getVar("mov").push_vector(obj.getXPos() );
    }else if (id == 79)
    {
//        local ani = obj.getCustomAnimation(99);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/stateoflimit/state_of_limit_crash_05.ani"); 
		obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 51);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 78)
    {


        obj.setTimeEvent(0,700,0,false);
        local parentObj = obj.getTopCharacter();
        parentObj = sq_GetCNRDObjectToSQRCharacter(parentObj);
        local ani = parentObj.sq_GetCustomAni(CUSTOM_ANI_MYSTICEUIP_BODY);
        sq_Rewind(ani);

//        parentObj.sq_SetCurrentTimeByFrame(ani, 0);
        obj.setCurrentAnimation(ani);

        local attackInfo = sq_GetCustomAttackInfo(obj, 51);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 77)
    {
        local ani = obj.getCustomAnimation(0);
		obj.setCurrentAnimation(ani);
        obj.setTimeEvent(0,100,0,false);
        obj.setTimeEvent(1,receiveData.readWord(),0,false);
        obj.getVar("size").clear_vector();
        obj.getVar("size").push_vector(100);
    }else if (id == 76)
    {
//        local ani = obj.getCustomAnimation(97);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/bloodboom/bloodsnatchboomf_12.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 50);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

    }else if (id == 75)
    {
        local count = receiveData.readDword();
        local time = receiveData.readDword();


//        local ani = obj.getCustomAnimation(96);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/gunner/animation/wipeout/wipeoutattack02_hitf_02.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 49);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.setTimeEvent(0,time,count,true);		

    }else if (id == 74)
    {
//        local ani = obj.getCustomAnimation(95);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/gunner/animation/wipeout/wipeoutattack01_12.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 48);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 73)
    {
//        obj.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));
//        local ani = obj.getCustomAnimation(94);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/gunner/animation/deadlyapproach/shooteffect_1.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 46);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 72)
    {
//        local ani = obj.getCustomAnimation(93);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atd_force/atd_force_finish_boom3_18.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 45);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
    }else if (id == 71)
    {
//        local ani = obj.getCustomAnimation(92);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atd_force/atd_spear_force_finish_boom2_5.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 44);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
    }else if (id == 70)
    {
        local atk = receiveData.readDword();
        sq_flashScreen(obj,0,120,0,178, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        sq_SetMyShake(obj,12,300);
//        local ani = obj.getCustomAnimation(91);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atd_force/atd_force_finish_boom1_6.ani"); 
        obj.setCurrentAnimation(ani);

        obj.getVar().clear_vector();
        obj.getVar().push_vector( attackBonusRate );
        obj.getVar().push_vector( atk );

//        local attackInfo = sq_GetCustomAttackInfo(obj, 43);
//        sq_SetCurrentAttackInfo(obj, attackInfo);
//        attackInfo = sq_GetCurrentAttackInfo(obj);
//        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
    }else if (id == 69)
    {
        sq_SetMyShake(obj,15,120);
        local imageRorateRate = receiveData.readDword();

        local rorateRate = imageRorateRate.tofloat() / 100.0;
        sq_SetCustomRotate(obj,rorateRate);	
//        local ani = obj.getCustomAnimation(90);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atd_force/atd_force_att_circle_2.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 42);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
    }else if (id == 68)
    {
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atd_force/atd_force_holding_eff.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 41);
        sq_SetCurrentAttackInfo(obj, attackInfo);
    }else if (id == 67)
    {
        local atkC = receiveData.readDword();
        local time = receiveData.readDword();
        local ani = obj.getVar().GetAnimationMap("", "passiveobject/zrr_skill/newmage/animation/blackthorntree/blackthorntree_housestart_00.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 40);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
        obj.setTimeEvent(0,1040 / atkC,atkC,true);
        obj.getVar("t").clear_vector();
        obj.getVar("t").push_vector(time);
    }
    else if (id == 66)
    {

		local currNum = receiveData.readDword();
		local len = receiveData.readDword();
		local maxNum = receiveData.readDword();
		local bloodProc = receiveData.readDword();
		local bloodleve = receiveData.readDword();
		local bloodtime = receiveData.readDword();
		local bloodRate = receiveData.readDword();
        local ani = null;
        if (sq_getRandom(0,2) > 1)
        {
//            ani = obj.getCustomAnimation(86);
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newmage/animation/rosevine/rosevine01_00.ani"); 
        }else{
//            ani = obj.getCustomAnimation(87);
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newmage/animation/rosevine/rosevine02_00.ani"); 
        }
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 39);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_BLEEDING, bloodProc, bloodleve, bloodtime,bloodRate);		
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);

        obj.getVar("value").clear_vector();
        obj.getVar("value").push_vector(attackBonusRate);
        obj.getVar("value").push_vector(currNum);
        obj.getVar("value").push_vector(len);
        obj.getVar("value").push_vector(maxNum);
        obj.getVar("value").push_vector(bloodProc);
        obj.getVar("value").push_vector(bloodleve);
        obj.getVar("value").push_vector(bloodtime);
        obj.getVar("value").push_vector(bloodRate);

        sq_SendCreatePassiveObjectPacketPos(obj,12261, 0, obj.getXPos() , obj.getYPos() + 1, obj.getZPos() );

    }else if (id == 65)
    {
        local atk2 = receiveData.readDword();

        local sizeX = receiveData.readDword();
        local sizeY = receiveData.readDword();
        local sizeZ = receiveData.readDword();



//        local ani = obj.getCustomAnimation(85);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newmage/animation/rosewhip/rosewhipsuccessfront_00.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 38);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);


        local currentAni = sq_GetCurrentAnimation(obj);
        currentAni.setImageRateFromOriginal(sizeX.tofloat() / 100.0, sizeY.tofloat() / 100.0);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeX.tofloat() / 100.0);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeX.tofloat() / 100.0, sizeY.tofloat() / 100.0, sizeZ.tofloat() / 100.0);

        obj.getVar("atk2").clear_vector();
        obj.getVar("atk2").push_vector(atk2);

        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        obj.getVar("flag").push_vector(0);
    }else if (id == 64)
    {
//        local ani = obj.getCustomAnimation(84);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atshardmagnum/shardmagnumstep2_02handglow.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 37);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 63)
    {
//        local ani = obj.getCustomAnimation(83);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atshardmagnum/shardmagnumstep1_01iceboom4.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 36);
        sq_SetCurrentAttackInfo(obj, attackInfo);

    }else if (id == 62)
    {
        local time = receiveData.readDword();
        local blood = receiveData.readDword();

        local ani = obj.getCustomAnimation(82);
        obj.setCurrentAnimation(ani);
        obj.setTimeEvent(0,time,0,true);		
        obj.getVar("blood").clear_vector();
        obj.getVar("blood").push_vector(blood);

    }else if (id == 61)
    {
        local size = receiveData.readDword();
//        local ani = obj.getCustomAnimation(81);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/bloodrivern/bloodrivenexplosion.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 35);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
//        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

    }else if (id == 60)
    {
        local ani = obj.getCustomAnimation(80);
        obj.setCurrentAnimation(ani);
		obj.setCurrentDirection(sq_GetOppositeDirection(obj.getDirection()));

    }else if (id == 59)
    {

        local is = receiveData.readDword();
        local countT = receiveData.readDword();
        local yuanPos = receiveData.readDword();
        local jinPos = receiveData.readDword();

        local xSpeed = receiveData.readDword();
        local ySpeed = receiveData.readDword();

        local size = receiveData.readDword();

        local ani = null;
        obj.setTimeEvent(0,countT,0,true);		
        obj.setTimeEvent(1,100,0,true);		
        obj.setTimeEvent(2,10,0,true);		





        obj.getVar("value").clear_vector();

        if (is == 1)//0 == in 1 == out
        {
//            ani = obj.getCustomAnimation(78);
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atshikaree/shikaree_a_floor01.ani"); 
            obj.getVar("value").push_vector(jinPos);
        }else{
//            ani = obj.getCustomAnimation(79);
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atshikaree/shikaree_b_floor01.ani"); 
            obj.getVar("value").push_vector(yuanPos);
        }





            obj.getVar("value").push_vector(xSpeed);
            obj.getVar("value").push_vector(ySpeed);
            obj.getVar("value").push_vector(size);

        obj.getVar("dama").clear_obj_vector();

		ani.setSpeedRate(150.0);
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 34);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

		sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

        local currentAni = sq_GetCurrentAnimation(obj);

        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);


//        obj = sq_SetEnumDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);

        obj.getVar("isSum").clear_vector();
        obj.getVar("isSum").push_vector(0);
        obj.getVar("isSum").push_vector(is);
        obj.getVar("isSum").push_vector(0);
        obj.getVar("isSum").push_vector(count);
    }else if (id == 58)
    {
        local size = receiveData.readDword();
        local ani = obj.getCustomAnimation(77);
        obj.setCurrentAnimation(ani);
        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    }else if (id == 57)
    {
        local size = receiveData.readDword();
        local time = receiveData.readDword();
        local ani = obj.getCustomAnimation(76);
        obj.setCurrentAnimation(ani);
        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);

        obj.setTimeEvent(0,time,0,false);		




    }else if (id == 56)
    {
        local size = receiveData.readDword();
        local ani = obj.getCustomAnimation(75);
        obj.setCurrentAnimation(ani);
        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
    }else if (id == 55)
    {
        local size = receiveData.readDword();
        local ani = obj.getCustomAnimation(74);
        obj.setCurrentAnimation(ani);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

    }else if (id == 54)
    {
        local size = receiveData.readDword();
        local time = receiveData.readDword();
        local hitcount = receiveData.readDword();
//        local ani = obj.getCustomAnimation(73);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/attorment/atk.ani"); 

        obj.setCurrentAnimation(ani);

        obj.setTimeEvent(0,time,0,false);		
        obj.setTimeEvent(1,time / hitcount,0,true);		

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

        local attackInfo = sq_GetCustomAttackInfo(obj, 33);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackeHitStunTime(attackInfo, 0);

    }else if (id == 53)
    {
        local size = receiveData.readDword();
        local ani = obj.getCustomAnimation(72);
        obj.setCurrentAnimation(ani);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);


    }else if (id == 52)
    {
        local ani = obj.getCustomAnimation(71);
        obj.setCurrentAnimation(ani);
    }else if (id == 51)
    {
        local id2 = receiveData.readDword();
        local speed = receiveData.readDword();
//        local ani = obj.getCustomAnimation(67);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atcorruption/c/corruptionteethgrabcannonfrontend_eff_08.ani"); 
        if (id2 == 1)
        {
//            ani = obj.getCustomAnimation(70);
               ani = obj.getVar().GetAnimationMap("20", 
                    "passiveobject/zrr_skill/atmage/animation/atcorruption/b/corruptionteethawakefrontend_teeth_02.ani"); 

        }
        if (obj.isMyControlObject() )
        {
            sq_SetMyShake(obj,5,480);
            sq_flashScreen(obj,0,0,600,204, sq_RGB(255,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
            sq_SendCreatePassiveObjectPacketPos(obj,12138, 0, obj.getXPos() , obj.getYPos() + 1, obj.getZPos() );

            sq_setFullScreenEffect(obj,"passiveobject/zrr_skill/atmage/animation/atcorruption/b/effectscreenline.ani");	
        }
        obj.setCurrentAnimation(ani);

        local attackInfo = sq_GetCustomAttackInfo(obj, 32);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAnip = sq_GetCurrentAnimation(obj);
        currentAnip.setSpeedRate(speed.tofloat() );				

        obj.getVar("dama").clear_obj_vector();

        obj.sq_PlaySound("CORRUPTION_CLOSE");

        obj.getVar("id2").clear_vector();
        obj.getVar("id2").push_vector(id2);

    }else if ( id == 50)
    {
        local waitT = receiveData.readDword();
        local id2 = receiveData.readDword();
        local speed = receiveData.readDword();

        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atcorruption/c/corruptionteethgrabcannonfrontloop_eff_08.ani"); 
        if (id2 == 1)
        {
//            ani = obj.getCustomAnimation(70);
               ani = obj.getVar().GetAnimationMap("20", 
                    "passiveobject/zrr_skill/atmage/animation/atcorruption/b/corruptionteethawakefrontloop_teeth_00.ani"); 

        }
        obj.setCurrentAnimation(ani);
        obj.getVar("v").clear_vector();
        obj.getVar("v").push_vector(attackBonusRate);
        obj.getVar("v").push_vector(id2);
        obj.getVar("v").push_vector(speed);

        obj.setTimeEvent(0,waitT,0,false);		

//        local currentAnip = sq_GetCurrentAnimation(obj);
//        currentAnip.setSpeedRate(speed.tofloat() );				

    }else if (id == 49)
    {
        local waitT = receiveData.readDword();
        local id2 = receiveData.readDword();
        local speed = receiveData.readDword();

        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atcorruption/c/corruptionteethgrabcannonfrontstart_eff_08.ani"); 
        if (id2 == 1)
        {
//            ani = obj.getCustomAnimation(70);
               ani = obj.getVar().GetAnimationMap("20", 
                    "passiveobject/zrr_skill/atmage/animation/atcorruption/b/corruptionteethawakefrontstart_teeth_00.ani"); 

        }

        obj.setCurrentAnimation(ani);

        obj.getVar("v").clear_vector();
        obj.getVar("v").push_vector(attackBonusRate);
        obj.getVar("v").push_vector(waitT);
        obj.getVar("v").push_vector(id2);
        obj.getVar("v").push_vector(speed);


    }else if (id >= 46 && id <= 48)
    {
        local gdProc = receiveData.readDword();
        local gdLeve = receiveData.readDword();
        local gdTime = receiveData.readDword();
        local gdRate = receiveData.readDword();
        local dist = receiveData.readDword();

        local ani = null;
//        local ani = obj.getCustomAnimation(58 + id - 42);
        if (id == 46)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/addwave/light/addwave1.ani");     
        }else if (id == 47)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/addwave/light/addwave2.ani");     
        }else if (id == 48)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/addwave/light/addwave3.ani");     
        }
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 31);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, 6, gdProc, gdLeve, gdTime,gdRate);

        obj.getVar().clear_vector();
        obj.getVar().push_vector( obj.getXPos() );
        obj.getVar().push_vector( dist );



    }else if (id >= 43 && id <= 45)
    {
//        local ani = obj.getCustomAnimation(58 + id - 42);
        local ani = null;

        if (id == 46)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/addwave/addwave1.ani");     
        }else if (id == 47)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/addwave/addwave2.ani");     
        }else if (id == 48)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/addwave/addwave3.ani");     
        }

        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 30);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar().clear_vector();
        obj.getVar().push_vector( obj.getXPos() );
        obj.getVar().push_vector( 30 );

    }else if (id == 42)
    {
        local gdProc = receiveData.readDword();
        local gdLeve = receiveData.readDword();
        local gdTime = receiveData.readDword();
        local gdRate = receiveData.readDword();
//        local ani = obj.getCustomAnimation(58);

        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/forceofthunderer/lightningpower_eff_a.ani"); 

        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 29);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, 6, gdProc, gdLeve, gdTime,gdRate);

    }else if (id == 41)
    {
        local ani = obj.getCustomAnimation(57);
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 28);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 40)
    {
        local ani = obj.getCustomAnimation(56);
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 27);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 39)
    {
		local attackBonusRate2 = receiveData.readDword();

        local ani = obj.getCustomAnimation(55);
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCustomAttackInfo(obj, 26);
        sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("atk").clear_vector();
        obj.getVar("atk").push_vector(attackBonusRate2);

    }else if (id == 38)//no attack
    {
        //drop
        sq_flashScreen(obj,80,1000,150,150, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
        local waitT_Roar = receiveData.readDword();
        local waitT_ReadSword = receiveData.readDword();

        local atk1 = receiveData.readDword();
        local atk2 = receiveData.readDword();
        local atk3 = receiveData.readDword();
        local atk4 = receiveData.readDword();

        local atkT_Roar = receiveData.readDword();
        local atkT_ReadSword = receiveData.readDword();

        local gdP = receiveData.readDword();
        local gdL = receiveData.readDword();
        local gdT = receiveData.readDword();
        local gdR = receiveData.readDword();

        obj.setTimeEvent(10,20,0,true);		

//        local ani = obj.getCustomAnimation(49);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/lightninggod/lightning_create/1/god/1_god.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 22);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo,atk1);

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector( ENUM_PASSIVEOBJECT_LIGHTING_GOD_STATE_DROP );
        createLightingGodBodyFloorEffect_1(obj);

        obj.getVar().clear_vector();
        obj.getVar().push_vector(waitT_Roar);
        obj.getVar().push_vector(waitT_ReadSword);
        obj.getVar().push_vector(atkT_Roar);
        obj.getVar().push_vector(atkT_ReadSword);

        obj.getVar("var").clear_vector();
        obj.getVar("var").push_vector( gdP );
        obj.getVar("var").push_vector( gdL );
        obj.getVar("var").push_vector( gdT );
        obj.getVar("var").push_vector( gdR );

        obj.getVar("atk").clear_vector();
        obj.getVar("atk").push_vector(atk1);
        obj.getVar("atk").push_vector(atk2);
        obj.getVar("atk").push_vector(atk3);
        obj.getVar("atk").push_vector(atk4);

        obj.getVar("dama").clear_obj_vector();


    }else if (id == 37)
    {

//        local ani = obj.getCustomAnimation(48);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/vajra/vajra_finish_exp_lightning_b.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 21);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

    }else if (id == 36)
    {

//        local ani = obj.getCustomAnimation(47);
        sq_SetMyShake(obj,2,100);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/vajra/vajra_finish_break.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 20);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);

    }else if (id == 35)
    {

        local tarX = receiveData.readDword();
        local tarY = receiveData.readDword();
        local gdProc = receiveData.readDword();
        local gdLeve = receiveData.readDword();
        local gdTime = receiveData.readDword();
        local gdRate = receiveData.readDword();
        local id2 = receiveData.readDword();
        local rorateFlag = receiveData.readDword();

        obj.getVar("tar").clear_vector();
        obj.getVar("tar").push_vector(tarX);
        obj.getVar("tar").push_vector(tarY);
        obj.getVar("tar").push_vector(obj.getXPos() );
        obj.getVar("tar").push_vector(obj.getYPos() );
        obj.getVar("tar").push_vector(obj.getZPos() );
        local ani = null;

        if (id2 == 0)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/vajra/vajra_bullet_main_a.ani"); 
        }else if (id2 == 1)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/vajra/vajra_bullet_main_b.ani"); 
        }else if (id2 == 2)
        {
            ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/vajra/vajra_bullet_main_c.ani"); 
        }
//        local ani = obj.getCustomAnimation(176 + id2 );

        obj.setCurrentAnimation(ani);


        local h = (tarY - 0) - (obj.getYPos() - obj.getZPos() );
        local width = sq_Abs(tarX - obj.getXPos() );
        local angle = -sq_Atan2( h.tofloat(), width.tofloat())  - 1.514 ;

        if (rorateFlag == 0)
        {
            local pAni = obj.getCurrentAnimation();
            sq_SetfRotateAngle(pAni, angle);		
        }
        obj.getVar().clear_vector();
        obj.getVar().push_vector( angle.tointeger() * 1000 );
        obj.getVar().push_vector( id2 );
        obj.getVar().push_vector( attackBonusRate );
        obj.getVar().push_vector( rorateFlag );


		local attackInfo = sq_GetCustomAttackInfo(obj, 19);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
        sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, 6, gdProc, gdLeve, gdTime,gdRate);


    }else if (id == 34)
    {

    }else if (id == 33)
    {
        local savT = receiveData.readDword();
        local atkT = receiveData.readDword();

        local atk2 = receiveData.readDword();
        local atk3 = receiveData.readDword();
        local atk4 = receiveData.readDword();
        local gdProc = receiveData.readDword();
        local gdLeve = receiveData.readDword();
        local gdTime = receiveData.readDword();
        local gdRate = receiveData.readDword();

        sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM);
//        local ani = obj.getCustomAnimation(44);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/indaramang/attack_wave.ani"); 

        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 18);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackPower(attackInfo, attackBonusRate);
        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);
        obj.getVar("dama").clear_obj_vector();

        obj.getVar("value").clear_vector();
        obj.getVar("value").push_vector(atk2);
        obj.getVar("value").push_vector(atk3);
        obj.getVar("value").push_vector(gdProc);
        obj.getVar("value").push_vector(gdLeve);
        obj.getVar("value").push_vector(gdTime);
        obj.getVar("value").push_vector(gdRate);

        obj.getVar().clear_vector();
        obj.getVar().push_vector(savT);
        obj.getVar().push_vector(atkT);
        obj.getVar().push_vector(atk4);
    }else if (id >= 28 && id <= 32)
    {

        local atkT = receiveData.readDword();
        local size  = receiveData.readDword();
        obj.setTimeEvent(0,atkT,0,true);		
        local ani = getWindSwordBigSlashAnimation(obj,39 + id - 28);
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 16);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        
        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
        
    }else if (id == 27)
    {
//        local ani = obj.getCustomAnimation(38);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atgodwind/atgodwind_finish_tornado2.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 15);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


    }else if (id == 26)
    {
        local attackBonusRate2 = receiveData.readDword();
        local chrx = receiveData.readDword();
        local chry = receiveData.readDword();
        local angle = receiveData.readDword();
        local number = receiveData.readDword()/100;
        local len = receiveData.readDword();
        local atkT = receiveData.readDword();
        local savT = receiveData.readDword();

        obj.getVar("a").clear_vector();
        obj.getVar("a").push_vector(chrx);
        obj.getVar("a").push_vector(chry);
        obj.getVar("a").push_vector(angle);
        obj.getVar("a").push_vector(len);
        obj.getVar("a").push_vector(360/number);

        obj.getVar("b").clear_vector();
        obj.getVar("b").push_vector(attackBonusRate2);

        obj.getVar("c").clear_vector();
        obj.getVar("c").push_vector(angle);

        obj.getVar("d").clear_vector();
        obj.getVar("d").push_vector(savT);

        obj.setTimeEvent(0,100,0,true);		
        obj.setTimeEvent(1,atkT,0,true);		
        obj.setTimeEvent(2,savT,0,false);		

//        local ani = obj.getCustomAnimation(37);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atgodwind/atgodwind_tornado_normal.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 15);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        

    }else if (id == 25)
    {
        local dist = receiveData.readDword();
        local atkT = receiveData.readDword();
        local savT = receiveData.readDword();

        obj.setTimeEvent(0,savT,0,false);		
        obj.setTimeEvent(1,atkT,0,true);		
        obj.setTimeEvent(2,25,0,true);		


        obj.getVar("dis").clear_vector();
        obj.getVar("dis").push_vector(dist);
        obj.getVar("dis").push_vector(0);

        obj.getVar("speed").clear_vector();
        obj.getVar("speed").push_vector(1);

//        local ani = obj.getCustomAnimation(36);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/attornado/tornado_projectile_eff01.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 13);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 24)
    {
        local dist = receiveData.readDword();

//        obj.getVar("dis").clear_vector();
//        obj.getVar("dis").push_vector(dist);
//        obj.getVar("dis").push_vector(0);


        obj.getVar("len").clear_vector();
        obj.getVar("len").push_vector( obj.getXPos() );
        obj.getVar("len").push_vector(dist);
        obj.getVar("len").push_vector(400);


        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);

//        local ani = obj.getCustomAnimation(34);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atspiralpress/atspiralpress_shoot.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 12);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 23)//raginwind-hold
    {
//        local ani = obj.getCustomAnimation(33);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atragingwind/ragingwind_d_twister_dust01.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 11);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 22)//raginwind-hold
    {
        local waitT = receiveData.readDword();
        local atkT = receiveData.readDword();

        local atk2 = receiveData.readDword();
        local size = receiveData.readDword();

        obj.setTimeEvent(0,waitT,0,false);		
        obj.setTimeEvent(1,atkT,0,true);		

//        local ani = obj.getCustomAnimation(32);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atragingwind/ragingwind_c_twister_eff01.ani"); 
        obj.setCurrentAnimation(ani);
        
	 local attackInfo = sq_GetCustomAttackInfo(obj, 10);
	 
	  local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size/200+0.01;
        //print(size+"b\n");
        sizeRate = sizeRate.tofloat();
       currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
       currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
	 
	 sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        

        
        obj.getVar("atk").clear_vector();
        obj.getVar("atk").push_vector(atk2);

    }else if (id == 21)//raginwind-hold
    {
//        local ani = obj.getCustomAnimation(31);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atragingwind/ragingwind_a_dust01.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 9);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
    }else if (id == 20)
    {
        local maxD = receiveData.readDword();
        local maxT = receiveData.readDword();
        local atkT = receiveData.readDword();
        local size = receiveData.readDword();

        obj.setTimeEvent(0,atkT,0,false);		
        obj.setTimeEvent(1,50,0,true);		

        obj.getVar("len").clear_vector();
        obj.getVar("len").push_vector( obj.getXPos() );
        obj.getVar("len").push_vector( maxD );
        obj.getVar("len").push_vector( maxT );
        obj.getVar("len").push_vector( size );


//        local ani = obj.getCustomAnimation(30);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/athurricane_new/hurricane_b.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 8);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

        

    }else if (id == 19)
    {

        local maxD = receiveData.readDword();
        local maxT = receiveData.readDword();
        local atkT = receiveData.readDword();
        local size = receiveData.readDword();

        obj.setTimeEvent(0,atkT,0,false);		
        obj.setTimeEvent(1,50,0,true);		

        obj.getVar("len").clear_vector();
        obj.getVar("len").push_vector( obj.getXPos() );
        obj.getVar("len").push_vector( maxD );
        obj.getVar("len").push_vector( maxT );
        obj.getVar("len").push_vector( size );

//        local ani = obj.getCustomAnimation(29);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/athurricane_new/hurricane_a.ani"); 
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 7);
		sq_SetCurrentAttackInfo(obj, attackInfo);
        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);

    }else if (id == 18)
    {

        local atkTime = receiveData.readDword();
        local dis = receiveData.readDword();
        local damage1 = receiveData.readDword();
	 local size = receiveData.readDword();
	 
        local ani = obj.getVar().GetAnimationMap("", 
        "passiveobject/zrr_skill/atmage/animation/atstormquake/stormquake_b02_wind_loop07.ani"); 

        obj.setCurrentAnimation(ani);
	 local attackInfo = sq_GetCustomAttackInfo(obj, 6);
	 sq_SetCurrentAttackInfo(obj, attackInfo);

        obj.setTimeEvent(0,atkTime,0,false);		
        obj.setTimeEvent(1,20,0,true);		
        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);
        obj.getVar("state").push_vector(damage1);

        obj.getVar("dis").clear_vector();
        obj.getVar("dis").push_vector(dis);
        obj.getVar("dis").push_vector(0);

        obj.getVar("dama").clear_obj_vector();


        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        
	 local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat() / 100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);
        
        obj.getVar("effectObj").clear_obj_vector();
        createStormQuakeLoopFloorEffect(obj,0,-1,0);


    }else if (id == 17)
    {
        
        local attackBonusRate1 = receiveData.readDword();// ?????(%)	
        local boomSize = receiveData.readDword();// ?????(%)	
        local gdProc = receiveData.readDword();// ?????(%)	
        local gdLevel = receiveData.readDword();// ?????(%)	
        local gdTime = receiveData.readDword();// ?????(%)	
        local gdRate = receiveData.readDword();// ?????(%)	
        local wait = receiveData.readDword();// ?????(%)	
        local height = receiveData.readDword();// ?????(%)	

        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);

        obj.getVar("isDrop").clear_vector();
        obj.getVar("isDrop").push_vector(0);

        obj.getVar("value").clear_vector();
        obj.getVar("value").push_vector(boomSize);
        obj.getVar("value").push_vector(gdProc);
        obj.getVar("value").push_vector(gdLevel);
        obj.getVar("value").push_vector(gdTime);
        obj.getVar("value").push_vector(gdRate);

        obj.getVar("height").clear_vector();
        obj.getVar("height").push_vector(height)

        obj.setTimeEvent(0,wait,1,false);		

//        local ani = obj.getCustomAnimation(24);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/gunner/animation/dropbomblight.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.setCurrentPos(obj.getXPos(),obj.getYPos(),100000);

        obj.getVar("at").clear_vector();
        obj.getVar("at").push_vector(attackBonusRate1);

        sq_SendCreatePassiveObjectPacketPos(obj,12309, 0, obj.getXPos(), obj.getYPos() + 5, 0);

        return true;



    }else if (id == 16)
    {
//        local ani = obj.getCustomAnimation(23);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/bloodboom/boom_dodge.ani"); 
        obj.setCurrentAnimation(ani);
        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);
        return true;
    }else if (id == 15)
    {
        local attackValue = receiveData.readDword();
//        local ani = obj.getCustomAnimation(22);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/bladephantomex/bladephantomex_crack_explosion02.ani"); 

        obj.setCurrentAnimation(ani);

        obj.getVar("flag").clear_vector();
        obj.getVar("flag").push_vector(0);

        obj.getVar("attackValue").clear_vector();
        obj.getVar("attackValue").push_vector(attackValue);


		local attackInfo = sq_GetCustomAttackInfo(obj, 4);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


    }else if (id == 14)
    {
        local tarId = receiveData.readDword();
        local liveTime = receiveData.readDword();

        local object = sq_GetObjectByObjectId(obj,tarId);

        if (!object)
        {
            sq_SendDestroyPacketPassiveObject(obj);	
        }



       if(object.getState() != STATE_HOLD )
       {

            local masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, 
            SKILL_HARDATTACK_HELL, false, "character/newswordman/hardattack_hell/ap_hardattack_hell.nut", true);

            masterAppendage = CNSquirrelAppendage.sq_AppendAppendage(object, obj, 
            SKILL_HARDATTACK_HELL, false, "character/newswordman/hardattack_hell/ap_hardattack_hell_flag.nut", true);

       }else{
            sq_SendDestroyPacketPassiveObject(obj);	
       }


        obj.setTimeEvent(0,liveTime,0,false);


        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/slashofhell/slashofhell_debuff_roof_dodge.ani"); 

        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 116);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("dama").clear_obj_vector();
        obj.getVar("dama").push_obj_vector(object);


    }else if(id == 13)
    {
        local attackCount = receiveData.readDword();
        local lastAttack = receiveData.readDword();
        local liveTime = receiveData.readDword();

		local attackInfo = sq_GetCustomAttackInfo(obj, 3);
		sq_SetCurrentAttackInfo(obj, attackInfo);


        obj.getVar("holdValue").clear_vector();
        obj.getVar("holdValue").push_vector(lastAttack);
        obj.getVar("holdValue").push_vector(liveTime);

        obj.setTimeEvent(0,250 / attackCount,0,false);

//        local ani = obj.getCustomAnimation(20);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/slashofhell/slashofhell_att_eff_27.ani"); 

        obj.setCurrentAnimation(ani);

        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 0)
    {
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/atfang/blood_awake/atfang_attack_awake.ani"); 
		obj.setCurrentAnimation(ani);
        local size = receiveData.readDword();
        local currentAni = sq_GetCurrentAnimation(obj);
        local sizeRate = size.tofloat()/100.0;
        currentAni.setImageRateFromOriginal(sizeRate, sizeRate);
        currentAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(currentAni, sizeRate, sizeRate, sizeRate);


        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);





    }else if (id == 1)
    {
        local ani = obj.getCustomAnimation(0);
		obj.setCurrentAnimation(ani);
        obj.setTimeEvent(0,100,1,false);
        obj.setTimeEvent(1,receiveData.readWord(),0,false);

    }else if (id == 2)
    {

        local size = receiveData.readWord();
        local isHold = receiveData.readWord(); // 0 = can
        local ani = obj.getCustomAnimation(1);
        if (isHold == 0)
        {
            local ani = obj.getCustomAnimation(26);
        }

        local sizeRate = size.tofloat() / 100.0;
        ani.setImageRateFromOriginal(sizeRate, sizeRate);
        ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
        sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate);
    
        obj.getVar("isHold").clear_vector();
        obj.getVar("isHold").push_vector(isHold);

		obj.setCurrentAnimation(ani);

        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if (id == 3)
    {

        local blood = receiveData.readDword();

        local ani = obj.getCustomAnimation(2);
		obj.setCurrentAnimation(ani);
        obj.setTimeEvent(0,100,0,false);

        obj.getVar("speed").clear_vector();
        obj.getVar("speed").push_vector(0);

        obj.getVar("y").clear_vector();
        obj.getVar("y").push_vector(sq_getRandom(-60,60).tointeger() );

        obj.getVar("blood2").clear_vector();
        obj.getVar("blood2").push_vector(blood);


    }else if (id == 4)
    {

        local aCount = receiveData.readDword();
        local attacktime = receiveData.readDword();
        local attackBouns2 = receiveData.readDword();
        local blood = receiveData.readDword();
        local speed = receiveData.readDword();

        obj.getVar("4state").clear_vector();
        obj.getVar("4state").push_vector(0);

        obj.getVar("aCount").clear_vector();
        obj.getVar("aCount").push_vector(aCount);


        obj.getVar("dama").clear_obj_vector();

        obj.getVar("attackBouns2").clear_vector();
        obj.getVar("attackBouns2").push_vector(attackBouns2);
        obj.getVar("attackBouns2").push_vector(attackBonusRate);
//        attackInfo = sq_GetCurrentAttackInfo(obj);
//        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

        obj.getVar("attacktime").clear_vector();
        obj.getVar("attacktime").push_vector(attacktime);

        obj.getVar("blood").clear_vector();
        obj.getVar("blood").push_vector(blood);

		local attackInfo = sq_GetCustomAttackInfo(obj, 88);
		sq_SetCurrentAttackInfo(obj, attackInfo);

//        attackInfo = sq_GetCurrentAttackInfo(obj);
//        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


//        local ani = obj.getCustomAnimation(3);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/atmage/animation/newblooddoghold/ready.ani"); 

		obj.setCurrentAnimation(ani);

        local currentAni = sq_GetCurrentAnimation(obj);
        currentAni.setSpeedRate(speed.tofloat() );				

        attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackeHitStunTime(attackInfo, 0);


    }else if (id == 5)
    {
        local ani = obj.getCustomAnimation(6);
		obj.setCurrentAnimation(ani);

    }else if (id == 6)
    {
        local ani = obj.getCustomAnimation(7);
		obj.setCurrentAnimation(ani);

    }else if (id == 7)
    {
        local ani = obj.getCustomAnimation(8);
		obj.setCurrentAnimation(ani);

    }else if (id == 8)
    {


    }else if (id == 9)
    {

        local targetid = receiveData.readDword();// ?????(%)	
        local attackCount = receiveData.readDword();// ?????(%)	
        local attackTime = receiveData.readDword();// ?????(%)	

        local isOK = receiveData.readDword();// ?????(%)	
        local attackLast = receiveData.readDword();// ?????(%)	
	
        local weaponType = receiveData.readDword();// ?????(%)

//        local ani = obj.getCustomAnimation(132 );
        local ani = obj.getVar().GetAnimationMap("SwordOfMindNew", 
                    "passiveobject/zrr_skill/swordman/animation/swordofmind/newhit.ani"); 

		obj.setCurrentAnimation(ani);

        obj.getVar("xlValue").clear_vector();
        obj.getVar("xlValue").push_vector(isOK);
        obj.getVar("xlValue").push_vector(attackLast);

        obj.getVar("attackvalue").clear_vector();
        obj.getVar("attackvalue").push_vector(attackCount);
        obj.getVar("attackvalue").push_vector(attackTime);

        obj.getVar("state").clear_vector();
        obj.getVar("state").push_vector(0);


        local object = sq_GetObjectByObjectId(obj, targetid);

        obj.setCurrentPos(object.getXPos(),object.getYPos(),object.getZPos());

		local attackInfo = sq_GetCustomAttackInfo(obj, 41);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        obj.getVar("dama").clear_obj_vector();
        obj.getVar("dama").push_obj_vector(object);



        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


        if (weaponType == 1000)
        {


        }
        if (weaponType == 2)//dunqi
        {

            local ani = GetSowrdofMindPassiveMulitingSlashAnimation(obj,115 + sq_getRandom(0, 2) );
            obj.setCurrentAnimation(ani);
            local xyProc = receiveData.readDword();
            local xyLv = receiveData.readDword();
            local xyTime = receiveData.readDword();
            sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_STUN, xyProc, xyLv, xyTime);
            obj.setTimeEvent(0,obj.getVar("attackvalue").get_vector(1),0,false);
            obj.getVar("state").set_vector(0,1);

        }

        if (weaponType == 1)//katana
        {

            local bloodProc = receiveData.readDword();
            local bloodLv = receiveData.readDword();
            local bloodTime = receiveData.readDword();
            local bloodRate = receiveData.readDword();
            sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_BLEEDING, bloodProc, bloodLv, bloodTime,bloodRate);

        }

        if (weaponType == 3)//katana
        {

            local bloodProc = receiveData.readDword();
            local bloodLv = receiveData.readDword();
            local bloodTime = receiveData.readDword();
            local bloodRate = receiveData.readDword();
            sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_LIGHTNING, bloodProc, bloodLv, bloodTime,bloodRate);

        }


//ACTIVESTATUS_LIGHTNING

        obj.getVar("weapon").clear_vector();
        obj.getVar("weapon").push_vector(weaponType);

    }else if(id == 10)
    {

        local swordID = receiveData.readDword();

        local ani = obj.getCustomAnimation(12+swordID%7);
        obj.setCurrentAnimation(ani);
		local attackInfo = sq_GetCustomAttackInfo(obj, 1);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);


    }else if(id == 11)
    {
        local time = receiveData.readDword();
        local swordID = receiveData.readDword();

        local ani = obj.getCustomAnimation(124 + swordID);
        obj.setCurrentAnimation(ani);

//        obj.setTimeEvent(0,time,0,false);


		local attackInfo = sq_GetCustomAttackInfo(obj, 1);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);

    }else if(id == 12)
    {

//        local ani = obj.getCustomAnimation(19);
        local ani = obj.getVar().GetAnimationMap("", 
                    "passiveobject/zrr_skill/newswordman/animation/slashofboom/slashofboom_expl_ghost.ani"); 
        obj.setCurrentAnimation(ani);

		local attackInfo = sq_GetCustomAttackInfo(obj, 2);
		sq_SetCurrentAttackInfo(obj, attackInfo);

        local attackInfo = sq_GetCurrentAttackInfo(obj);
        sq_SetCurrentAttackBonusRate(attackInfo, attackBonusRate);



    }

}
