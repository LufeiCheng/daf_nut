

function onSetState_swordman_bloodsword(obj, yWXyY8u3dXn_E, hgeLxr7YyvM, kG3r0jNtmhvMM9NRTiG)
{
 if(!obj) return;
  	local cancel_flag = obj.sq_GetIntData(103, 6);
	 if(!cancel_flag) return;
 local EeCPmIob7kdgy3Gz_8X72 = obj.sq_GetVectorData(hgeLxr7YyvM, 0); 
 if(EeCPmIob7kdgy3Gz_8X72 == 103)
 {
 
 
 if(obj.sq_IsMyControlObject())
 sq_SendCreatePassiveObjectPacket(obj, 48312, 0, 0, 0, 2000, obj.getDirection());
 obj.getVar().setBool(0, false); 
// obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 1.5, 1.5); 
 }
 else
 {
 obj.getVar().setBool(0, true); 
// obj.sq_SetStaticSpeedInfo(SPEED_TYPE_ATTACK_SPEED, SPEED_TYPE_ATTACK_SPEED, SPEED_VALUE_DEFAULT, SPEED_VALUE_DEFAULT, 12.0, 12.0); 
 }
} ;




function onProcCon_swordman_bloodsword(obj)
{
 if(!obj) return;
  	local cancel_flag = obj.sq_GetIntData(103, 6);
	 if(!cancel_flag) return;
 if(obj.getVar().getBool(0) == false && sq_GetCurrentFrameIndex(obj) >= 13)
 {
 local tAhtIufpbLca8msOl = obj.getMyPassiveObject(48312, obj.getMyPassiveObjectCount(48312)-1); 
 if(tAhtIufpbLca8msOl)
 sq_SendHitObjectPacketWithNoStuck(obj, tAhtIufpbLca8msOl, 0, 0, 0); 
 }
} ;


 
function onAttack_swordman_bloodsword(obj, tAhtIufpbLca8msOl, YGXdwQJdUVpnCGRKHN4uT01F, HY74MP1rfFnW)
{
 if(!obj || HY74MP1rfFnW) return;
 if(obj.getVar().getBool(0) == false)
 obj.getVar().setBool(0, true); 
} ;

function onCreateObject_swordman_bloodsword(obj, NNZHEjA0zm8Lbo3G6iK)
{
 if(!obj) return;
 	local cancel_flag = obj.sq_GetIntData(103, 6);
	 if(!cancel_flag) return;
// if(NNZHEjA0zm8Lbo3G6iK.isObjectType(OBJECTTYPE_PASSIVE))
 //{
 //local Wxdg_qfSO2Qaz5 = sq_GetCNRDObjectToCollisionObject(NNZHEjA0zm8Lbo3G6iK); 
// if(Wxdg_qfSO2Qaz5 && Wxdg_qfSO2Qaz5.getCollisionObjectIndex() == 20066)
// {
// if(obj.sq_IsMyControlObject())
//obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false); 
// }
// }
} ;

