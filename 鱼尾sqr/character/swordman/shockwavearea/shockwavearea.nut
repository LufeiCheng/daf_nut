

function onCreateObject_swordman_shockwavearea(obj, rJRpsrmRSbKulEBkp)
{
 if(!obj) return;
 
	local cancel_flag = obj.sq_GetIntData(57, 5);
	 if(!cancel_flag) return;
 
 if(rJRpsrmRSbKulEBkp.isObjectType(OBJECTTYPE_PASSIVE))
 {
 local Sc3DmgxApX8z5D9 = sq_GetCNRDObjectToCollisionObject(rJRpsrmRSbKulEBkp); 
 if(Sc3DmgxApX8z5D9 && Sc3DmgxApX8z5D9.getCollisionObjectIndex() == 20021)
 if(obj.sq_IsMyControlObject() && cancel_flag)
 obj.sq_AddSetStatePacket(STATE_STAND, STATE_PRIORITY_USER, false);
 }
} ;


function onProcCon_swordman_shockwavearea(obj)
{
 if(!obj) return;
 
 local cancel_flag = obj.sq_GetIntData(57, 5);
 if(!cancel_flag) return;
 
 if(!sq_GetSkill(obj, 74).isInCoolTime())
 { 
 obj.setSkillCommandEnable(74, true); 
 if(obj.sq_IsEnterSkill(74) != -1) 
 {
 local cIml7jnrbdarQ8XTzHorH = obj.sq_IsUseSkill(74); 
 if(cIml7jnrbdarQ8XTzHorH)
 {
 obj.sq_IntVectClear();
 obj.sq_IntVectPush(0);
 obj.sq_IntVectPush(0);
 obj.sq_IntVectPush(74);
 obj.sq_IntVectPush(0);
 obj.sq_IntVectPush(3400);
 obj.sq_IntVectPush(1);
 obj.sq_IntVectPush(4);
 obj.sq_IntVectPush(0);
 obj.sq_AddSetStatePacket(13, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
 
 if(!sq_GetSkill(obj, 62).isInCoolTime())
 { 
 obj.setSkillCommandEnable(62, true); 
 if(obj.sq_IsEnterSkill(62) != -1) 
 {
 local cIml7jnrbdarQ8XTzHorH = obj.sq_IsUseSkill(62); 
 if(cIml7jnrbdarQ8XTzHorH)
 {
 obj.sq_IntVectClear();
 obj.sq_IntVectPush(0);
 obj.sq_AddSetStatePacket(34, STATE_PRIORITY_USER, true); 
 return;
 }
 }
 }
} ;

