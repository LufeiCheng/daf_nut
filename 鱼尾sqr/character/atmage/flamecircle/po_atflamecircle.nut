function setCustomData_po_ATFlameCircle(obj, reciveData) {

	if (!obj) return;

	local spin_count = reciveData.readWord();
	local sizeRate = reciveData.readFloat();
	local speed = reciveData.readFloat();
	local attack_rate = reciveData.readDword();
	local isStop = reciveData.readDword();

	local pAni = obj.getCurrentAnimation();
	pAni.setSpeedRate(speed);

	obj.getVar("isStop").clear_vector();
	obj.getVar("isStop").push_vector(isStop);

	obj.sq_var.clear_vector();
	obj.sq_var.push_vector(spin_count); // 0
	obj.sq_var.push_vector(0); // 1
	obj.sq_var.push_vector(0); // 2
	obj.sq_var.push_vector(0); // 3

	obj.sq_var.clear_obj_vector();
	//增加ani 寬度跟高度率
	pAni.setImageRateFromOriginal(sizeRate, sizeRate);
	//增加ani als附加 ani大小比例
	pAni.setAutoLayerWorkAnimationAddSizeRate(sizeRate);
	//攻擊框，x y z比率
	sq_SetAttackBoundingBoxSizeRate(pAni, sizeRate, sizeRate, sizeRate);

	local pAttack = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackBonusRate(pAttack, attack_rate);

	local currentAttackInfo = sq_GetCurrentAttackInfo(obj);
	sq_SetCurrentAttackeHitStunTime(currentAttackInfo, 0);

	obj.getVar("spinBackEffect").clear_obj_vector();
	obj.getVar("spinBackEffect").push_obj_vector(createFlameCircleSpinEffectBack(obj));

}

function destroy_po_ATFlameCircle(obj) {

	local spinBackObj = obj.getVar("spinBackEffect").get_obj_vector(0);

	if (spinBackObj) spinBackObj.setValid(false);
}

function onAttack_po_ATFlameCircle(obj, damager, boundingBox, isStuck) {
	if (!obj) return 0;

	local spin_cnt = obj.sq_var.get_vector(1);
	local total_spin_cnt = obj.sq_var.get_vector(0);

	if (spin_cnt >= total_spin_cnt) {
		sq_AddHitObject(obj, damager);
	}

	return 0;
}

function procAppend_po_ATFlameCircle(obj) {
	if (!obj) return;

	local pChr = obj.getTopCharacter();

	if (!pChr) {
		if (obj.isMyControlObject()) {
			sq_SendDestroyPacketPassiveObject(obj);
			return;
		}
	}

	if (obj.getVar("isStop").get_vector(0) == 0) {
		if (pChr.getState() != STATE_FLAMECIRCLE) {
			if (obj.isMyControlObject()) {
				sq_SendDestroyPacketPassiveObject(obj);
				return;
			}
		}
	}

	local pAni = obj.getCurrentAnimation();
	local frmIndex = sq_GetAnimationFrameIndex(pAni);

	if (frmIndex >= 9) {
		sq_SetAnimationCurrentTimeByFrame(pAni, 0, true);

	} else {
		local spinBackObj = obj.getVar("spinBackEffect").get_obj_vector(0);
		if (spinBackObj) {

			local PAni = sq_GetCurrentAnimation(spinBackObj);
			sq_SetAnimationCurrentTimeByFrame(PAni, frmIndex, true);
		}

	}

	if (frmIndex >= 0 && frmIndex < 3) {
		if (obj.sq_var.get_vector(2) == 1) {
			local cnt = obj.sq_var.get_vector(1);

			cnt = cnt + 1;
			obj.sq_var.set_vector(1, cnt);

			obj.sq_var.set_vector(2, 0);
			obj.resetHitObjectList();
		}
	}

	if (frmIndex >= 3 && frmIndex <= 4) {
		if (obj.sq_var.get_vector(2) == 0) {
			local cnt = obj.sq_var.get_vector(1);
			obj.sq_var.set_vector(2, 1);
		}
	}

	local spin_cnt = obj.sq_var.get_vector(1);
	local total_spin_cnt = obj.sq_var.get_vector(0);

	if (spin_cnt >= (total_spin_cnt - 1)) {
		if (obj.sq_var.get_vector(3) == 0) {
			obj.sq_var.set_vector(3, 1);
		}
	}

	if (spin_cnt >= total_spin_cnt) {

		if (obj.isMyControlObject()) sq_SendDestroyPacketPassiveObject(obj);
	}

}