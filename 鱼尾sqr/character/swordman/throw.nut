
// 0.���Apd ����������
/*
	1.�������ʾ������?������£���?���������̤򥣬ʦ����������ʾ����apd
*/
function onAfterSetState_swordmanThrow(obj, state, datas, isResetTimer) {
    if (!obj) return;
    local throwIndex = obj.getThrowIndex();
    local throwState = obj.getThrowState();
    switch (throwIndex) {
        case 47: // ����ʾ�� skl index 47��������ʾ��������?
            if (CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_wavemark.nut"))
                CNSquirrelAppendage.sq_RemoveAppendage(obj, "character/swordman/appendage/ap_wavemark.nut"); // ��������apd
            local appendage = CNSquirrelAppendage.sq_AppendAppendage(obj, obj, 47, true, "character/swordman/appendage/ap_wavemark.nut", false);
			// ������ʥ������Apd ���ۯ������ʾ�ԡ��������������������apd����
            CNSquirrelAppendage.sq_Append(appendage, obj, obj, false);
            break;
    }
};
