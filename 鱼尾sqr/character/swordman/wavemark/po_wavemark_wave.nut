
// ������μ��obj��nut��ا
function setCustomData_po_wavemark_wave(obj, receiveData) {
    if (!obj) return;
	// ���������������?������٤٣?����̪��
    local atk_times = receiveData.readDword();
    
        obj.getVar("atk_times").clear_vector();
    obj.getVar("atk_times").push_vector(atk_times);
    // ����������Ѩ atk index = 0 ���������obj��atk����
    local obj_atkIndex = 0;

    local curAtk = sq_GetCustomAttackInfo(obj, obj_atkIndex);
 
 

	// �������������������ѣ���������߿��
    local damage = receiveData.readDword();
//    print(" x1:" + damage);

    //local sword = obj.getTopCharacter();
//	if (!sword)
//		return;
  //  local level = sq_GetSkillLevel(sword,47);
    
 //    local damage2 =  sq_GetLevelData(sword, 47, 3, level); 
//     print(" x2:" + damage2);
	// ��obj����������atk����߿��ݷ?
    sq_SetCurrentAttackBonusRate(curAtk, damage);
	sq_SetCurrentAttackInfo(obj, curAtk);
	// �������obj��ani���� ��������obj��������߲����?
    local obj_aniIndex = atk_times;
    obj.getVar().clear_vector();
    obj.getVar().push_vector(obj_aniIndex);
	// ���������� ����������?��٤�Ѣ[onTimeEvent]۰����OC����������۰���������α����
    obj.setTimeEvent(0, 50, 1, false);

}


function onTimeEvent_po_wavemark_wave(obj, timeEventIndex, timeEventCount) {
    if (!obj) return;
    if (timeEventIndex == 0) {
		// ������timeEventIndex��ݷ��������ani��?
		local obj_aniIndex = obj.getVar().get_vector(0);
        setCurrentAnimationFromCutomIndex(obj, obj_aniIndex);
		//��ΦPtl��������?���������
        obj.sq_SetMoveParticle("Particle/wavemark.ptl", 0.0, 0.0);
    }
    return false;

}


function onEndCurrentAni_po_wavemark_wave(obj) {

	// ��?̿���� �����?���������obj���ڣ�׾��Java����GC��⣬�������Ү��η������ا��
    if (!obj.isMyControlObject()) return;
    sq_SendDestroyPacketPassiveObject(obj);
}

/*
	����Դ������������������߾����??���������obj���������?ʦ
	obj
		ani
		atk
		ptl(����"Particle/wavemark.ptl"��������������obj���������ӣ�����?�����������죬߾��������������)

	�����⣬���������skl��������Ѩ����̪��࣬����ݷ?��ͣ������������������BUG
*/

