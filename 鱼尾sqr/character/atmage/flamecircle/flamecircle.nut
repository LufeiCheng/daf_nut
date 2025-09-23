SUB_STATE_FLAMECIRCLE_0 <- 0
SUB_STATE_FLAMECIRCLE_1 <- 1
SUB_STATE_FLAMECIRCLE_2 <- 2
SUB_STATE_FLAMECIRCLE_3 <- 3
SUB_STATE_FLAMECIRCLE_4 <- 4
SUB_STATE_FLAMECIRCLE_CASTING <- 5

SKL_LV_FRAMECIRCLE_0 <- 0
SKL_LV_FRAMECIRCLE_1 <- 1
SKL_LV_FRAMECIRCLE_2 <- 2
SKL_LV_FRAMECIRCLE_3 <- 3

function checkExecutableSkill_FlameCircle(obj) {

	if (!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_FLAMECIRCLE);

	if (b_useskill) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(SUB_STATE_FLAMECIRCLE_CASTING);
		obj.sq_AddSetStatePacket(STATE_FLAMECIRCLE, STATE_PRIORITY_IGNORE_FORCE, true);
		return true;
	}

	return false;

}

function checkCommandEnable_FlameCircle(obj) {

	if (!obj) return false;

	local state = obj.sq_GetState();

	return true;

}

function onSetState_FlameCircle(obj, state, datas, isResetTimer) {

	if (!obj) return;

	local substate = obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);

	obj.sq_StopMove();

	local posX = obj.getXPos();
	local posY = obj.getYPos();
	local posZ = obj.getZPos();

	obj.getVar().clear_vector();
	obj.getVar().push_vector(0);
	obj.getVar().push_vector(0);

	obj.getVar("expflag").clear_vector();
	obj.getVar("expflag").push_vector(0);

	if (substate == SUB_STATE_FLAMECIRCLE_CASTING) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLAMECIRCLE_CASTING);

		addElementalChain_ATMage(obj, ENUM_ELEMENT_FIRE);
	}
	else if (substate == SUB_STATE_FLAMECIRCLE_0) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLAMECIRCLE1);
		local pAni = obj.sq_GetCurrentAni();
		obj.getVar("isStand").clear_vector();
		obj.getVar("isStand").push_vector(0);

	}
	else if (substate == SUB_STATE_FLAMECIRCLE_1) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLAMECIRCLE2);
		local pAni = obj.sq_GetCurrentAni();

	}
	else if (substate == SUB_STATE_FLAMECIRCLE_2) {
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_FLAMECIRCLE3);
		obj.sq_PlaySound("MW_FLAMECILCLE"); 
		local attackBonusRate = obj.sq_GetBonusRateWithPassive(SKILL_FLAMECIRCLE, STATE_FLAMECIRCLE, SKL_LV_FRAMECIRCLE_3, 1.0);
		obj.sq_StartWrite();
		obj.sq_WriteDword(attackBonusRate);
		obj.sq_WriteDword(215);
		obj.sq_SendCreatePassiveObjectPacket(24357, 0, 0, 1, 47);
		obj.sq_SetShake(obj, 2, 300);

	}
}



