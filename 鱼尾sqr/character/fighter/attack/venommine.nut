


function checkExecutableSkill_IllusionBomb(obj)
{
	if (!obj) return false;

        local isUse = obj.sq_IsUseSkill(69);
        if (isUse) 
        {
		obj.sq_IntVectClear();
		obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true);
            return true;
        }

	return false;
}



function checkCommandEnable_IllusionBomb(obj)
{

	return true;
}


