function useSkill_after_ATFighter(obj, skillIndex, consumeMp, consumeItem, oldSkillMpRate)
{
	if(!obj) return false;
	local flag = obj.sq_GetIntData(41, 3);
	if(!flag) return;

	if(skillIndex == 41)
	{
		local skillLevel = obj.sq_GetSkillLevel(41);
		if(skillLevel > 0)
		{
			local time = sq_GetLevelData(obj, 41, 0, skillLevel);
			local lieyanfenbuzhuijia = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzhuijia.nut", false);
			lieyanfenbuzhuijia.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(lieyanfenbuzhuijia, obj, obj);

			local lieyanfenbutimer = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/lieyanfenbu/ap_lieyanfenbutimer.nut", false);
			lieyanfenbutimer.sq_SetValidTime(time);
			CNSquirrelAppendage.sq_Append(lieyanfenbutimer, obj, obj);
		}
	}
	return true;
}