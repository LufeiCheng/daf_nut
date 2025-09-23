function onSetState_LieYanFenBuZhuiJia(obj, state, datas, isResetTimer)
{
	if(!obj) return;
	
	local flag = obj.sq_GetIntData(41, 3);
	if(!flag) return;

	obj.sq_StopMove();
	local zhuijia = obj.GetSquirrelAppendage("character/atfighter/lieyanfenbu/ap_lieyanfenbuzhuijia.nut");
	if(zhuijia)
		zhuijia.setValid(false);
	local zengshang_1 = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 41, false, "character/atfighter/lieyanfenbu/ap_lieyanfenbuzengshang_1.nut", false);
	CNSquirrelAppendage.sq_Append(zengshang_1, obj, obj);
	obj.sq_PlaySound("MF_FIREPOWER_RELEASE");
	obj.sq_SetCurrentAnimation(142);

}

function onEndCurrentAni_LieYanFenBuZhuiJia(obj)
{
	if(!obj) return;
	
	local flag = obj.sq_GetIntData(41, 3);
	if(!flag) return;
	
	obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
}

function onKeyFrameFlag_LieYanFenBuZhuiJia(obj,flagIndex)
{
	if(!obj) return false;
	local flag = obj.sq_GetIntData(41, 3);
	
	if(!flag) return;
	if(flagIndex == 10001)
	{
		sq_flashScreen(obj, 0, 80, 0, 178, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM);
		sq_SetMyShake(obj,15,160);
	}
	return true;
}
