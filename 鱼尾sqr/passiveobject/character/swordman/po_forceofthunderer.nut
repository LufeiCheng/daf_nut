// 雷神之息 - 被动对象 24370
// Force of Thunderer

function setCustomData_po_forceofthunderer(obj, receiveData) {
	if (!obj) return;

	local skillindex = receiveData.readDword();
	obj.getVar("skill").clear_vector();
	obj.getVar("skill").push_vector(skillindex);

	// 处理雷神之息技能
	if (skillindex == 255) {  // SKILL_FORCEOFTHUNDERER
		// 设置攻击信息,atk索引0
		local attackInfo = sq_GetCustomAttackInfo(obj, 0);
		// 使用引擎内置的雷电动画索引0
		setCurrentAnimationFromCutomIndex(obj, 0);

		// 读取参数
		local power = receiveData.readDword();
		local size = receiveData.readDword() / 100;
		local prob = receiveData.readDword();
		local level = receiveData.readDword();
		local duration = receiveData.readDword();
		local lightDamage = receiveData.readDword();

		// 设置范围缩放
		local areaSizeRate = size.tofloat();
		local ani = obj.getCurrentAnimation();
		ani.setImageRateFromOriginal(areaSizeRate, areaSizeRate);
		sq_SetAttackBoundingBoxSizeRate(ani, areaSizeRate, areaSizeRate, areaSizeRate);

		// 设置攻击属性
		sq_SetCurrentAttackInfo(obj, attackInfo);
		attackInfo = sq_GetCurrentAttackInfo(obj);
		sq_SetAddWeaponDamage(attackInfo, true);  // 包含武器伤害
		sq_SetCurrentAttackPower(attackInfo, power.tointeger());

		// 设置感电状态
		sq_SetChangeStatusIntoAttackInfoWithEtc(attackInfo, 0, ACTIVESTATUS_LIGHTNING,
			prob.tointeger(), level, duration, lightDamage, 0);

		sq_SetCurrentAttackeHitStunTime(attackInfo, 0);
	}
}

function setState_po_forceofthunderer(obj, state, datas) {
	if(!obj) return;

	obj.sq_SetCurrentState(state);

	if (state == 10) {  // PASSIVEOBJ_SUB_STATE_0
		local ani = obj.getCurrentAnimation();
		if (ani) {
			ani.setCurrentFrame(0);
		}
	}
}

function onEndCurrentAni_po_forceofthunderer(obj) {
	if(!obj) return;

	// 动画结束后销毁对象
	if(obj.sq_GetCurrentState() == 10) {
		sq_SendDestroyPacketPassiveObject(obj);
	}
}

function procAppend_po_forceofthunderer(obj) {
	if(!obj) return;

	// 处理攻击判定
	local state = obj.sq_GetCurrentState();
	if(state == 10) {
		local ani = obj.getCurrentAnimation();
		if(ani) {
			local currentFrame = ani.getCurrentFrame();
			local totalFrame = ani.getTotalFrame();

			// 在动画的特定帧进行攻击判定
			if(currentFrame == 5 || currentFrame == 10) {
				local attackInfo = sq_GetCurrentAttackInfo(obj);
				if(attackInfo) {
					sq_SendHitObjectPacket(obj, 0, attackInfo, 0);
				}
			}
		}
	}
}