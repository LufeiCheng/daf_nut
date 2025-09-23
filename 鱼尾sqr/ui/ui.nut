
//swordman

function drawCustomUI_Swordman(obj)
{
    drawCustomUI_AllGrowJob(obj);
}

function setState_Swordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Swordman(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}

function procAppend_Swordman(obj)
{
	if(!obj) return;
	procAppend_AllGrowJob(obj);
}

function onStartDungeon_Swordman(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_Swordman(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_Swordman(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}



//at fighter
function drawCustomUI_ATFighter(obj)
{
    drawCustomUI_AllGrowJob(obj);
}
function setState_ATFighter(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_ATFighter(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}
function procAppend_ATFighter(obj)
{
	if(!obj) return;
	procAppend_AllGrowJob(obj);
}

function onStartDungeon_ATFighter(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_ATFighter(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_ATFighter(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}
//Fighter
function drawCustomUI_Fighter(obj)
{
    drawCustomUI_AllGrowJob(obj);
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_Fighter(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Fighter(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}
function procAppend_Fighter(obj)
{
	if(!obj) return;

	procAppend_AllGrowJob(obj);
	local cancel_flag = obj.sq_GetIntData(69, 2);
	 if(cancel_flag){ 
		illusionBombAdd(obj);
	}
}

function onStartDungeon_Fighter(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_Fighter(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_Fighter(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}


//ATGunner
function drawCustomUI_ATGunner(obj)
{
    drawCustomUI_AllGrowJob(obj);
}
function setState_ATGunner(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	ChangQing751675335_AlphaSupporta(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_ATGunner(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}
function procAppend_ATGunner(obj)
{
	if(!obj) return;
		local open_suck = obj.sq_GetIntData(51, 22);
		if(open_suck){
			qq1741449942_doublegunhawk(obj);
		}
	procAppend_AllGrowJob(obj);
}

function onStartDungeon_ATGunner(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_ATGunner(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_ATGunner(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}


//Gunner
function drawCustomUI_Gunner(obj)
{
    drawCustomUI_AllGrowJob(obj);
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_Gunner(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	ChangQing751675335_AlphaSupporta(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Gunner(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}
function procAppend_Gunner(obj)
{
	if(!obj) return;
	
		local open_suck = obj.sq_GetIntData(51, 22);
		if(open_suck){
			qq1741449942_doublegunhawk(obj);
		}
	procAppend_AllGrowJob(obj);
}

function onStartDungeon_Gunner(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_Gunner(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_Gunner(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}


//ATMage
function drawCustomUI_ATMage(obj)
{
    drawCustomUI_AllGrowJob(obj);
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_ATMage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_ATMage(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}
function procAppend_ATMage(obj)
{
	if(!obj) return;
	procAppend_AllGrowJob(obj);
}
function onStartDungeon_ATMage(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_ATMage(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_ATMage(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}

//Mage
function drawCustomUI_Mage(obj)
{
  drawCustomUI_AllGrowJob(obj);
}
function setState_Mage(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Mage(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}

function procAppend_Mage(obj)
{
	if(!obj) return;
	local can_use = obj.sq_GetIntData(116, 0);
	if(can_use){
		useBuffSkills1(obj);//簳觛巃��
	}
	procAppend_AllGrowJob(obj);
}

function onStartDungeon_Mage(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_Mage(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_Mage(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}


//Priest
function drawCustomUI_Priest(obj)
{
  drawCustomUI_AllGrowJob(obj);
}
function setState_Priest(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Priest(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}
function procAppend_Priest(obj)
{
	if(!obj) return;
	procAppend_AllGrowJob(obj);
}
function onStartDungeon_Priest(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_Priest(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_Priest(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}



//Thief
function drawCustomUI_Thief(obj)
{

  drawCustomUI_AllGrowJob(obj);
}
function setState_Thief(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_Thief(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}

function procAppend_Thief(obj)
{
	if(!obj) return;
	procAppend_AllGrowJob(obj);
}

function onStartDungeon_Thief(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_Thief(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_Thief(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}


//DemonicSwordman
function drawCustomUI_DemonicSwordman(obj)
{
    drawCustomUI_AllGrowJob(obj);
  //  drawMonsterBlood(obj);//怪物?條
}
function setState_DemonicSwordman(obj, state, datas, isResetTimer) {
	if (!obj) return;
	setState_AllGrowJob(obj, state, datas, isResetTimer);
	return;
}
function drawMainCustomUI_DemonicSwordman(obj)
{
	if (!obj)return;
	drawMainCustomUI_AllGrowJob(obj);
	return;
}
function procAppend_DemonicSwordman(obj)
{
	if(!obj) return;
	procAppend_AllGrowJob(obj);
}

function onStartDungeon_DemonicSwordman(obj)
{
	if(!obj) return;
	onStartDungeon_AllGrowJob(obj);
	//printAllFunctions(this);
	return;
}

function onStartMap_DemonicSwordman(obj)
{
	if(!obj) return;
	onStartMap_AllGrowJob(obj);
}

function resetDungeonStart_DemonicSwordman(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(!obj) return -1;
	resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount);
}



//common
function setState_AllGrowJob(obj, state, datas, isResetTimer) {
	if (!obj) return -1;
	//AllJobBuffNeo(obj); //jobBuff
	addSubState(obj, state, datas);   //debug
	return ;
}

function drawMainCustomUI_AllGrowJob(obj) {
	if (!obj) return;
	//dofile("debug.nut");  //魤鷍debug
	DEBUG_FLAG <-	0  //???
	DEBUG_ANI <-	0	//ani??
	DEBUG_SUBSTATE <-	0	//1?摐蜪substate

	if (DRAW_MONSTER_PID != -1) {
		drawMonsterUI(obj);
	}
	return;
}

function drawCustomUI_AllGrowJob(obj) {
	if (!obj) return;
	setCharacterComboUiAppendage(obj);
	drawCurrentSkillCoolTimeUI(obj);//技?冷卻
	drawCustomUI_DeBug(obj);
	return;
}

function procAppend_AllGrowJob(obj)
{
	if(!obj) return;
	return;
}

function onStartDungeon_AllGrowJob(obj){
	if (!obj) return;
	//ReadAheadBuffAni(obj);
	if (sq_isPVPMode()) return;
	if (sq_IsMyCharacter(obj)) {
		setCharacterAppendage(obj);
	}
	return ;
}

function onStartMap_AllGrowJob(obj)
{
	if(!obj) return;
	if(sq_IsMyCharacter(obj))
	{	
		if(!sq_isPVPMode())
		{
			setCharacterAppendage(obj);
		}
	}
}

function resetDungeonStart_AllGrowJob(obj, moduleType, resetReason, isDeadTower, isResetSkillUserCount)
{
	if(sq_isPVPMode()) return -1;
	if(sq_IsMyCharacter(obj) && resetReason == REASON_DEATH)
	{	
		setCharacterAppendage(obj);
		//CreateBloodyFruitDuegonDarkEffect(obj);
	}
}
