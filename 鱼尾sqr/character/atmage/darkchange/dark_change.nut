
SUB_STATE_DARK_CHANGE_READY	<- 0
SUB_STATE_DARK_CHANGE_START	<- 1
SUB_STATE_DARK_CHANGE_READY_SHOOT <- 2
SUB_STATE_DARK_CHANGE_SHOOT <- 3



function sendSubState_DarkChange(obj,subState)
{
	if(!obj) return;
	
	if(obj.isMyControlObject()) {
		obj.sq_IntVectClear();
		obj.sq_IntVectPush(subState); // substate?信透?信透
		obj.sq_AddSetStatePacket(STATE_DARK_CHANGE, STATE_PRIORITY_USER, true);
	}
}

function checkExecutableSkill_DarkChange(obj)
{
	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_DARK_CHANGE);
	if(b_useskill) {
		sendSubState_DarkChange(obj,SUB_STATE_DARK_CHANGE_READY);		
		return true;
	}		
	return false;
}

function checkCommandEnable_DarkChange(obj)
{
	if(!obj) return false;

	local state = obj.sq_GetState();
	

	return true;
}

function onSetState_DarkChange(obj, state, datas, isResetTimer)
{
	if(!obj) return;

	obj.sq_StopMove();
	local sq_var = obj.getVar();
	local skill_level	= sq_GetSkillLevel(obj, SKILL_DARK_CHANGE);
	local substate		= obj.sq_GetVectorData(datas, 0);
	obj.setSkillSubState(substate);

	if(substate == SUB_STATE_DARK_CHANGE_READY) 
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARK_CHANGE_READY);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DARK_CHANGE);		
		
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_DARK_CHANGE , STATE_DARK_CHANGE, 0, 1.0);
		obj.sq_SetCurrentAttackBonusRate(damage);
		sq_var.setBool(0,false); // ?信透?信透 : ?信透?信透?信透 ?信透想?信透 ?识?透?信透?信透 ?信透?信透				
		
		// 倩?信透?信透 ?锶?透?信透 ?信透?熊??透?信透 ?信透?信透
		// 倩?信透?信透 ?锶?透?信透 ?信透?信透??? ?信透??透???透 ?锶?透?信透 ?信透?信透 ?豉??透.
		// 倩?信透?信透 ?信透?信透?信透?信透 ???透 ?信透?暨??透.
		local skillLevel = sq_GetSkillLevel(obj, SKILL_DARK_CHANGE);
		local castTime  = sq_GetCastTime(obj, SKILL_DARK_CHANGE, skillLevel);
		local animation = sq_GetCurrentAnimation(obj);
		local castAniTime = sq_GetFrameStartTime(animation, 5);
		local speedRate = castAniTime.tofloat() / castTime.tofloat();
		
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);

		sq_StartDrawCastGauge(obj, castAniTime, true);
//		obj.sq_PlaySound("MW_DCHANGE");
	}
	else if(substate == SUB_STATE_DARK_CHANGE_START) 
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARK_CHANGE_START);
		sq_flashScreen(obj,0,0,800,150, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		
		local dark_range = sq_GetLevelData(obj, SKILL_DARK_CHANGE, 1, skill_level);
		dark_range = (dark_range + 100) * 0.01;
		
		local ani = sq_GetCurrentAnimation(obj);			
		if(ani){			
			sq_var.setBool(0,true);
			sq_var.setFloat(1,dark_range);
			ani.setAutoLayerWorkAnimationAddSizeRate(dark_range / 1.5);
			ani.setAttackBoundingBoxSizeRate(dark_range,false);
			ani.setAutoLayerWorkAnimationAddSizeRate((dark_range.tofloat() - 0.5));
		}
		
		// pvp?信透 ?侮?透 ?信透?信透 想?信透 ?信透诙?信透 ?信透?信透?信透 ??透?信透.
		if(!sq_isPVPMode() && obj.isMyControlObject()) { 
			obj.callBackAllObject(obj,0,OBJECTTYPE_ACTIVE);			

		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

		}
		sq_EndDrawCastGauge(obj);
		addElementalChain_ATMage(obj, ENUM_ELEMENT_DARK);
	}
	else if (substate == SUB_STATE_DARK_CHANGE_READY_SHOOT)
	{
	
		sq_EndDrawCastGauge(obj);
		addElementalChain_ATMage(obj, ENUM_ELEMENT_DARK);
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARK_CHANGE_READY_SHOOT);
		
	}
	else if (substate == SUB_STATE_DARK_CHANGE_SHOOT)
	{
		obj.sq_SetCurrentAnimation(CUSTOM_ANI_DARK_CHANGE_SHOOT);
		obj.sq_SetCurrentAttackInfo(CUSTOM_ATTACK_INFO_DARK_CHANGE);		
		
		local damage = obj.sq_GetBonusRateWithPassive(SKILL_DARK_CHANGE , STATE_DARK_CHANGE, 0, 1.0);
		sq_flashScreen(obj,0,0,800,153, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		obj.sq_SetCurrentAttackBonusRate(damage);
		createDarkChangeShootBeamEffect(obj, 20, 1, 77);
		createDarkChangeShootBeamBackEffect(obj,20, -1, 77);
		obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
			SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.0, 1.0);

	}
}


function createDarkChangeShootBeamEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/mage/effect/animation/atdarkchange/darkchangebeam_09.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	
	pooledObj.setCurrentDirection(obj.getDirection());
	
	//sq_moveWithParent(obj, pooledObj);
	
	sq_AddObject(obj,pooledObj,2,false);	

}


