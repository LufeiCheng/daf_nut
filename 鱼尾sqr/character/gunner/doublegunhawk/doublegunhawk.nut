function qq1741449942_doublegunhawk(obj)
{
	if(SetIsInterval(obj, 50, "shuangying"))
	{
		local count = obj.getMyPassiveObjectCount(22254);
		local aRange = obj.sq_GetIntData(51, 21);
		for(local i=0;i<count;++i)
		{
			local object = obj.getMyPassiveObject(22254, i);
			if(!object) continue;
			if(!object.getVar("isLimit").getBool(0))
			{
				object.getVar("isLimit").setBool(0,true);
				local range = 500;
				local suckVel = 500;
				local dis = sq_GetDistanceObject(object, obj, true);
	
					local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, object, 38, false, "Character/ATMage/DarknessMantle/ap_ATDarknessMantle_suck.nut", false);
					appendage.sq_SetValidTime(200);
					if(appendage)
					{
						local pAni = object.getCurrentAnimation();
						local sizeRate = aRange;
						sizeRate = sizeRate.tofloat()/100.0;
						pAni.setImageRateFromOriginal(sizeRate, sizeRate);
						pAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
						sq_SetAttackBoundingBoxSizeRate(pAni, sizeRate, sizeRate, sizeRate);
						CNSquirrelAppendage.sq_Append(appendage, obj, object);
						local auraAppendage = appendage.sq_getAuraMaster("auraMaster1");
						if(!auraAppendage)
							auraAppendage = appendage.sq_AddAuraMaster("auraMaster1", obj, object, 1200, 18, 5, 0);
						if(auraAppendage)
							auraAppendage.setAttractionInfo(suckVel, suckVel, range, 1200);
					}
				
				
	
			}
		}
	}
}

function SetIsInterval(obj, CoolTime, name)
{
	if (!obj) return false;
	local timer = obj.getVar(name).get_ct_vector(0);
	if (!timer)
	{
		obj.getVar(name).clear_ct_vector();
		obj.getVar(name).push_ct_vector();
		timer = obj.getVar(name).get_ct_vector(0);
		timer.Reset();
		timer.Start(10000,0);
		return true;
	}
	local currentT = timer.Get();
	if(currentT > CoolTime)
	{
		timer.Reset();
		timer.Start(10000,0);
		return true;
	}
	return false;
}