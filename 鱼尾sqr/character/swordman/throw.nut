
// 0.ÎĞî°Apd âÍé©ñ®îÜŞÀï×
/*
	1.ë¦éÍ÷îÔÑÊ¾ìÔáÕéÍ?â¢îÜÔÑíÂ£¬ğô?â¢ÔÑíÂ÷ÖìéÌ¤ò¥£¬Ê¦ì¤øÚóµÓğ÷îÔÑÊ¾ìÔîÜapd
*/
function onAfterSetState_swordmanThrow(obj, state, datas, isResetTimer) {
    if (!obj) return;
    local throwIndex = obj.getThrowIndex();
    local throwState = obj.getThrowState();
    switch (throwIndex) {
        case 47: // ÷îÔÑÊ¾ìÔ skl index 47ö¦ãÀ÷îÔÑÊ¾ìÔîÜßãìÚ?
            if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_wavemark.nut"))
                CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/swordman/appendage/ap_wavemark.nut"); // ì¹ğ¶ñıîñîÜapd
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 47, true, "character/swordman/appendage/ap_wavemark.nut", false);
			// ñìãæôÕÊ¥úŞêóîÜApd Ó×ã¿Û¯¡¼÷îÔÑÊ¾ìÔ¡½ãÁ£¬òäìıîÏËÁí»ïÒëùîÜapdßÒ÷¾
            CNSquirrelAppendage.sq_Append(appendage, obj, obj, false);
            break;
    }
};
