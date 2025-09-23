
// 공통스킬 버스터모드에서 데미지율을 조정합니다. 버스터모드 혹은 다른 스킬에서 데미지레이트를 조정할때 이곳에서 조정을 합니다.
function getCurrentModuleDamageRate(obj)
{	
	if (!obj)
		return 1.0;

	local rate = 1.0;
	
		if (sq_getJob(obj) == 7) {
		local rate_atfighter = 100;
		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_1.nut")) {

		local skillLevel = sq_GetSkillLevel(obj, 41);
		local addRate = sq_GetLevelData(obj, 41, 9, skillLevel);
		local pSkillIndex = obj.getCurrentSkillIndex();
		if (pSkillIndex == 82) 
		rate_atfighter = rate_atfighter * (100 + addRate) / 100;
	}
		rate = rate * rate_atfighter.tofloat() / 100.0;

	}

/*	local appendage = obj.GetSquirrelAppendage("Character/Common/Burster/ap_Common_Burster.nut");

	if (appendage)
	{
		if (appendage.isValid())
		{
			local skillIndex = obj.getCurrentSkillIndex();

			// 버스터모드에 해당하는 공격이라면 데미지율을 낮추도록 값을 얻어옵니다.
			if (isEnableBursterSkill(obj, skillIndex))
			{
				local level = sq_GetSkillLevel(obj, SKILL_BURSTER);
				// (4) 데미지율 (%) (100%가 기본)
				local value = obj.sq_GetLevelData(SKILL_BURSTER, SKL_LVL_COLUMN_IDX_4, level);

				rate = value.tofloat() / 100.0;

				print(" burst level:" + level + " value:" + value + " getCurrentModuleDamageRate:" + rate.tofloat());
			}
		}
	}*/

	return rate.tofloat();
}