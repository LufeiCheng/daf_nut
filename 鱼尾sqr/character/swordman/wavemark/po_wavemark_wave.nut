
// îÏ×ìãÀÎ¼éÍobjîÜnutÓÛØ§
function setCustomData_po_wavemark_wave(obj, receiveData) {
    if (!obj) return;
	// ÓßëëîîóÑîÜğ¯ìéËÁ?£¬îÏ×ìÙ¤Ù£?ÖõÍôÌªó­â¦
    local atk_times = receiveData.readDword();
    
        obj.getVar("atk_times").clear_vector();
    obj.getVar("atk_times").push_vector(atk_times);
    // ÙùìãÜÅ÷×ËüÑ¨ atk index = 0 ÓßëëÖõğ¡÷¾objîÜatkßãìÚ
    local obj_atkIndex = 0;

    local curAtk = sq_GetCustomAttackInfo(obj, obj_atkIndex);
 
 

	// îÏ×ìüòö¢îÜãÀğ¯ì£ËÁîîóÑ£¬ÓßëëîÜãÀß¿úª
    local damage = receiveData.readDword();
//    print(" x1:" + damage);

    //local sword = obj.getTopCharacter();
//	if (!sword)
//		return;
  //  local level = sq_GetSkillLevel(sword,47);
    
 //    local damage2 =  sq_GetLevelData(sword, 47, 3, level); 
//     print(" x2:" + damage2);
	// ĞåobjßãìÚÓßëëîÜatkòäú¼ß¿úªİ·?
    sq_SetCurrentAttackBonusRate(curAtk, damage);
	sq_SetCurrentAttackInfo(obj, curAtk);
	// àâöÇğ¡÷¾objîÜanißãìÚ ßãìÚÓßëëobjÙşËì×ìîÜß²ËÁÔÑ?
    local obj_aniIndex = atk_times;
    obj.getVar().clear_vector();
    obj.getVar().push_vector(obj_aniIndex);
	// àâöÇïÒãÁĞï ßÓëëîÜô¥×â?ßæÙ¤ñ²Ñ¢[onTimeEvent]Û°Ûö£¨OCÌèßÈîÏåÆŞĞÛ°Ûö¡£¡£¡£ã§Î±Öõ£©
    obj.setTimeEvent(0, 50, 1, false);

}


function onTimeEvent_po_wavemark_wave(obj, timeEventIndex, timeEventCount) {
    if (!obj) return;
    if (timeEventIndex == 0) {
		// î¤ò¦ïÒîÜtimeEventIndexñéİ·åøÓßëëîÜaniÔÑ?
		local obj_aniIndex = obj.getVar().get_vector(0);
        setCurrentAnimationFromCutomIndex(obj, obj_aniIndex);
		//÷×Î¦PtlÕÎàâöÇÔÑ?îÜê¡ú¼Ïùîæ
        obj.sq_SetMoveParticle("Particle/wavemark.ptl", 0.0, 0.0);
    }
    return false;

}


function onEndCurrentAni_po_wavemark_wave(obj) {

	// ÔÑ?Ì¿áÖı¨ âÍé©áÑ?ßÓëëîÜğ¡÷¾objÓßßÚ£¨×¾ŞÄJava×ìîÜGCê«×â£¬ãÄö´ãÀñ®Ò®ğíÎ·×âîÜÓÛØ§£©
    if (!obj.isMyControlObject()) return;
    sq_SendDestroyPacketPassiveObject(obj);
}

/*
	îÏŞÁÔ´àâöÇèÇÖõñıı¨£¬ĞñÜâß¾ö¦ãÀ??ßÓëëîÜğ¡÷¾objæ¨ßÓëëÙşËì?Ê¦
	obj
		ani
		atk
		ptl(îÏËÁ"Particle/wavemark.ptl"ÖØÌÓìéïÒãÀĞñéÍobjîÜßÓÓßÖØÌÓ£¬ÜúöÎ?ÜôÓğßÓëëÙşËì£¬ß¾Õ×ğúÙşËìå¥ãÀåıó®)

	ğ¶ó®ñıèâ£¬ü½ëëú±ñ¼ëòskl×ìüªõöËüÑ¨îÜÍôÌªâ¦Ëà£¬ÜúöÎİ·?êÆÍ££¬üåõóúŞëòßÌÜôÓğîÜBUG
*/

