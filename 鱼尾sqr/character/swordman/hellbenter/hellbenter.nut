function onProc_hellbenter(obj)
{
	 if(!obj) return;
	
	local cancel_flag = obj.sq_GetIntData(85, 23);
	 if(!cancel_flag) return;
	local ani=sq_GetCurrentAnimation(obj);
	local frameIndex=sq_GetAnimationFrameIndex(ani);
	if((frameIndex > 9) &&cancel_flag){
		obj.sq_AddSetStatePacket(0,STATE_PRIORITY_IGNORE_FORCE, true);
	}
}
