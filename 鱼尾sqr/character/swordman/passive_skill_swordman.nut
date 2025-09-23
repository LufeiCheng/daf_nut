function ProcPassiveSkill_Swordman(obj, skill_index, skill_level) {
	if (skill_index == 254) {
		if (skill_level > 0) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, skill_index, false, "character/gunner/latentability/ap_latentability.nut", true);
		}
	}
		return true;
}

function procSkill_Swordman(obj) {
	if (!obj) return false;
	procSkill_ghostSoulRelease(obj);//вл?ЫЇ?
	return true;
}



function getGhostSoulReleaseExecultableState(obj) {
	local state = obj.sq_GetState();
	if (state == 32 || state == 20 || state == 42 || state == 65 || state == 13 || state == 33 || state == 50) return true;

	if (state == STATE_SWORDMAN_SLASHOFBOOM || state == STATE_SWORDMAN_SLASHOFHELL || state == STATE_SWORDMAN_BLADEPHANTOMEX || state == STATE_SWORDMAN_ZIGADVENT) return true;

	return false;
}

function getGhostSoulRelease_Area_Distance(obj, state) {

	local posX = 0;

	if (state == 32 || state == 20 || state == 42 || state == 65 || state == STATE_SWORDMAN_SLASHOFBOOM) posX = obj.sq_GetIntData(SKILL_GHOST_SOUL_RELEASE, 0);
	else if (state == 33) posX = obj.sq_GetIntData(SKILL_GHOST_SOUL_RELEASE, 1);
	else if (state == 50 || state == STATE_SWORDMAN_SLASHOFHELL || state == STATE_SWORDMAN_BLADEPHANTOMEX || state == STATE_SWORDMAN_ZIGADVENT) posX = obj.sq_GetIntData(SKILL_GHOST_SOUL_RELEASE, 2);
	else if (state == 13) posX = obj.sq_GetIntData(SKILL_GHOST_SOUL_RELEASE, 3);

	posX = sq_GetDistancePos(obj.getXPos(), obj.getDirection(), posX);

	return posX;

}


function procSkill_ghostSoulRelease(obj) {
//	if (obj.sq_GetSkillLevel(SKILL_GHOST_SOUL_RELEASE) > 0) {
	local cancel_flag = obj.sq_GetIntData(35, 7);
	if(!cancel_flag) return;
	if (cancel_flag) {
		if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/ghostsoulrelease/ap_ghostsoulrelease.nut")) {
			local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, SKILL_GHOST_SOUL_RELEASE, false, "character/swordman/ghostsoulrelease/ap_ghostsoulrelease.nut", true);

		}
	} else {

		if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/ghostsoulrelease/ap_ghostsoulrelease.nut")) {

			CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/swordman/ghostsoulrelease/ap_ghostsoulrelease.nut");
		}
	}
}
