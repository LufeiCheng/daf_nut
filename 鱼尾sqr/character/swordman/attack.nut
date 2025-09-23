// 1.äâìıĞ¡ËüŞÍÍôÌªßÒ÷¾nutîÜHookÙşËì

function onSetState_swordmanAttack(obj, state, datas, isResetTimer) {
		if (!obj) return;
}


function onAfterSetState_swordmanAttack(obj, state, datas, isResetTimer) {
    if (!obj) return;
	local cancel_flag = obj.sq_GetIntData(47, 4);
	 if(!cancel_flag) return;
	// îÏ×ìüòö¢state?ì¤Ğàsubstate?£¬î¹ğíÓğîïÏÑÜ¨Õáñé
    local _RxS8qXkVJS2rEYWZj2fu1 = obj.sq_GetVectorData(datas, 0);
    local K_0MF3eLe5Urn = obj.sq_GetVectorData(datas, 1);
    obj.getVar().clear_vector();
    obj.getVar().push_vector(_RxS8qXkVJS2rEYWZj2fu1);
    obj.getVar().push_vector(K_0MF3eLe5Urn);
	// àâöÇ¡¼÷îÔÑÊ¾ìÔ¡½ßÓÎ¼îÜâ¦Ëà
    wavemark_swordmanAttack(obj, state, datas, isResetTimer);
};


function wavemark_swordmanAttack(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local cancel_flag = obj.sq_GetIntData(47,4);
	 if(!cancel_flag) return;
	// ÷÷Ó¨£¬åıÍıÙÒêóÎĞî°ß¾ßÓëëîÜapd íâÜôåøòûú¼ı¨áÙÓÛØ§
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_wavemark.nut")) return;
	// îÏËÁĞìãùãÀÍôÌªó­â¦£¬ãÀsubState?
    local datas_0 = obj.sq_GetVectorData(datas, 0);
    if (obj.sq_IsMyControlObject()) {
		// îîóÑñŞİá Ğå24370ğ¡÷¾objîîâÃßÓÎ¼â¦Ëà£¬ğôÑ¦ğ¤ß¾êóïÇ×¾ŞÄ÷×ò±àâÍªÙ¼ãÒ
        local damage = obj.sq_GetBonusRateWithPassive(47, 8, 3 + datas_0, 1.0);
        print(" x2:" + damage);
        sq_BinaryStartWrite();
		// îîóÑÍôÌªó­â¦£¬éÄéÍÍóğ¤ËüÑ¨ÔÑ?ßãìÚ
        sq_BinaryWriteDword(datas_0);
		// îîóÑÍôÌªß¿úªâ¦Ëà ê¹í»éÍskl
        sq_BinaryWriteDword(damage);
		// Û¡áê÷×ò± ßæà÷ğ¡÷¾obj£¬ëîÖóğ¡÷¾objÕÎÍóğ¤÷åüùüùÍı
        sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 0, 0, 0, obj.getDirection());
		
    }
};


