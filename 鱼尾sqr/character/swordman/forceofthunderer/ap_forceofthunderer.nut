function sq_AddFunctionName(appendage)
{
	appendage.sq_AddFunctionName("proc", "proc_appendage_FORCEOFTHUNDERER")
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_FORCEOFTHUNDERER")
}

function summon_FORCEOFTHUNDERER(obj)
{
	if(!obj) return;
	if(!obj.isMyControlObject()) return;
	local objectManager = obj.getObjectManager();
	if (objectManager.getCollisionObjectNumber() > 0)
	{
		local tarX = 0;
		local tarY = 0;
		local dist = 0;
		obj.getVar("flag2").clear_vector();
		obj.getVar("flag2").push_vector(0);

		for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1)
		{
			local object = objectManager.getCollisionObject(i);
			if (object && obj.isEnemy(object) && object.isInDamagableState(obj) && object.isObjectType(OBJECTTYPE_ACTIVE))
			{
				local posX = abs(object.getXPos() - obj.getXPos() );
				local posY = abs(object.getYPos() - obj.getYPos() );
				if (obj.getVar("flag2").get_vector(0) == 1)
				{
					local curD = posX * posX + posY * posY;
					if (curD < dist)
					{
						dist = curD;
						tarX = object.getXPos();
						tarY = object.getYPos();
					}
				}else{
					obj.getVar("flag2").clear_vector();
					obj.getVar("flag2").push_vector(1);
					tarX = object.getXPos();
					tarY = object.getYPos();
					dist = posX * posX + posY * posY;
				}
			}
		}

		if (tarX + tarY != 0)
		{
			// 固定伤害
			local power = obj.sq_GetPowerWithPassive(47, -1, 6, -1, 1.0);
			// 获取波动刻印技能等级
			local level = sq_GetSkillLevel(obj, 47);
			// 范围
			local size = sq_GetIntData(obj, 47, 8, level);
			// 感电等级
			local gdLeve = sq_GetIntData(obj, 47, 6, level);
			// 感电时间
			local gdTime = sq_GetIntData(obj, 47, 7, level);
			// 感电百分比？
			local gdProc = sq_GetLevelData(obj, 47, 7, level);
			// 感电伤害
			local gdRate = obj.sq_GetPowerWithPassive(47, -1, 8, -1, 0.18);

			obj.sq_StartWrite();
			obj.sq_WriteDword(255); // 使用鱼尾版本的技能ID
			obj.sq_WriteDword(power);
			obj.sq_WriteDword(size);
			obj.sq_WriteDword(gdProc);
			obj.sq_WriteDword(gdLeve);
			obj.sq_WriteDword(gdTime);
			obj.sq_WriteDword(gdRate);
			sq_SendCreatePassiveObjectPacketPos(obj, 24371, 0, tarX, tarY + 1, 0);
		}
	}
}

function proc_appendage_FORCEOFTHUNDERER(appendage)
{
	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	parentObj = sq_ObjectToSQRCharacter(parentObj);

	if(!sourceObj || !parentObj)
    {
		appendage.setValid(false);
		return;
	}
	local currentT = appendage.getTimer().Get();
    local startT = appendage.getVar("t").get_vector(0);
    if (currentT - startT > parentObj.sq_GetIntData( 47, 5) )
    {
        summon_FORCEOFTHUNDERER(parentObj);
        appendage.getVar("t").set_vector(0,currentT);
    }
}

function onStart_appendage_FORCEOFTHUNDERER(appendage)
{
	if(!appendage) {
		return;
	}

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();

	if(!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}
	local startT = appendage.getTimer().Get();
    appendage.getVar("t").clear_vector();
    appendage.getVar("t").push_vector(startT);
}