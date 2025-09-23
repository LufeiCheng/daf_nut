// ?Ðô?×»Ý«? ??? ûãÐüø·í¶? ?Ðô?×»ñÕ? õµ Êµõµ.


function checkExecutableSkill_LightningWall(obj)
{
	if(!obj) return false;

	local b_useskill = obj.sq_IsUseSkill(SKILL_LIGHTNING_WALL);
	if(b_useskill) {
		obj.sq_AddSetStatePacket(STATE_LIGHTNING_WALL , STATE_PRIORITY_USER, false);
		return true;
	}	
	return false;

}

function checkCommandEnable_LightningWall(obj)
{
	if(!obj)
		return false;

	local state = obj.sq_GetState();
	
	if(state == STATE_ATTACK) {
		// ÚæÜé×ØñÕ?? ø÷??Ñ×Ý« ÙÀ?? ?í¶??õµ. ×«?Öð:?×³? [2012.04.20]
		return obj.sq_IsCommandEnable(SKILL_LIGHTNING_WALL);
	}
	
	return true;
}

function onEndState_LightningWall(obj, newState)
{
	if(!obj)
		return;

	if(newState != STATE_LIGHTNING_WALL) 
		setLightningWallState(obj, PO_LIGHTNING_WALL_DESTROY);
}

function onSetState_LightningWall(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	obj.sq_StopMove();

	obj.sq_SetCurrentAnimation(CUSTOM_ANI_LIGHTNING_WALL);

	// Ù»?? Ê¥?ÜË ïÊäù??? Ðã?
	// Ù»?? Ê¥?? ùÞ÷úÔô?, ñÕ???? Ê¥?? ùÞ÷ú ??õµ.
	// Ù»?? ??×»? ??ÜË òÚ??õµ.
	local skillLevel = sq_GetSkillLevel(obj, SKILL_LIGHTNING_WALL);
	local castTime  = sq_GetCastTime(obj, SKILL_LIGHTNING_WALL, skillLevel);
	local animation = sq_GetCurrentAnimation(obj);
	local castAniTime = sq_GetFrameStartTime(animation, 6);
	local speedRate = castAniTime.tofloat() / castTime.tofloat();
	obj.sq_SetStaticSpeedInfo(SPEED_TYPE_CAST_SPEED, SPEED_TYPE_CAST_SPEED,
		SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, speedRate, speedRate);

	sq_StartDrawCastGauge(obj, castAniTime, true);
	
	//??ìÚ????£¬?????5??
	local var = obj.getVar();
	obj.getVar("lastT").setInt(0,0);
	var.setBool(0,false);
	var.setBool(1,false);
	var.setBool(2,false);
	var.setBool(3,false);
	var.setBool(4,false);
	local wallNum = obj.sq_GetIntData(SKILL_LIGHTNING_WALL, 4);	//???í½
	local wallDelay = obj.sq_GetIntData(SKILL_LIGHTNING_WALL, 5); //????????
	obj.getVar("wall").setInt(0, wallNum);
	obj.getVar("wall").setInt(1, wallDelay);

	addElementalChain_ATMage(obj, ENUM_ELEMENT_LIGHT);
}

function setLightningWallState(obj, state)
{
	if(!obj || !obj.isMyControlObject())
		return;
		
	local count = obj.getMyPassiveObjectCount(24218);
	
	for(local i =0; i<count ; ++i) {
		local wall = obj.getMyPassiveObject(24218,i);
		if(wall) {
			local var = obj.getVar();	
			local isSendMove = var.getBool(0);
	
			if(state == PO_LIGHTNING_WALL_DESTROY) // ?Í³ ?Óú×ðÖÕ? Êç?? õ©Ê« ?õµ? ?äù×»×» Ï¿?õµ.
			{
				if(wall.getState() != PO_LIGHTNING_WALL_MOVE)
					wall.sendStateOnlyPacket(PO_LIGHTNING_WALL_DESTROY);
			}
			else
			{
				wall.sendStateOnlyPacket(state);
			}
		}
	}
}

function onEndCurrentAni_LightningWall(obj)
{
	if(!obj) return;
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onProc_LightningWall(obj)
{
	if(!obj) return;		
	if(!obj.isMyControlObject()) return;
    if (sq_GetCurrentFrameIndex(obj) <= 20) return;

	//??????
	local var = obj.getVar();
	local wallNum = obj.getVar("wall").getInt(0);
	local wallDelay = obj.getVar("wall").getInt(1);

	//ìÜ????????
	for (local i = 0; i <= wallNum; i++)
	{
		//???ID????????
		if(var.getBool(i)) continue;

		//???????????????é×??????????
		if (sq_GetObjectTime(obj) - obj.getVar("lastT").getInt(0) < wallDelay) continue;
		
		//?????????
		local wall = obj.getMyPassiveObject(24218,i);	
		if (wall) wall.sendStateOnlyPacket(PO_LIGHTNING_WALL_MOVE);

		//ä³?????ý®????
		var.setBool(i,true);
		obj.getVar("lastT").setInt(0, sq_GetObjectTime(obj));

		sq_flashScreen(obj, 0, 1000,500, 180, sq_RGB(0,0,0), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		obj.sq_PlaySound("LIGHTWALL_SHOT");
		break;
	}
}

function onKeyFrameFlag_LightningWall(obj, flagIndex)
{
	if(!obj) return true;	
	if (flagIndex == 1) {
		sq_EndDrawCastGauge(obj);
		sq_EffectLayerAppendageOnlyBody(obj, sq_RGB(255,255,255), 255, 0, 0, 320);
		
		if(obj.isMyControlObject()) {			
			local yByDirection = -1; 
			if(obj.getDirection() != ENUM_DIRECTION_RIGHT)
				yByDirection = 1;
						
			local moveDistance	= sq_GetIntData(obj, SKILL_LIGHTNING_WALL, 2); //2: ?Óú ÷ôÝ¤
			local wallNum = obj.sq_GetIntData(SKILL_LIGHTNING_WALL, 4);	//???í½
			local attackPower	= obj.sq_GetBonusRateWithPassive(SKILL_LIGHTNING_WALL , STATE_LIGHTNING_WALL, 0, 1.0);		
			local skill_level	= sq_GetSkillLevel(obj, SKILL_LIGHTNING_WALL);
			local prob			= sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 2, skill_level)/10.0; // 2. ?? Ì³ÜÑ (0.1%)
			local level			= sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 1, skill_level); // 1. ?? ??
			local duration		= sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 4, skill_level); // 4. ×»Ê¥?äï
			local lightDamage	= sq_GetLevelData(obj, SKILL_LIGHTNING_WALL, 3, skill_level); // 3. ?? Û¨ÛÈ?
	
			//????
			for (local i = 0; i <= wallNum; i++)
			{	
				// äù??õ³ ? ?Ðù
				obj.sq_StartWrite();
				obj.sq_WriteDword(moveDistance); // Ì«×××» x ??
				obj.sq_WriteDword(attackPower);
				obj.sq_WriteDword(skill_level);
				obj.sq_WriteFloat(prob);
				obj.sq_WriteDword(level);
				obj.sq_WriteDword(duration);
				obj.sq_WriteDword(lightDamage);
				obj.sq_SendCreatePassiveObjectPacket(24218, 0, 50, -1, 0);
			}
		}
	}
	else if (flagIndex == 2) {		
		sq_EffectLayerAppendageOnlyBody(obj, sq_RGB(255,255,255), 255, 0, 0, 400);
	}
	else if (flagIndex == 3) {
		// äù??õ³ ? ?Óú	
		sq_SetMyShake(obj,4,300);
	}	
	return true;
}

