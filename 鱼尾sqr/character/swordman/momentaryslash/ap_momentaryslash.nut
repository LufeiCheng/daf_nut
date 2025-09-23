function sq_AddFunctionName(appendage) {
	appendage.sq_AddFunctionName("onStart", "onStart_appendage_momentaryslash")
	appendage.sq_AddFunctionName("proc", "proc_appendage_momentaryslash")
	appendage.sq_AddFunctionName("onEnd", "onEnd_appendage_momentaryslash")
}

function onStart_appendage_momentaryslash(appendage) {
	if (!appendage) return;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	if (!sourceObj || !parentObj) {
		appendage.setValid(false);
		return;
	}

	parentObj.getVar("downState").clear_vector();
	parentObj.getVar("downState").push_vector(0);  //0 downstate 0ãÀÝ©Íö£¬1ãÀÕªò¢£¬2ãÀÌ¿áÖÝ©Íö


}

function proc_appendage_momentaryslash(appendage) {
	if (!appendage) return;

	local parentObj = appendage.getParent();
	local sourceObj = appendage.getSource();
	

	//print(parentObj.getState()+","+parentObj.getDownState())

	if(!appendage) return;		
	if(!parentObj || !sourceObj) return;	
	
	if(parentObj.getVar("downState").get_vector(0)==0 && parentObj.getState() == 4){
		//sq_setCurrentAxisPos(parentObj, 2, 200);
		appendage.sq_AddEffectFront("passiveobject/baynk/swordman/animation/momentaryslash/roate.ani");
		parentObj.getVar("downState").set_vector(0,1);
	}
	local currentT = appendage.getTimer().Get();

	if(currentT>100){
		if(parentObj.getState()!=4 || (parentObj.getState()==4 && parentObj.getDownState() == 2 )){
			appendage.setValid(false);
		}
	}
	
	if(parentObj.getState()==4 &&parentObj.getDownState()==0){

		local rotate = (currentT * 2) % 1000;
		local value = 0.0;
		if (rotate < 250)
			value = 90.0;
		else if(rotate < 500)
			value = 180.0;
		else if(rotate < 750)
			value = 270.0;
		else if(rotate < 1000)
			value = 360.0;
		sq_SetCustomRotate(parentObj,sq_ToRadian(value));
	}


	return;
}


function onEnd_appendage_momentaryslash(appendage) {
	if (!appendage) return;

	local sourceObj = appendage.getSource();
	local parentObj = appendage.getParent();
	sourceObj = sq_GetCNRDObjectToSQRCharacter ( sourceObj );

	local appendDamageRate = 0.3;
	local attackRate = sq_GetBonusRateWithPassive(sourceObj, 9, -1, 0, appendDamageRate);
	local ap = sq_getNewAttackInfoPacket();
	ap.powerRate = attackRate;
	ap.useWeapon = true;
	ap.eType = ATTACKTYPE_PHYSICAL ;
	sq_SendHitObjectPacketByAttackInfo(sourceObj, parentObj, ap);

	sq_SetCurrentPos(parentObj, parentObj.getXPos(), parentObj.getYPos(), 0);
	sq_SetCustomRotate(parentObj, 0.0);	
	parentObj.sq_PlaySound("BLUNT_HIT");
	appendage.sq_DeleteEffectFront();
	appendage.sq_DeleteAppendages();
}