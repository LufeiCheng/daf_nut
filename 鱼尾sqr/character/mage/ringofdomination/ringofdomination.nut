function checkExecutableSkill_ringofdomination(obj)
{
	if(!obj) return false;
	local isUse = obj.sq_IsUseSkill(116);
	if(isUse)
	{
		inituseBuffSkills1(obj);
		return true;
	}
	return false;
}

function checkCommandEnable_ringofdomination(obj)
{
	if(!obj) return false;

	return true;
}

function inituseBuffSkills1(obj)
{
	obj.getVar("ringofdominationkills").setBool(0,true);
	obj.getVar("ringofdominationkills").clear_vector();
	obj.getVar("ringofdominationkills").push_vector(0);
	obj.getVar("passBuffSkills").setBool(0,false);
	obj.getVar("realBuffSkills").clear_vector();
	local skillArray = [21,22,23,24,76, 77, 78, 79, 25, 80, 44, 45, 46, 47, 118, 82];
//76亡魂默克爾、77極光格雷林、78?影阿奎利斯、79火焰赫瑞克、25赫德爾、47精?王、80弗利特、44桑德爾、45魔界花、46路易絲、118憤怒的桑德爾、82征服者凱西利亞斯
	for(local i=0;i<skillArray.len();++i)
	{
		local skillIndex = skillArray[i];
		local skillLevel = sq_GetSkillLevel(obj, skillIndex);
		if(skillLevel <= 0) continue;
		local skill = sq_GetSkill(obj, skillIndex);
		local isCool = skill.isInCoolTime();
		if(isCool) continue;
		obj.getVar("realBuffSkills").push_vector(skillIndex);
	}
}

//proc
function useBuffSkills1(obj)
{
	local size = obj.getVar("realBuffSkills").size_vector();
	if(!size) return;
	local interval = 200;
	local castT1 = interval/2;
	local castT2 = interval/2;

	if(obj.getVar("ringofdominationkills").getBool(0))
	{
		if(!IsInterval(obj, interval)) return;
		local index = obj.getVar("ringofdominationkills").get_vector(0);
		if(index >= size)
		{
			obj.getVar("ringofdominationkills").setBool(0, false);
			obj.setEnableChangeState(true);
			return;
		}
		local skillIndex = obj.getVar("realBuffSkills").get_vector(index);
		local isUse = obj.sq_IsUseSkill(skillIndex);
		if(!isUse && !obj.getVar("passBuffSkills").getBool(0))
		{
			obj.getVar("ringofdominationkills").set_vector(0, index+1);
		}
		else
		{
			local aniIndex = 2;
			if(skillIndex == 47)
				aniIndex = 3;
			obj.sq_IntVectClear();
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(0);
			obj.sq_IntVectPush(skillIndex);
			obj.sq_IntVectPush(castT1);
			obj.sq_IntVectPush(castT2);
			obj.sq_IntVectPush(aniIndex);
			obj.sq_IntVectPush(4);
			obj.sq_IntVectPush(4);
			obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true);
			obj.getVar("ringofdominationkills").set_vector(0, index+1);
			obj.getVar("passBuffSkills").setBool(0,false);
		}
	}
}