function onProc_FlameCircle(obj) {

	if (!obj) return;

	local substate = obj.getSkillSubState();

	local pAni = obj.sq_GetCurrentAni();
	local frmIndex = obj.sq_GetCurrentFrameIndex(pAni);
	local currentT = sq_GetCurrentTime(pAni);
	local flagball = obj.sq_GetIntData(SKILL_FLAMECIRCLE, 6);

	if (substate == SUB_STATE_FLAMECIRCLE_0) {

		if (frmIndex >= 2) {
			if (!obj.getVar().get_vector(0)) {

				if (obj.isMyControlObject()) {
					local distanceL = 0;
					local h = 47;
					local offsetX = 200;


				if(flagball){
					local leftPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
					local rightPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);

					if (sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT && rightPress) {
						distanceL = offsetX;
						obj.getVar("isStand").set_vector(0, 1);
					}

					if (sq_GetDirection(obj) == ENUM_DIRECTION_LEFT && leftPress) {
						distanceL = offsetX;
						obj.getVar("isStand").set_vector(0, 1);
					}
				}

					local skill_level = obj.sq_GetSkillLevel(SKILL_FLAMECIRCLE);

					local spin_num = 0;
					local speed_rate = 0;
					local firstAttackRate = 0;

					local size = obj.sq_GetIntData(SKILL_FLAMECIRCLE, 0);
					local sizeRate = size.tofloat() / 100.0;
					if (distanceL == 200) {
						spin_num = obj.sq_GetLevelData(SKILL_FLAMECIRCLE, 0, skill_level)*2;
						speed_rate = obj.sq_GetLevelData(SKILL_FLAMECIRCLE, 1, skill_level);
						firstAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_FLAMECIRCLE, STATE_FLAMECIRCLE, 2, 1.0);
					}
					else {
						spin_num = obj.sq_GetLevelData(SKILL_FLAMECIRCLE, 0, skill_level);
						speed_rate = obj.sq_GetLevelData(SKILL_FLAMECIRCLE, 1, skill_level);
						firstAttackRate = obj.sq_GetBonusRateWithPassive(SKILL_FLAMECIRCLE, STATE_FLAMECIRCLE, 2, 1.0);
					}

					sq_BinaryStartWrite();
					sq_BinaryWriteWord(spin_num);
					sq_BinaryWriteFloat(sizeRate);
					sq_BinaryWriteFloat(speed_rate.tofloat());
					sq_BinaryWriteDword(firstAttackRate);
					sq_BinaryWriteDword(distanceL);
					obj.sq_SendCreatePassiveObjectPacket(24244, 0, distanceL, 0, h);
				}

				obj.getVar().set_vector(0, 1);
			}
		}

		if (frmIndex >= 3) {

			if (obj.getVar("isStand").get_vector(0) == 1) {
				obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
				return;
			}

			if (obj.getVar().get_vector(0) == 1) {
				local flame_passive_obj = obj.sq_GetPassiveObject(24244);
				local next_state = false;

				if (!flame_passive_obj) {
					next_state = true;
				}
				else {

					obj.setSkillCommandEnable(SKILL_FLAMECIRCLE, true);
					local iEnterSkill = obj.sq_IsEnterSkill(SKILL_FLAMECIRCLE);

					if (iEnterSkill != -1) {
						local pAni = flame_passive_obj.getCurrentAnimation();
						pAni.setSpeedRate(1000.0);
					}

					if (flame_passive_obj.sq_var.get_vector(3) == 1) {
						next_state = true;
					}
				}

				if (next_state) {

					if (obj.isMyControlObject()) {
						obj.sq_IntVectClear();
						obj.sq_IntVectPush(SUB_STATE_FLAMECIRCLE_1);
						obj.sq_AddSetStatePacket(STATE_FLAMECIRCLE, STATE_PRIORITY_USER, true);
					}
				}
			}
		}
	}
	else if (substate == SUB_STATE_FLAMECIRCLE_1) {} else if (substate == SUB_STATE_FLAMECIRCLE_2) {
		if (frmIndex >= 1) {
			if (!obj.getVar().get_vector(0)) {
				local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_FLAMECIRCLE, true, "Appendage/Character/ap_atmage_effect.nut", true);
				obj.getVar().set_vector(0, 1);
			}
		}
	}
}


function onEndCurrentAni_FlameCircle(obj) {

	if (!obj) return;

	local substate = obj.getSkillSubState();

	if (substate == SUB_STATE_FLAMECIRCLE_CASTING) {
		if (obj.isMyControlObject()) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_FLAMECIRCLE_0);
			obj.sq_AddSetStatePacket(STATE_FLAMECIRCLE, STATE_PRIORITY_USER, true);
		}
	}
	else if (substate == SUB_STATE_FLAMECIRCLE_0) {} else if (substate == SUB_STATE_FLAMECIRCLE_1) {
		if (obj.isMyControlObject()) {
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(SUB_STATE_FLAMECIRCLE_2);
			obj.sq_AddSetStatePacket(STATE_FLAMECIRCLE, STATE_PRIORITY_USER, true);
		}
	}
	else if (substate == SUB_STATE_FLAMECIRCLE_2) {
		if (obj.isMyControlObject()) {
			obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
		}
	}
}


function onAttack_FlameCircle(obj, damager, boundingBox, isStuck) {
	if (!obj) return;
	local substate = obj.getSkillSubState();

	if (substate == SUB_STATE_FLAMECIRCLE_2) {
		sq_AddHitObject(obj, damager);
	}
}


function createFlameCircleSpinEffectBack(obj) {

	local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());
	local sizeRate = parentChr.sq_GetIntData(SKILL_FLAMECIRCLE, 0);
	sizeRate = sizeRate.tofloat() / 100.0;

	local ani = sq_CreateAnimation("", "passiveobject/character/mage/animation/atflamecircle/spin_back02.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj.setCurrentPos(obj.getXPos(), obj.getYPos() - 1, obj.getZPos());
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
	//ÒÚ •ani Œ∞”¯?Õ‘”¯·„
	ani.setImageRateFromOriginal(sizeRate, sizeRate); 
	//ÒÚ •ani als›æ • ani”ﬁ·≥›Ô÷«
	ani.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
	//ÕÙÃ™?£¨x y z›Ô·„
	sq_SetAttackBoundingBoxSizeRate(ani, sizeRate, sizeRate, sizeRate);

	return pooledObj;

}

function createFlameCircleExplosionEffectBack(obj) {

	local ani = sq_CreateAnimation("", "passiveobject/character/mage/animation/atflamecircle/exp/exp_back07.ani");
	local pooledObj = sq_CreatePooledObject(ani, true);
	pooledObj.setCurrentPos(obj.getXPos(), obj.getYPos() - 2, obj.getZPos() - 5);
	pooledObj.setCurrentDirection(obj.getDirection());
	sq_AddObject(obj, pooledObj, 2, false);
	return pooledObj;
}