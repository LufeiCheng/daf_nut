// 1.����С������̪����nut��Hook����

function onSetState_swordmanAttack(obj, state, datas, isResetTimer) {
		if (!obj) return;
}


function onAfterSetState_swordmanAttack(obj, state, datas, isResetTimer) {
    if (!obj) return;
	local cancel_flag = obj.sq_GetIntData(47, 4);
	 if(!cancel_flag) return;
	// ��������state?���substate?�����������ܨ����
    local _RxS8qXkVJS2rEYWZj2fu1 = obj.sq_GetVectorData(datas, 0);
    local K_0MF3eLe5Urn = obj.sq_GetVectorData(datas, 1);
    obj.getVar().clear_vector();
    obj.getVar().push_vector(_RxS8qXkVJS2rEYWZj2fu1);
    obj.getVar().push_vector(K_0MF3eLe5Urn);
	// ���ǡ�����ʾ�ԡ���μ�����
    wavemark_swordmanAttack(obj, state, datas, isResetTimer);
};


function wavemark_swordmanAttack(obj, state, datas, isResetTimer) {
	if (!obj) return;
	local cancel_flag = obj.sq_GetIntData(47,4);
	 if(!cancel_flag) return;
	// ��Ө�������������߾������apd ����������������ا
    if (!CNSquirrelAppendage.sq_IsAppendAppendage(obj, "character/swordman/appendage/ap_wavemark.nut")) return;
	// ������������̪�⦣���subState?
    local datas_0 = obj.sq_GetVectorData(datas, 0);
    if (obj.sq_IsMyControlObject()) {
		// �������� ��24370���obj������μ��࣬��Ѧ�߾����׾�������ͪټ��
        local damage = obj.sq_GetBonusRateWithPassive(47, 8, 3 + datas_0, 1.0);
        print(" x2:" + damage);
        sq_BinaryStartWrite();
		// ������̪�⦣����������Ѩ��?����
        sq_BinaryWriteDword(datas_0);
		// ������̪߿����� ����skl
        sq_BinaryWriteDword(damage);
		// ۡ����� �������obj���������obj�������������
        sq_SendCreatePassiveObjectPacket(obj, 24370, 0, 0, 0, 0, obj.getDirection());
		
    }
};