function createDarkChangeShootBeamBackEffect(obj, disX, disY, disZ)
{
	local ani = sq_CreateAnimation("","character/mage/effect/animation/atdarkchange/darkchangebeam_back01.ani");
	local pooledObj = sq_CreatePooledObject(ani,true);
	
	local posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), disX);
	
	pooledObj.setCurrentPos(posX,obj.getYPos() + disY,obj.getZPos() + disZ);
	
	pooledObj.setCurrentDirection(obj.getDirection());
	
	//sq_moveWithParent(obj, pooledObj);
	
	sq_AddObject(obj,pooledObj,2,false);	

}


function onAllCallBack_DarkChange(parentObj, obj, callBackIndex)
{		
	if(!obj)
		return true;
		
	printc("onAllCallBack_DarkChange");
	local ao = sq_GetCNRDObjectToActiveObject(obj);

	if(ao && sq_IsInScreenCollisionObject(obj,true) && parentObj.isEnemy(ao) ) {		
		// 0.?信透?暨?透%  1.?信透?信透?信透?信透% 2.?信透?信透 ?信透?信透 3.?信透?信透 坛?信透 4.?信透?信透 ?信透?锶??透		
		local skill_level	= sq_GetSkillLevel(parentObj, SKILL_DARK_CHANGE);	
		local dark_power	= sq_GetLevelData(parentObj, SKILL_DARK_CHANGE, 2, skill_level);	
		local dark_prob		= sq_GetLevelData(parentObj, SKILL_DARK_CHANGE, 3, skill_level);
		local dark_time		= sq_GetLevelData(parentObj, SKILL_DARK_CHANGE, 4, skill_level);
		
		sq_sendSetActiveStatusPacket(obj, parentObj, ACTIVESTATUS_BLIND, dark_prob.tofloat(), dark_power.tointeger(), false, dark_time.tointeger());
	}	
	return true;
}

function onEndState_DarkChange(obj, newState)
{
	if(!obj) return;
	local sq_var = obj.getVar();	
	
	if(newState != STATE_DARK_CHANGE) {
		local isResized = sq_var.getBool(0);
				
		if(isResized) {
			local ani = sq_GetCurrentAnimation(obj);		
			if(ani){
				local dark_range = sq_var.getFloat(1);
				ani.setAttackBoundingBoxSizeRate(1.0/dark_range,false);		
				ani.setAutoLayerWorkAnimationAddSizeRate(1.0 / (dark_range.tofloat() - 0.5));				
			}
		}
	}
}



function onEndCurrentAni_DarkChange(obj)
{

	if(!obj) return;

	local substate = obj.getSkillSubState();
	local yuwei_flag = obj.sq_GetIntData(SKILL_DARK_CHANGE, 0);
	if(substate == SUB_STATE_DARK_CHANGE_READY) 
	{

		local leftPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_LEFT, ENUM_SUBKEY_TYPE_ALL);
		local rightPress = sq_IsKeyDown(OPTION_HOTKEY_MOVE_RIGHT, ENUM_SUBKEY_TYPE_ALL);


		if(((sq_GetDirection(obj) == ENUM_DIRECTION_RIGHT && rightPress) || ( sq_GetDirection(obj) == ENUM_DIRECTION_LEFT && leftPress )) && yuwei_flag)
		{
			sendSubState_DarkChange(obj,SUB_STATE_DARK_CHANGE_SHOOT);
		}else
		{
			sendSubState_DarkChange(obj,SUB_STATE_DARK_CHANGE_START);
		}
	
		
	}
	else if(substate == SUB_STATE_DARK_CHANGE_START) 
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	else if (substate == SUB_STATE_DARK_CHANGE_READY_SHOOT)
	{
		sendSubState_DarkChange(obj,SUB_STATE_DARK_CHANGE_SHOOT);
	}
	else if (substate == SUB_STATE_DARK_CHANGE_SHOOT)
	{
		obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
	}
	

}

function onAttack_DarkChange(obj, damager, boundingBox, isStuck)
{
	if (!obj) return;
	
	local substate = obj.getSkillSubState();
	local attackInfo = sq_GetCurrentAttackInfo(obj);
	
	if (!attackInfo) return;
	

	if(sq_isPVPMode() || substate == 3) { // pvp?信透?信透 ?信透?信透 ?识铯? ?信透?宋裾 ??透?信透.
		// 0.?信透?暨?透%  1.?信透?信透?信透?信透% 2.?信透?信透 ?信透?信透 3.?信透?信透 坛?信透 4.?信透?信透 ?信透?锶??透		
		local skill_level	= sq_GetSkillLevel(obj, SKILL_DARK_CHANGE);	
		local dark_power	= sq_GetLevelData(obj, SKILL_DARK_CHANGE, 2, skill_level);	
		local dark_prob		= sq_GetLevelData(obj, SKILL_DARK_CHANGE, 3, skill_level);
		local dark_time		= sq_GetLevelData(obj, SKILL_DARK_CHANGE, 4, skill_level);
		
		sq_SetChangeStatusIntoAttackInfo(attackInfo, 0, ACTIVESTATUS_BLIND, dark_prob, dark_power, dark_time);
	}
}


function onKeyFrameFlag_DarkChange(obj, flagIndex)
{
	if(!obj) return true;
	
	local angle = 0;
	if(flagIndex == 1) {
		sq_SetMyShake(obj,2,160);	
	}
	return true;
}