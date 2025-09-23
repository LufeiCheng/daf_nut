
function setCustomData_po_ChangQing_751675335_ATSwordman(obj, CQRpzjREtEPyNqDSSXnN)
{
	if(!obj) return
local CQf7NsHjgozHKxwt = CQRpzjREtEPyNqDSSXnN.readDword()
local CQuVyCu2t1KsDJQwFW = sq_ObjectToSQRCharacter(obj.getTopCharacter())
obj.getVar("skill").clear_vector()
obj.getVar("skill").push_vector(CQf7NsHjgozHKxwt)
switch(CQf7NsHjgozHKxwt)
	{
	case -1:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector()
obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 94:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 0)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 0)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 1)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 1)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.sq_SetMoveParticle("particle/atgorecross.ptl", 0.0, 0.0)
break
}
		break
case 88:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 2)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.sq_SetMoveParticle("particle/siryun.ptl", 0.0, 0.0)
obj.setTimeEvent(0,500/CQswkxD8ITQqeFtO1P,CQswkxD8ITQqeFtO1P,true)
break
}
		break
case 87:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
setCurrentAnimationFromCutomIndex(obj, 5)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
local CQ9z1LQJu7wWxt3B = obj.getCurrentAnimation()
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
}
		break
case 93:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 5)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 4)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 34:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 5)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 96:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 37)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 30)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 2:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 40)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 32)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
local CQ9z1LQJu7wWxt3B = obj.getCurrentAnimation()
local CQqbyPx5v7fUOpJR = 0.6
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
case 3:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnVAYQI3CpEtmyd = CQRpzjREtEPyNqDSSXnN.readDword()
local CQVOLCUT3ZM7ITcyHHxx = CQRpzjREtEPyNqDSSXnN.readDword()
local CQe6oiK4sSGeNvs4UC = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQVOLCUT3ZM7ITcyHHxx)
local CQXCgJma2BbY55aMacZD = sq_GetObjectByObjectId(CQuVyCu2t1KsDJQwFW, CQVOLCUT3ZM7ITcyHHxx)
if(CQXCgJma2BbY55aMacZD)
			{
				sq_moveWithParent(CQXCgJma2BbY55aMacZD, obj)
CQXCgJma2BbY55aMacZD = sq_GetCNRDObjectToActiveObject(CQXCgJma2BbY55aMacZD)
local CQxSF6RmvcVgMiE7P = CQXCgJma2BbY55aMacZD.getVar("changeswordCount").getInt(0)
CQXCgJma2BbY55aMacZD.getVar("changeswordCount").setInt(0, CQxSF6RmvcVgMiE7P + 1)
}
			local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 29)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
	

obj.setTimeEvent(0,CQe6oiK4sSGeNvs4UC,10,true)
obj.setTimeEvent(1,CQnVAYQI3CpEtmyd,1,false)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
local sw = obj.getTopCharacter();
if (!sw)
{
	sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh);
	return;
}
sw.applyBasicAttackUp(CQcHoYzDJEi29CQax3jh,8);
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh);
break
case 4:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 31)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 147:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
local CQw2Jd1RKLQAzO7599 = [15,19,23,27,31]
local CQiutpLfmRBQGY9cg = [8,12,16,20,24]
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 2:
			local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 3:
			local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, CQw2Jd1RKLQAzO7599[CQdYKgHym9xCBRCA])
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 10:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
setCurrentAnimationFromCutomIndex(obj, 13)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 6)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
local CQ9z1LQJu7wWxt3B = obj.getCurrentAnimation()
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
case 20:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
setCurrentAnimationFromCutomIndex(obj, 5)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
local CQ9z1LQJu7wWxt3B = obj.getCurrentAnimation()
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
}
		break
case 14:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar("ObjType").clear_vector()
obj.getVar("ObjType").push_vector(CQMDdfcGZbUtLtQi3VAT)
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQUyeNpWBSHucKOu = CQRpzjREtEPyNqDSSXnN.readDword()
local CQHn5hgxz9bqkbIrNC = CQRpzjREtEPyNqDSSXnN.readDword()
local CQJWmX6tMjrAmy4QovM = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ5qMeJZK8cAzk9Zh6 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 53)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 44)
sq_SetChangeStatusIntoAttackInfo(CQcHoYzDJEi29CQax3jh, 0, ACTIVESTATUS_BURN , CQUyeNpWBSHucKOu, CQ5qMeJZK8cAzk9Zh6, CQJWmX6tMjrAmy4QovM, CQHn5hgxz9bqkbIrNC, 1)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 2:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQUyeNpWBSHucKOu = CQRpzjREtEPyNqDSSXnN.readDword()
local CQJWmX6tMjrAmy4QovM = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ5qMeJZK8cAzk9Zh6 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkEAui3I9d2xs9TU = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 54)
sq_SetChangeStatusIntoAttackInfo(CQcHoYzDJEi29CQax3jh, 0, ACTIVESTATUS_FREEZE, CQUyeNpWBSHucKOu, CQ5qMeJZK8cAzk9Zh6, CQJWmX6tMjrAmy4QovM)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 52)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 43)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 4:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQUyeNpWBSHucKOu = CQRpzjREtEPyNqDSSXnN.readDword()
local CQJWmX6tMjrAmy4QovM = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ5qMeJZK8cAzk9Zh6 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 56)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 45)
sq_SetChangeStatusIntoAttackInfo(CQcHoYzDJEi29CQax3jh, 0, ACTIVESTATUS_BLIND, CQUyeNpWBSHucKOu, CQ5qMeJZK8cAzk9Zh6, CQJWmX6tMjrAmy4QovM)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.sq_SetMoveParticle( "particle/atmagicswordupwater.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(obj, 0, 1000)
break
}
		break
case 131:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQQTtK1c6nwaiitqrU = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ7pZG2lHAPlqKsv = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector()
obj.getVar().push_vector(CQQTtK1c6nwaiitqrU)
obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQswkxD8ITQqeFtO1P)
obj.getVar().push_vector(CQtKu5XZpitH82PN5)
obj.getVar().push_vector(CQ7pZG2lHAPlqKsv)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 34)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ7pZG2lHAPlqKsv = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector()
obj.getVar().push_vector(CQ7pZG2lHAPlqKsv)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 36)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 132:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector()
obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQqbyPx5v7fUOpJR)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
local CQXCgJma2BbY55aMacZD = CQuVyCu2t1KsDJQwFW.getVar("ThunderslashSub").get_obj_vector(0)
if(CQXCgJma2BbY55aMacZD)
				sq_moveWithParent(CQXCgJma2BbY55aMacZD, obj)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector()
obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQqbyPx5v7fUOpJR)
obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 133:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
local CQGsxPXP7UsScXmYsj = "character/swordman/atanimation/halfmoon2_obj.ani"
local CQYqqz387tKneAgA = sq_CreateAnimation("",CQGsxPXP7UsScXmYsj)
obj.setCurrentAnimation(CQYqqz387tKneAgA)
CQYqqz387tKneAgA.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQYqqz387tKneAgA.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQYqqz387tKneAgA, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 55)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
sq_moveWithParent(CQuVyCu2t1KsDJQwFW, obj)
break
}
		break
case 134:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQPeYqGzo1MeFkrzxW = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQNtTPkLf1CpJVDeys = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkwG8DTi4AhxZm8I = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQNtTPkLf1CpJVDeys)
obj.getVar().push_vector(CQkwG8DTi4AhxZm8I)
setCurrentAnimationFromCutomIndex(obj, 68 + CQPeYqGzo1MeFkrzxW)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 55)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 135:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar("ObjType").push_vector(CQMDdfcGZbUtLtQi3VAT)
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkwG8DTi4AhxZm8I = CQRpzjREtEPyNqDSSXnN.readDword()
local CQzTMkOh9rgm3VVm78 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ89dPhDM6xd4fXwU = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQkwG8DTi4AhxZm8I)
obj.getVar().push_vector(CQzTMkOh9rgm3VVm78)
obj.getVar().push_vector(CQtKu5XZpitH82PN5)
obj.getVar().push_vector(CQ89dPhDM6xd4fXwU)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 55)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
if(sq_GetSkillLevel(CQuVyCu2t1KsDJQwFW, 13) > 0 && CQuVyCu2t1KsDJQwFW.getWeaponSubType() == 2)
				obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
else
				obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkwG8DTi4AhxZm8I = CQRpzjREtEPyNqDSSXnN.readDword()
local CQzTMkOh9rgm3VVm78 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ89dPhDM6xd4fXwU = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 72)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 57)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
sq_BinaryStartWrite()
sq_BinaryWriteDword(135)
sq_BinaryWriteDword(2)
sq_BinaryWriteDword(CQ89dPhDM6xd4fXwU)
sq_SendCreatePassiveObjectPacketPos(obj,24383, 0,obj.getXPos(), obj.getYPos(), 0)
break
case 2:
			local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 71)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 57)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQtKu5XZpitH82PN5)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 3:
			local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 74)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 57)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQtKu5XZpitH82PN5)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 4:
			obj.sq_PlaySound("R_SHOCKWAVE_HIT")
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 74)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 57)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQtKu5XZpitH82PN5)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 10:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQkwG8DTi4AhxZm8I = CQRpzjREtEPyNqDSSXnN.readDword()
local CQzTMkOh9rgm3VVm78 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ89dPhDM6xd4fXwU = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQkwG8DTi4AhxZm8I)
obj.getVar().push_vector(CQzTMkOh9rgm3VVm78)
obj.getVar().push_vector(CQtKu5XZpitH82PN5)
obj.getVar().push_vector(CQ89dPhDM6xd4fXwU)
obj.setTimeEvent(0,100,CQzTMkOh9rgm3VVm78,true)
obj.setTimeEvent(1,100*(CQzTMkOh9rgm3VVm78+1),CQzTMkOh9rgm3VVm78,false)
break
}
		break
case 136:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar("ObjType").push_vector(CQMDdfcGZbUtLtQi3VAT)
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
local CQnYNcKAcOJMkEOxhhUJ = CQRpzjREtEPyNqDSSXnN.readDword()
local CQBPW19WMnabWC3GH9 = [
				"Character/Swordman/Effect/Animation/ATDevilSlash/nothing/finish_normal.ani",
				"Character/Swordman/Effect/Animation/ATDevilSlash/fire/finish_normal.ani",
				"Character/Swordman/Effect/Animation/ATDevilSlash/ice/finish_normal.ani",
				"Character/Swordman/Effect/Animation/ATDevilSlash/dark/finish_normal.ani",
				"Character/Swordman/Effect/Animation/ATDevilSlash/light/finish_normal.ani"
			]
local CQYqqz387tKneAgA = sq_CreateAnimation("",CQBPW19WMnabWC3GH9[CQnYNcKAcOJMkEOxhhUJ])
obj.setCurrentAnimation(CQYqqz387tKneAgA)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 58)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
CQYqqz387tKneAgA.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQYqqz387tKneAgA.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQYqqz387tKneAgA, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
local CQHXQgP648QszPMJrxPN = "passiveobject/changqing_atswordman/animation/atdevilslash/devilslashmultiattack.ani"
local CQ9z1LQJu7wWxt3B = sq_CreateAnimation("",CQHXQgP648QszPMJrxPN)
obj.setCurrentAnimation(CQ9z1LQJu7wWxt3B)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
obj.setTimeEvent(0,100,999,true)
break
}
		break
case 142:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar("ObjType").push_vector(CQMDdfcGZbUtLtQi3VAT)
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 84)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 59)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 84)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 60)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 137:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQtKu5XZpitH82PN5)
obj.getVar().push_vector(CQswkxD8ITQqeFtO1P)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 61)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 138:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQG8At1PMpoRpZJt = CQRpzjREtEPyNqDSSXnN.readDword()
local CQe6oiK4sSGeNvs4UC = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQtKu5XZpitH82PN5)
obj.getVar().push_vector(CQG8At1PMpoRpZJt)
obj.getVar().push_vector(CQe6oiK4sSGeNvs4UC)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 139:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			obj.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
			obj.addSetStatePacket(30, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
			obj.addSetStatePacket(40, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
			obj.addSetStatePacket(50, null, STATE_PRIORITY_AUTO, false, "")
break
case 5:
			obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 140:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			obj.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
			obj.addSetStatePacket(30, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
			obj.addSetStatePacket(40, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
			obj.addSetStatePacket(50, null, STATE_PRIORITY_AUTO, false, "")
break
case 5:
			obj.addSetStatePacket(60, null, STATE_PRIORITY_AUTO, false, "")
break
case 6:
			obj.addSetStatePacket(70, null, STATE_PRIORITY_AUTO, false, "")
break
case 7:
			obj.addSetStatePacket(80, null, STATE_PRIORITY_AUTO, false, "")
break
case 8:
			obj.addSetStatePacket(90, null, STATE_PRIORITY_AUTO, false, "")
break
case 9:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQG8At1PMpoRpZJt = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQG8At1PMpoRpZJt)
obj.addSetStatePacket(100, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 141:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 154)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 2)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 149:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 155)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 86)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 156)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 86)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 152:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQVOLCUT3ZM7ITcyHHxx = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector()
obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
local CQXCgJma2BbY55aMacZD = sq_GetObjectByObjectId(CQuVyCu2t1KsDJQwFW, CQVOLCUT3ZM7ITcyHHxx)
if(CQXCgJma2BbY55aMacZD)
				sq_moveWithParent(CQXCgJma2BbY55aMacZD, obj)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQVOLCUT3ZM7ITcyHHxx = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector()
obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQVOLCUT3ZM7ITcyHHxx)
obj.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
local CQXCgJma2BbY55aMacZD = sq_GetObjectByObjectId(CQuVyCu2t1KsDJQwFW, CQVOLCUT3ZM7ITcyHHxx)
if(CQXCgJma2BbY55aMacZD)
				sq_moveWithParent(CQXCgJma2BbY55aMacZD, obj)
break
case 2:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 88)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 157:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQy1XFYLSKey31BmEf5L = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnYNcKAcOJMkEOxhhUJ = CQRpzjREtEPyNqDSSXnN.readDword()
obj.setDirection(CQy1XFYLSKey31BmEf5L)
obj.getVar().clear_vector()
obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQy1XFYLSKey31BmEf5L)
obj.getVar().push_vector(CQnYNcKAcOJMkEOxhhUJ)
obj.getVar().push_vector(sq_GetDistancePos(obj.getXPos(), CQy1XFYLSKey31BmEf5L, 200))
obj.getVar().push_vector(obj.getYPos() - 25)
obj.getVar().push_vector(obj.getXPos())
obj.getVar().push_vector(obj.getYPos())
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 164)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQy1XFYLSKey31BmEf5L = CQRpzjREtEPyNqDSSXnN.readDword()
local CQnYNcKAcOJMkEOxhhUJ = CQRpzjREtEPyNqDSSXnN.readDword()
obj.setDirection(CQy1XFYLSKey31BmEf5L)
obj.getVar().clear_vector()
obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQy1XFYLSKey31BmEf5L)
obj.getVar().push_vector(CQnYNcKAcOJMkEOxhhUJ)
obj.getVar().push_vector(sq_GetDistancePos(obj.getXPos(), CQy1XFYLSKey31BmEf5L, 200))
obj.getVar().push_vector(obj.getYPos() - 25)
obj.getVar().push_vector(obj.getXPos())
obj.getVar().push_vector(obj.getYPos())
obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 158:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
local CQe6oiK4sSGeNvs4UC = CQRpzjREtEPyNqDSSXnN.readDword()
local CQfvoaIr1JEnfoo3c = 0
local CQqzM43ZmZqGEbTs = 0
if(sq_GetSkillLevel(CQuVyCu2t1KsDJQwFW, 163) > 0)
			{
				CQfvoaIr1JEnfoo3c = sq_GetLevelData(CQuVyCu2t1KsDJQwFW,153, 7, sq_GetSkillLevel(CQuVyCu2t1KsDJQwFW, 153))
CQtKu5XZpitH82PN5 = CQtKu5XZpitH82PN5 + (CQtKu5XZpitH82PN5*sq_GetLevelData(CQuVyCu2t1KsDJQwFW,153, 8, sq_GetSkillLevel(CQuVyCu2t1KsDJQwFW, 153))/100.0).tointeger()
}
			obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQtKu5XZpitH82PN5)
obj.getVar().push_vector(CQswkxD8ITQqeFtO1P + CQfvoaIr1JEnfoo3c)
obj.getVar().push_vector(CQe6oiK4sSGeNvs4UC)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 61)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 159:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnVAYQI3CpEtmyd = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnVAYQI3CpEtmyd)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 160:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 187)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 108)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQqbyPx5v7fUOpJR = CQRpzjREtEPyNqDSSXnN.readDword()/100.0
setCurrentAnimationFromCutomIndex(obj, 186)
local CQ9z1LQJu7wWxt3B = obj.getCurrentAnimation()
CQ9z1LQJu7wWxt3B.setImageRateFromOriginal(CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
CQ9z1LQJu7wWxt3B.setAutoLayerWorkAnimationAddSizeRate(CQqbyPx5v7fUOpJR)
sq_SetAttackBoundingBoxSizeRate(CQ9z1LQJu7wWxt3B, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR, CQqbyPx5v7fUOpJR)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 107)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
sq_flashScreen(obj,0,80,0,127,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
sq_flashScreen(obj,0,10,400,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 161:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQswkxD8ITQqeFtO1P = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQswkxD8ITQqeFtO1P)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQdYKgHym9xCBRCA = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 112)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(21 + CQdYKgHym9xCBRCA, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 110)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj.addSetStatePacket(30, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 164:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 196)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 113)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 165:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 198)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 115)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
setCurrentAnimationFromCutomIndex(obj, 197)
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 114)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
break
}
		break
case 166:
		local CQMDdfcGZbUtLtQi3VAT = CQRpzjREtEPyNqDSSXnN.readDword()
switch(CQMDdfcGZbUtLtQi3VAT)
		{
		case 0:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQtKu5XZpitH82PN5 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQ89dPhDM6xd4fXwU = CQRpzjREtEPyNqDSSXnN.readDword()
local CQbbQR9DYoVJD8Lz = CQRpzjREtEPyNqDSSXnN.readDword()
local CQeARE2SXCky7SXbA3mP = CQRpzjREtEPyNqDSSXnN.readDword()
obj.getVar().clear_vector();	
			obj.getVar().push_vector(CQnoPn6nUSMnF5pW7)
obj.getVar().push_vector(CQtKu5XZpitH82PN5)
obj.getVar().push_vector(CQ89dPhDM6xd4fXwU)
obj.getVar().push_vector(CQbbQR9DYoVJD8Lz)
obj.getVar().push_vector(CQeARE2SXCky7SXbA3mP)
obj.addSetStatePacket(10, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
			local CQnoPn6nUSMnF5pW7 = CQRpzjREtEPyNqDSSXnN.readDword()
local CQcHoYzDJEi29CQax3jh = sq_GetCustomAttackInfo(obj, 119)
sq_SetCurrentAttackBonusRate(CQcHoYzDJEi29CQax3jh, CQnoPn6nUSMnF5pW7)
sq_SetCurrentAttackInfo(obj, CQcHoYzDJEi29CQax3jh)
obj .addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
}
}

function setState_po_ChangQing_751675335_ATSwordman(obj, CQmuhbAxjcAztCHc, CQmOn5myVo4UXlf7)
{
	if(!obj) return
obj.getVar("state").clear_vector()
obj.getVar("state").push_vector(CQmuhbAxjcAztCHc)
local CQao8avZNcsmFFkWow5Q = obj.getVar("skill").get_vector(0)
local CQVys4Zlnbe16yCcSbM = sq_ObjectToSQRCharacter(obj.getTopCharacter())
switch(CQao8avZNcsmFFkWow5Q)
	{
	case -1:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			
			break
}
		break
case 34:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 10)
break
case 11:
			setCurrentAnimationFromCutomIndex(obj, 11)
break
case 12:
			setCurrentAnimationFromCutomIndex(obj, 12)
break
}
		break
case 96:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 36)
break
case 20:
			setCurrentAnimationFromCutomIndex(obj, 38)
obj.sq_SetMoveParticle("particle/siryun.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(obj, 0, 500)
break
case 21:
			setCurrentAnimationFromCutomIndex(obj, 39)
break
}
		break
case 14:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 66)
sq_SetfRotateAngle(obj.getCurrentAnimation(), sq_ToRadian(-45.0))
obj.sq_SetMoveParticle( "particle/atmagicswordupwater.ptl", 0.0, -45.0)
sq_SetSpeedToMoveParticle(obj, 0, 3000)
break
case 11:
			obj.sq_RemoveMoveParticle()
setCurrentAnimationFromCutomIndex(obj, 67)
sq_SetfRotateAngle(obj.getCurrentAnimation(), sq_ToRadian(-45.0))
break
}
		break
case 131:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 41)
obj.sq_SetMoveParticle( "particle/atillusionblade.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(obj, 0, 800)
obj.setTimeEvent(0,200,1,false)
break
case 11:
			setCurrentAnimationFromCutomIndex(obj, 42)
local CQgQWDlT6RTTDV8MfGo = obj.getCurrentAnimation()
sq_Rewind(CQgQWDlT6RTTDV8MfGo)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 35)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(1))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 12:
			setCurrentAnimationFromCutomIndex(obj, 43)
local CQgQWDlT6RTTDV8MfGo = obj.getCurrentAnimation()
sq_Rewind(CQgQWDlT6RTTDV8MfGo)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 36)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(1))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 13:
			setCurrentAnimationFromCutomIndex(obj, 44)
local CQgQWDlT6RTTDV8MfGo = obj.getCurrentAnimation()
sq_Rewind(CQgQWDlT6RTTDV8MfGo)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 35)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(1))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 20:
			setCurrentAnimationFromCutomIndex(obj, 45)
local CQwwLnpor7pUEmjBVhFi = obj.getVar().get_vector(0)/100.0
local CQ33o5XndGEGCWbqWx = obj.getCurrentAnimation()
CQ33o5XndGEGCWbqWx.setImageRateFromOriginal(CQwwLnpor7pUEmjBVhFi, CQwwLnpor7pUEmjBVhFi)
CQ33o5XndGEGCWbqWx.setAutoLayerWorkAnimationAddSizeRate(CQwwLnpor7pUEmjBVhFi)
sq_SetAttackBoundingBoxSizeRate(CQ33o5XndGEGCWbqWx, CQwwLnpor7pUEmjBVhFi, CQwwLnpor7pUEmjBVhFi, CQwwLnpor7pUEmjBVhFi)
break
}
		break
case 132:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			
			break
case 11:
			local CQqLgxaReRgaJ4byoOv5 = "Character/Swordman/Effect/Animation/ATThunderSlash/thunderslash_shockwave.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
obj.setCurrentAnimation(CQKOFyUDJySWSSves)
local CQTyvFMyYVxbKlWoCrH = obj.getVar().get_vector(1)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 36)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
local CQ33o5XndGEGCWbqWx = obj.getCurrentAnimation()
CQ33o5XndGEGCWbqWx.setImageRateFromOriginal(CQTyvFMyYVxbKlWoCrH, CQTyvFMyYVxbKlWoCrH)
CQ33o5XndGEGCWbqWx.setAutoLayerWorkAnimationAddSizeRate(CQTyvFMyYVxbKlWoCrH)
sq_SetAttackBoundingBoxSizeRate(CQ33o5XndGEGCWbqWx, CQTyvFMyYVxbKlWoCrH, CQTyvFMyYVxbKlWoCrH, CQTyvFMyYVxbKlWoCrH)
break
}
		break
case 135:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 75)
sq_BinaryStartWrite()
sq_BinaryWriteDword(135)
sq_BinaryWriteDword(3)
sq_BinaryWriteDword(obj.getVar().get_vector(0))
sq_SendCreatePassiveObjectPacketPos(obj,24383, 0,obj.getXPos(), obj.getYPos(), 0)
obj.setTimeEvent(10,2000,1,false)
break
case 11:
			setCurrentAnimationFromCutomIndex(obj, 76)
local CQKOFyUDJySWSSves = obj.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 12:
			setCurrentAnimationFromCutomIndex(obj, 77)
sq_BinaryStartWrite()
sq_BinaryWriteDword(135)
sq_BinaryWriteDword(4)
sq_BinaryWriteDword(obj.getVar().get_vector(3))
sq_SendCreatePassiveObjectPacketPos(obj,24383, 0,obj.getXPos(), obj.getYPos(), 0)
local CQXXtS2rXlyMOyeIb = [
				"passiveobject/changqing_atswordman/animation/atexcalibur/excalibur_sword_end_fire_ex_saberboom_fire.ani",
				"passiveobject/changqing_atswordman/animation/atexcalibur/excalibur_sword_end_ice_ex_saberboom_ice.ani",
				"passiveobject/changqing_atswordman/animation/atexcalibur/excalibur_sword_end_dark_ex_saberboom_dark.ani",
				"passiveobject/changqing_atswordman/animation/atexcalibur/excalibur_sword_end_light_ex_saberboom_light.ani",
			]
local CQxA8MD7me8KpkwpqOw = obj.getVar().get_vector(1)
if(CQxA8MD7me8KpkwpqOw > 0)
				DarktemplerCreateAniPooledObj(obj, CQXXtS2rXlyMOyeIb[CQxA8MD7me8KpkwpqOw-1] , false , true, obj.getXPos(), obj.getYPos(), 0,1.0)
break
}
		break
case 137:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			sq_flashScreen(obj,80,80,80,51,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
setCurrentAnimationFromCutomIndex(obj, 87)
local CQPuOjYZDLIOtDQA = obj.getVar().get_vector(2)
local CQ9Uzw7s8kkyEzQsur = obj.getCurrentAnimation()
local CQtkZOKlEqGmyHqFHXaw = sq_GetDelaySum(CQ9Uzw7s8kkyEzQsur)/2
obj.setTimeEvent(0,CQtkZOKlEqGmyHqFHXaw/CQPuOjYZDLIOtDQA,CQPuOjYZDLIOtDQA,true)
obj.setTimeEvent(1,1000,1,false)
break
case 11:
			obj.sq_setShake(obj,7,380);	
			setCurrentAnimationFromCutomIndex(obj, 88)
local CQB6QBo4MJvlwWmPZ = obj.getVar().get_vector(1)
local CQPuOjYZDLIOtDQA = obj.getVar().get_vector(2)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 65)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQB6QBo4MJvlwWmPZ)
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 138:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			local CQQ5Cqu2N48M1ftP = obj.getVar().get_vector(0)
local CQB6QBo4MJvlwWmPZ = obj.getVar().get_vector(1)
local CQ8YY3mGzvZEME5LzO = obj.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = obj.getVar().get_vector(3)
local CQVhrrSRf92YHI4Co = [97,97,99,95,101]
local CQ4unGpfPkrTcrX2 = [69,69,71,67,73]
setCurrentAnimationFromCutomIndex(obj, CQVhrrSRf92YHI4Co[CQ8YY3mGzvZEME5LzO])
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, CQ4unGpfPkrTcrX2[CQ8YY3mGzvZEME5LzO])
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
obj.setTimeEvent(0,CQWbCT1UHSQeXf4Gt8GN,999,true)
break
case 11:
			local CQQ5Cqu2N48M1ftP = obj.getVar().get_vector(0)
local CQB6QBo4MJvlwWmPZ = obj.getVar().get_vector(1)
local CQ8YY3mGzvZEME5LzO = obj.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = obj.getVar().get_vector(3)
local CQVhrrSRf92YHI4Co = [97,97,99,95,101]
local CQ4unGpfPkrTcrX2 = [69,69,71,67,73]
setCurrentAnimationFromCutomIndex(obj, CQVhrrSRf92YHI4Co[CQ8YY3mGzvZEME5LzO])
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, CQ4unGpfPkrTcrX2[CQ8YY3mGzvZEME5LzO])
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
obj.sq_SetMoveParticle( "particle/atgorecross.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(obj, 0, 800)
obj.setTimeEvent(1,1000,1,false)
break
case 12:
			obj.stopTimeEvent(0)
obj.sq_RemoveMoveParticle()
local CQQ5Cqu2N48M1ftP = obj.getVar().get_vector(0)
local CQB6QBo4MJvlwWmPZ = obj.getVar().get_vector(1)
local CQ8YY3mGzvZEME5LzO = obj.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = obj.getVar().get_vector(3)
local CQVhrrSRf92YHI4Co = [97,97,99,95,101]
local CQ4unGpfPkrTcrX2 = [69,69,71,67,73]
setCurrentAnimationFromCutomIndex(obj, CQVhrrSRf92YHI4Co[CQ8YY3mGzvZEME5LzO] + 1)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, CQ4unGpfPkrTcrX2[CQ8YY3mGzvZEME5LzO] + 1)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQB6QBo4MJvlwWmPZ)
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 13:
			local CQQ5Cqu2N48M1ftP = obj.getVar().get_vector(0)
local CQB6QBo4MJvlwWmPZ = obj.getVar().get_vector(1)
local CQ8YY3mGzvZEME5LzO = obj.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = obj.getVar().get_vector(3)
local CQVhrrSRf92YHI4Co = [97,97,99,95,101]
local CQ4unGpfPkrTcrX2 = [69,69,71,67,73]
setCurrentAnimationFromCutomIndex(obj, CQVhrrSRf92YHI4Co[CQ8YY3mGzvZEME5LzO])
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, CQ4unGpfPkrTcrX2[CQ8YY3mGzvZEME5LzO])
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
obj.sq_SetMoveParticle( "particle/atgorecross.ptl", 0.0, 0.0)
sq_SetSpeedToMoveParticle(obj, 0, 80)
break
}
		break
case 139:
		switch(CQmuhbAxjcAztCHc)
		{
		case 9:
			setCurrentAnimationFromCutomIndex(obj, 106)
break
case 10:
			setCurrentAnimationFromCutomIndex(obj, 103)
local CQKOFyUDJySWSSves = obj.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
local CQlnVn9xDhSjDYERl = CQVys4Zlnbe16yCcSbM.getObjectManager()
CQVys4Zlnbe16yCcSbM.getVar("JackcatchTarget").clear_obj_vector()
for(local CQIjYpZ78ic6I4EzWOt = 0; CQIjYpZ78ic6I4EzWOt < CQlnVn9xDhSjDYERl.getCollisionObjectNumber(); CQIjYpZ78ic6I4EzWOt+=1)
			{
				local CQ75VLwIQNZVFupj = "character/atswordman/1_swordmaster/jackcatch/ap_jackcatch.nut"
local CQrCr7jwMfqGO7oYar = CQlnVn9xDhSjDYERl.getCollisionObject(CQIjYpZ78ic6I4EzWOt)
local CQCS7YM6cy1apGolPCPs = sq_GetDistanceObject(obj, CQrCr7jwMfqGO7oYar, false)
if(CQrCr7jwMfqGO7oYar && CQrCr7jwMfqGO7oYar.isObjectType(OBJECTTYPE_ACTIVE) && CQCS7YM6cy1apGolPCPs < 250 && CQVys4Zlnbe16yCcSbM.isEnemy(CQrCr7jwMfqGO7oYar) && sq_IsHoldable(CQVys4Zlnbe16yCcSbM,CQrCr7jwMfqGO7oYar))
				{
					CQVys4Zlnbe16yCcSbM.getVar("JackcatchTarget").push_obj_vector(CQrCr7jwMfqGO7oYar)
local CQciIiAKsVyrPcinN = CNSquirrelAppendage.sq_AppendAppendage(CQrCr7jwMfqGO7oYar, CQVys4Zlnbe16yCcSbM, -1, false, CQ75VLwIQNZVFupj, true)
sq_HoldAndDelayDie(CQrCr7jwMfqGO7oYar, CQVys4Zlnbe16yCcSbM, true, false, false, 100, 100, ENUM_DIRECTION_NEUTRAL, CQciIiAKsVyrPcinN)
sq_MoveToAppendageForce(CQrCr7jwMfqGO7oYar, CQVys4Zlnbe16yCcSbM, CQrCr7jwMfqGO7oYar, 0, 0, 120, 500, true, CQciIiAKsVyrPcinN,true)
local CQYPLlm7v3LHXrBfoV = CQciIiAKsVyrPcinN.getAppendageInfo()
CQYPLlm7v3LHXrBfoV.setValidTime(5800)
}
			}
			break
case 11:
			setCurrentAnimationFromCutomIndex(obj, 104)
break
case 12:
			setCurrentAnimationFromCutomIndex(obj, 105)
break
case 20:
			setCurrentAnimationFromCutomIndex(obj, 122)
local CQKOFyUDJySWSSves = obj.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 21:
			setCurrentAnimationFromCutomIndex(obj, 124)
break
case 22:
			setCurrentAnimationFromCutomIndex(obj, 126)
break
case 30:
			setCurrentAnimationFromCutomIndex(obj, 112)
local CQKOFyUDJySWSSves = obj.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 31:
			setCurrentAnimationFromCutomIndex(obj, 114)
break
case 32:
			setCurrentAnimationFromCutomIndex(obj, 116)
break
case 40:
			setCurrentAnimationFromCutomIndex(obj, 117)
local CQKOFyUDJySWSSves = obj.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 41:
			setCurrentAnimationFromCutomIndex(obj, 119)
break
case 42:
			setCurrentAnimationFromCutomIndex(obj, 121)
break
case 50:
			setCurrentAnimationFromCutomIndex(obj, 107)
local CQKOFyUDJySWSSves = obj.getCurrentAnimation()
CQKOFyUDJySWSSves.setSpeedRate(300.0)
break
case 51:
			setCurrentAnimationFromCutomIndex(obj, 109)
break
case 52:
			setCurrentAnimationFromCutomIndex(obj, 111)
break
}
		break
case 140:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 143)
break
case 11:
			local CQqLgxaReRgaJ4byoOv5 = "passiveobject/changqing_atswordman/animation/atbreaksworddance/atbreaksworddance_magic_circle_loop.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
obj.setCurrentAnimation(CQKOFyUDJySWSSves)
sq_ChangeDrawLayer(obj, ENUM_DRAWLAYER_BOTTOM)
break
case 12:
			setCurrentAnimationFromCutomIndex(obj, 144)
break
case 20:
			setCurrentAnimationFromCutomIndex(obj, 145)
break
case 30:
			setCurrentAnimationFromCutomIndex(obj, 147)
break
case 40:
			setCurrentAnimationFromCutomIndex(obj, 148)
break
case 50:
			setCurrentAnimationFromCutomIndex(obj, 149)
break
case 60:
			setCurrentAnimationFromCutomIndex(obj, 150)
break
case 70:
			setCurrentAnimationFromCutomIndex(obj, 151)
break
case 80:
			setCurrentAnimationFromCutomIndex(obj, 152)
break
case 90:
			setCurrentAnimationFromCutomIndex(obj, 153)
break
case 9:
			setCurrentAnimationFromCutomIndex(obj, 146)
break
case 100:
			local CQQ5Cqu2N48M1ftP = obj.getVar().get_vector(0);	
			local CQMJVRLvix5BOdJ6wGBx = obj.getVar().get_vector(1)
local CQtheLdd42XYMkfu5X = [137,138,139,141,140,142]
local CQB467XVunQgXVfrdxWF = [80,81,82,84,83,85]
setCurrentAnimationFromCutomIndex(obj, CQtheLdd42XYMkfu5X[CQMJVRLvix5BOdJ6wGBx])
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, CQB467XVunQgXVfrdxWF[CQMJVRLvix5BOdJ6wGBx])
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 152:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			
			break
case 11:
			local CQqLgxaReRgaJ4byoOv5 = "Character/Swordman/Effect/Animation/ATThunderSlash/thunderslash_shockwave.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
obj.setCurrentAnimation(CQKOFyUDJySWSSves)
break
case 20:
			setCurrentAnimationFromCutomIndex(obj, 158)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 88)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
obj.setTimeEvent(0,330,10,true)
obj.setTimeEvent(1,330*10,1,false)
break
case 21:
			setCurrentAnimationFromCutomIndex(obj, 159)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 89)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 157:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 163)
break
case 11:
			
			setCurrentAnimationFromCutomIndex(obj, 164)
local CQU6UtTT1rHYDq7aA = "passiveobject/changqing_atswordman/animation/atgroupdance/dance_move_dodge.ani"
DarktemplerCreateAniPooledObj(obj, CQU6UtTT1rHYDq7aA , true , true, sq_GetDistancePos(obj.getXPos(), sq_GetOppositeDirection(obj.getDirection()), 100), obj.getYPos(), 60,1.0)
break
case 12:
			local CQqLgxaReRgaJ4byoOv5 = "passiveobject/changqing_atswordman/animation/atgroupdance/disappear_dance_fog.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
obj.setCurrentAnimation(CQKOFyUDJySWSSves)
break
case 20:
			setCurrentAnimationFromCutomIndex(obj, 176)
break
case 21:
			setCurrentAnimationFromCutomIndex(obj, 177)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 103)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 22:
			setCurrentAnimationFromCutomIndex(obj, 178)
break
case 30:
			setCurrentAnimationFromCutomIndex(obj, 170)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 99)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 31:
			setCurrentAnimationFromCutomIndex(obj, 171)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 100)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 32:
			setCurrentAnimationFromCutomIndex(obj, 172)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 101)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 40:
			setCurrentAnimationFromCutomIndex(obj, 165)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 94)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 41:
			setCurrentAnimationFromCutomIndex(obj, 166)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 94)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
obj.setTimeEvent(0,150,9,true)
obj.setTimeEvent(1,1000,1,false)
obj.playSound("BLOODDANCE_LOOP", 2012, 0,0,0)
break
case 42:
			obj.stopSound(2012)
setCurrentAnimationFromCutomIndex(obj, 167)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 95)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 50:
			setCurrentAnimationFromCutomIndex(obj, 168)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 97)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 51:
			setCurrentAnimationFromCutomIndex(obj, 169)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 98)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 60:
			setCurrentAnimationFromCutomIndex(obj, 173)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 102)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
for (local CQIjYpZ78ic6I4EzWOt = 0; CQIjYpZ78ic6I4EzWOt < 3 ; CQIjYpZ78ic6I4EzWOt++)
			{
				sq_BinaryStartWrite()
sq_BinaryWriteDword(149)
sq_BinaryWriteDword(0)
sq_BinaryWriteDword(obj.getVar().get_vector(0))
sq_SendCreatePassiveObjectPacketPos(obj, 24383, 0, sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 100 + 50*CQIjYpZ78ic6I4EzWOt), obj.getYPos(), 0)
}
			break
case 61:
			setCurrentAnimationFromCutomIndex(obj, 174)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 102)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 62:
			setCurrentAnimationFromCutomIndex(obj, 175)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 102)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 158:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 179)
break
case 11:
			setCurrentAnimationFromCutomIndex(obj, 180)
local CQ5AAT2XGrWcCKFNoOo = sq_CreateAnimation("passiveobject/changqing_atswordman/animation/atdarkstrike/loop/","dimus_slash.ani")
local CQwucriecZ6RJbFX = obj.getCurrentAnimation()
CQwucriecZ6RJbFX.addLayerAnimation(1, CQ5AAT2XGrWcCKFNoOo, true)
local CQQ5Cqu2N48M1ftP = obj.getVar().get_vector(0)
local CQPuOjYZDLIOtDQA = obj.getVar().get_vector(2)
local CQWbCT1UHSQeXf4Gt8GN = obj.getVar().get_vector(3)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 105)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQQ5Cqu2N48M1ftP)
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
obj.setTimeEvent(0,CQWbCT1UHSQeXf4Gt8GN,CQPuOjYZDLIOtDQA,true)
obj.setTimeEvent(1,CQWbCT1UHSQeXf4Gt8GN*CQPuOjYZDLIOtDQA,1,false)
break
case 12:
			setCurrentAnimationFromCutomIndex(obj, 181)
local CQ5AAT2XGrWcCKFNoOo = sq_CreateAnimation("passiveobject/changqing_atswordman/animation/atdarkstrike/end/","2_daimus.ani")
local CQwucriecZ6RJbFX = obj.getCurrentAnimation()
CQwucriecZ6RJbFX.addLayerAnimation(1, CQ5AAT2XGrWcCKFNoOo, true)
local CQB6QBo4MJvlwWmPZ = obj.getVar().get_vector(1)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 106)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, CQB6QBo4MJvlwWmPZ)
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
}
		break
case 159:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 182)
break
case 11:
			setCurrentAnimationFromCutomIndex(obj, 183)
local CQfzmJh1BN96EpI3ECP = obj.getVar().get_vector(0)
obj.setTimeEvent(1,CQfzmJh1BN96EpI3ECP,1,false)
break
case 12:
			setCurrentAnimationFromCutomIndex(obj, 185)
break
case 13:
			setCurrentAnimationFromCutomIndex(obj, 184)
break
}
		break
case 161:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 193)
break
case 11:
			setCurrentAnimationFromCutomIndex(obj, 194)
local CQPuOjYZDLIOtDQA = obj.getVar().get_vector(1)
obj.setTimeEvent(0,150,CQPuOjYZDLIOtDQA,true)
obj.setTimeEvent(1,150*CQPuOjYZDLIOtDQA,1,false)
break
case 21:
			setCurrentAnimationFromCutomIndex(obj, 188)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/daimus1_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(obj, CQ5AAT2XGrWcCKFNoOo , false , true, obj.getXPos(), obj.getYPos()-1, 60,1.0)
break
case 22:
			setCurrentAnimationFromCutomIndex(obj, 189)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/daimus2_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(obj, CQ5AAT2XGrWcCKFNoOo , false , true, obj.getXPos(), obj.getYPos()-1, 60,1.0)
break
case 23:
			setCurrentAnimationFromCutomIndex(obj, 190)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/daimus1_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(obj, CQ5AAT2XGrWcCKFNoOo , false , true, obj.getXPos(), obj.getYPos()-1, 60,1.0)
break
case 24:
			setCurrentAnimationFromCutomIndex(obj, 191)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/daimus2_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(obj, CQ5AAT2XGrWcCKFNoOo , false , true, obj.getXPos(), obj.getYPos()-1, 60,1.0)
break
case 30:
			setCurrentAnimationFromCutomIndex(obj, 192)
local CQ5AAT2XGrWcCKFNoOo = "character/swordman/effect/animation/atphnom/finish_phnom_daimus.ani"
DarktemplerCreateAniPooledObj(obj, CQ5AAT2XGrWcCKFNoOo , false , true, obj.getXPos(), obj.getYPos()-1, 60,1.0)
break
}
		break
case 166:
		switch(CQmuhbAxjcAztCHc)
		{
		case 10:
			setCurrentAnimationFromCutomIndex(obj, 199)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 105)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
break
case 11:
			obj.sq_PlaySound("SW_RAGNAROK_02")
setCurrentAnimationFromCutomIndex(obj, 200)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 105)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(0))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
if(CQVys4Zlnbe16yCcSbM.isMyControlObject())
				sq_SetMyShake(obj,1,1080)
local CQPuOjYZDLIOtDQA = obj.getVar().get_vector(3)
local CQwucriecZ6RJbFX = obj.getCurrentAnimation()
local CQtkZOKlEqGmyHqFHXaw = sq_GetDelaySum(CQwucriecZ6RJbFX)
obj.setTimeEvent(5,CQtkZOKlEqGmyHqFHXaw/CQPuOjYZDLIOtDQA,CQPuOjYZDLIOtDQA-4,true)
break
case 12:
			obj.sq_PlaySound("SW_RAGNAROK_03")
setCurrentAnimationFromCutomIndex(obj, 201)
local CQSJTQt5PLTa43qwDPT = sq_GetCustomAttackInfo(obj, 105)
sq_SetCurrentAttackBonusRate(CQSJTQt5PLTa43qwDPT, obj.getVar().get_vector(1))
sq_SetCurrentAttackInfo(obj, CQSJTQt5PLTa43qwDPT)
local CQPuOjYZDLIOtDQA = obj.getVar().get_vector(4) + 5
local CQwucriecZ6RJbFX = obj.getCurrentAnimation()
local CQtkZOKlEqGmyHqFHXaw = sq_GetDelaySum(CQwucriecZ6RJbFX)
obj.setTimeEvent(6,CQtkZOKlEqGmyHqFHXaw/CQPuOjYZDLIOtDQA,CQPuOjYZDLIOtDQA - 3,true)
break
case 13:
			setCurrentAnimationFromCutomIndex(obj, 202)
local CQwucriecZ6RJbFX = obj.getCurrentAnimation()
CQwucriecZ6RJbFX.setSpeedRate(140.0)
obj.setTimeEvent(0,500,1,false)
obj.sq_PlaySound("SW_RAGNAROK_04")
break
case 20:
			local CQqLgxaReRgaJ4byoOv5 = "passiveobject/changqing_atswordman/animation/atragnarok/fianl/ratkc_00.ani"
local CQKOFyUDJySWSSves = sq_CreateAnimation("",CQqLgxaReRgaJ4byoOv5)
obj.setCurrentAnimation(CQKOFyUDJySWSSves)
obj.setTimeEvent(1,1000,1,false)
break
}
		break
}
}

function procAppend_po_ChangQing_751675335_ATSwordman(obj)
{
	if(!obj) return
local CQpJZNWuoGW2H5IH = obj.getVar("skill").get_vector(0)
local CQRhpEFv5IYU7dJc = obj.getVar("state").get_vector(0)
local CQi4hZtdiZCl2KHqMO = obj.getVar("ObjType").get_vector(0)
local CQ1ZF88SVTw9VbHbj8S1 = sq_ObjectToSQRCharacter(obj.getTopCharacter())
switch(CQpJZNWuoGW2H5IH)
	{
	case -1:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 0:

			break
}
		break
case 34:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 11:
			if(CQ1ZF88SVTw9VbHbj8S1.getState() != 134)
				sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 96:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			local CQUPbvLtla3M3XGez = sq_GetObjectByObjectId(CQ1ZF88SVTw9VbHbj8S1, obj.getVar().get_vector(0))
if(!CQUPbvLtla3M3XGez)
				sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 14:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			if(obj.getZPos() < 4)
				obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 132:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			if(obj.getZPos() < 20)
			{
				sq_BinaryStartWrite()
sq_BinaryWriteDword(132)
sq_BinaryWriteDword(1)
sq_BinaryWriteDword(obj.getVar().get_vector(0))
sq_BinaryWriteDword(obj.getVar().get_vector(1))
sq_SendCreatePassiveObjectPacketPos(obj,24383, 0,obj.getXPos(), obj.getYPos(), 0)
sq_SendDestroyPacketPassiveObject(obj)
}
			break
}
		break
case 134:
		local CQEyNoExG3i3BoFUvCh = sq_GetObjectTime(obj)
local CQ4nbJnCdjfZL9FWme = sq_GetCurrentAnimation(obj)
local CQQjN6dOeoPANaBQIXse = sq_GetDelaySum(CQ4nbJnCdjfZL9FWme)
local CQL6txXw21loZRVuS = obj.getVar().get_vector(0)
local CQTC9yw6vbJQHLVrHO9 = sq_GetAccel(obj.getXPos(), CQL6txXw21loZRVuS, CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse, false)
sq_setCurrentAxisPos(obj, 0, CQTC9yw6vbJQHLVrHO9)
break
case 136:
		if(CQi4hZtdiZCl2KHqMO == 0)
			break
if(CQ1ZF88SVTw9VbHbj8S1.getState() != 136 || CQ1ZF88SVTw9VbHbj8S1.getVar("DevilslashXXX").getInt(0) != 3)
			sq_SendDestroyPacketPassiveObject(obj)
break
case 135:
		local CQEyNoExG3i3BoFUvCh = sq_GetObjectTime(obj)
if(CQRhpEFv5IYU7dJc == 10 && CQEyNoExG3i3BoFUvCh > 2000)
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 138:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			if(CQ1ZF88SVTw9VbHbj8S1.getVar("MagicswordshootIs").getBool(0) || CQ1ZF88SVTw9VbHbj8S1.getState() != 138 )
				obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 139:
		if(CQ1ZF88SVTw9VbHbj8S1.getState() != 139)
		{
			switch(CQRhpEFv5IYU7dJc)
			{
			case 11:
				obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 21:
				obj.addSetStatePacket(22, null, STATE_PRIORITY_AUTO, false, "")
break
case 31:
				obj.addSetStatePacket(32, null, STATE_PRIORITY_AUTO, false, "")
break
case 41:
				obj.addSetStatePacket(42, null, STATE_PRIORITY_AUTO, false, "")
break
case 51:
				obj.addSetStatePacket(52, null, STATE_PRIORITY_AUTO, false, "")
break
}
		}
		else
		{
			local CQ6ix3MEhBNRJCXy9 = CQ1ZF88SVTw9VbHbj8S1.getVar("JackcatchSub").getInt(0)
switch(CQ6ix3MEhBNRJCXy9)
			{
			case 1:
				if(CQRhpEFv5IYU7dJc == 21)
					obj.addSetStatePacket(22, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
				if(CQRhpEFv5IYU7dJc == 31)
					obj.addSetStatePacket(32, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
				if(CQRhpEFv5IYU7dJc == 41)
					obj.addSetStatePacket(42, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
				if(CQRhpEFv5IYU7dJc == 51)
					obj.addSetStatePacket(52, null, STATE_PRIORITY_AUTO, false, "")
break
}
		}
		break
case 140:
		if(CQ1ZF88SVTw9VbHbj8S1.getState() != 140)
		{
			if(CQ1ZF88SVTw9VbHbj8S1.getVar("BreaksworddanceF").getBool(0))
			{
				if(CQRhpEFv5IYU7dJc == 20 || CQRhpEFv5IYU7dJc == 30 || CQRhpEFv5IYU7dJc == 40 || CQRhpEFv5IYU7dJc == 50 || CQRhpEFv5IYU7dJc == 60 || CQRhpEFv5IYU7dJc == 70 || CQRhpEFv5IYU7dJc == 80 || CQRhpEFv5IYU7dJc == 90)
				{
					sq_BinaryStartWrite()
sq_BinaryWriteDword(140)
sq_BinaryWriteDword(9)
sq_BinaryWriteDword(CQ1ZF88SVTw9VbHbj8S1.sq_GetBonusRateWithPassive(140, -1, 3, getATSwordmanBonus(CQ1ZF88SVTw9VbHbj8S1,1.0,140)))
sq_BinaryWriteDword(GetMagicSwordAppIndex(CQ1ZF88SVTw9VbHbj8S1))
sq_SendCreatePassiveObjectPacketPos(obj,24383, 0,obj.getXPos(), obj.getYPos(), 0)
sq_SendDestroyPacketPassiveObject(obj)
}
				else if(CQRhpEFv5IYU7dJc == 11)
					sq_SendDestroyPacketPassiveObject(obj)
}
			else
				sq_SendDestroyPacketPassiveObject(obj)
}	
		else
		{
			local CQemZlAkyYW3SpXsgX9 = CQ1ZF88SVTw9VbHbj8S1.getVar("BreaksworddanceSub").getInt(0)
switch(CQemZlAkyYW3SpXsgX9)
			{
			case 1:
				if(CQRhpEFv5IYU7dJc == 20)
					obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
				if(CQRhpEFv5IYU7dJc == 30)
					obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
				if(CQRhpEFv5IYU7dJc == 40)
					obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
				if(CQRhpEFv5IYU7dJc == 50)
					obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 5:
				if(CQRhpEFv5IYU7dJc == 60)
					obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 6:
				if(CQRhpEFv5IYU7dJc == 70)
					obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 7:
				if(CQRhpEFv5IYU7dJc == 80)
					obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
case 8:
				if(CQRhpEFv5IYU7dJc == 90)
					obj.addSetStatePacket(9, null, STATE_PRIORITY_AUTO, false, "")
break
}
		}
		break
case 152:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			if(obj.getZPos() < 10 && CQ1ZF88SVTw9VbHbj8S1.getState() != 152)
			{
				sq_BinaryStartWrite()
sq_BinaryWriteDword(152)
sq_BinaryWriteDword(2)
sq_BinaryWriteDword(obj.getVar().get_vector(0))
sq_SendCreatePassiveObjectPacketPos(obj,24383, 0,obj.getXPos(), obj.getYPos(), 0)
sq_SendDestroyPacketPassiveObject(obj)
}
			break
case 20:
			local CQUPbvLtla3M3XGez = sq_GetObjectByObjectId(CQ1ZF88SVTw9VbHbj8S1, obj.getVar().get_vector(1))
if(!CQUPbvLtla3M3XGez)
				sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 157:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 10:
			local CQEyNoExG3i3BoFUvCh = sq_GetObjectTime(obj)
if(CQEyNoExG3i3BoFUvCh > 900)
			{
				obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
}
			break
case 11:
			local CQPVw1JUDxhoIbLai8cs = obj.getDirection()
local CQKwvzOnroOcg1XAw2Hk = obj.getVar().get_vector(3)
local CQnke3HFWu5FYKIdgn = obj.getVar().get_vector(4)
local CQ4nbJnCdjfZL9FWme = sq_GetCurrentAnimation(obj)
local CQQjN6dOeoPANaBQIXse = sq_GetDelaySum(CQ4nbJnCdjfZL9FWme)
local CQEyNoExG3i3BoFUvCh = sq_GetObjectTime(obj)
if(CQEyNoExG3i3BoFUvCh - 900 < 90)
			{
				local CQTC9yw6vbJQHLVrHO9 = sq_GetAccel(obj.getXPos(), CQKwvzOnroOcg1XAw2Hk, CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse/2, false)
local CQiMnsVWOoxFwnNAk7m = sq_GetAccel(obj.getYPos(), CQnke3HFWu5FYKIdgn, CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse/2, false)
sq_setCurrentAxisPos(obj, 0, CQTC9yw6vbJQHLVrHO9)
sq_setCurrentAxisPos(obj, 1, CQiMnsVWOoxFwnNAk7m)
}
			else
			{
				local CQTC9yw6vbJQHLVrHO9 = sq_GetAccel(obj.getXPos(), obj.getVar().get_vector(5), CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse/2, false)
local CQiMnsVWOoxFwnNAk7m = sq_GetAccel(obj.getYPos(), obj.getVar().get_vector(6), CQEyNoExG3i3BoFUvCh, CQQjN6dOeoPANaBQIXse/2, false)
sq_setCurrentAxisPos(obj, 0, CQTC9yw6vbJQHLVrHO9)
sq_setCurrentAxisPos(obj, 1, CQiMnsVWOoxFwnNAk7m)
}
			break
}
		break
case 159:
		switch(CQRhpEFv5IYU7dJc)
		{
		case 11:
			local CQEefnhICu1vUdVZp = sq_GetDistanceObject(obj, CQ1ZF88SVTw9VbHbj8S1, false)
if(CQEefnhICu1vUdVZp < 500 && sq_GetObjectTime(obj) > 1000)
			{
				local CQ4cSENzTByhrsVHOOY = "character/atswordman/2_demonslayer/greed/ap_atgreedbuff.nut"
local CQQfcLt5FY86mRCV = sq_GetIntData(CQ1ZF88SVTw9VbHbj8S1,159, 1)
local CQL1C8zK9PIVYZXL2I = CQ1ZF88SVTw9VbHbj8S1.getVar("ATGreedbuff").getInt(0)
if(CQL1C8zK9PIVYZXL2I < CQQfcLt5FY86mRCV)
				{
					CQ1ZF88SVTw9VbHbj8S1.getVar("ATGreedbuff").setInt(0, CQL1C8zK9PIVYZXL2I + 1)
local CQlJcv4QaCkFqUXG67WD = CNSquirrelAppendage.sq_AppendAppendage(CQ1ZF88SVTw9VbHbj8S1, CQ1ZF88SVTw9VbHbj8S1, -1, false, CQ4cSENzTByhrsVHOOY, false)
if (CQlJcv4QaCkFqUXG67WD != null)
					{
						CQlJcv4QaCkFqUXG67WD.sq_SetValidTime(sq_GetLevelData(CQ1ZF88SVTw9VbHbj8S1,159, 2, sq_GetSkillLevel(CQ1ZF88SVTw9VbHbj8S1, 159)))
CQlJcv4QaCkFqUXG67WD.setAppendCauseSkill(BUFF_CAUSE_SKILL, sq_getJob(CQ1ZF88SVTw9VbHbj8S1), 159, sq_GetSkillLevel(CQ1ZF88SVTw9VbHbj8S1, 159))
CQlJcv4QaCkFqUXG67WD.setEnableIsBuff(true)
CNSquirrelAppendage.sq_Append(CQlJcv4QaCkFqUXG67WD, CQ1ZF88SVTw9VbHbj8S1, CQ1ZF88SVTw9VbHbj8S1, true)
}
				}
				obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
}
			break
}
		break
}
}

function onAttack_po_ChangQing_751675335_ATSwordman(obj, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
{
	if(!obj) return
local CQcgTya1tE46hn32o7Rn = obj.getVar("skill").get_vector(0)
local CQA3KGUF53oVdX2Bs = obj.getVar("state").get_vector(0)
local CQdZm3fuUjfGkm15CXE = obj.getVar("ObjType").get_vector(0)
local CQyPJlCfSoAJf911 = sq_ObjectToSQRCharacter(obj.getTopCharacter())
switch(CQcgTya1tE46hn32o7Rn)
	{
	case -1:
		
		break
case 34:
		local CQNymrsBlMzI6aM85X = "character/atswordman/execution/ap_execution.nut"
local CQbn2SkApbKtRRN49zHg = CNSquirrelAppendage.sq_AppendAppendage(CQ7reJyJYIvrlELKhXM, obj, -1, false, CQNymrsBlMzI6aM85X, true)
if(sq_IsHoldable(obj,CQ7reJyJYIvrlELKhXM) && sq_IsGrabable(obj,CQ7reJyJYIvrlELKhXM) && !sq_IsFixture(CQ7reJyJYIvrlELKhXM))
			if(CQbn2SkApbKtRRN49zHg)
			{
				CQyPJlCfSoAJf911.getVar("Execution").setBool(0,true)
sq_HoldAndDelayDie(CQ7reJyJYIvrlELKhXM, obj, true, false, false, 100, 100, ENUM_DIRECTION_NEUTRAL, CQbn2SkApbKtRRN49zHg)
sq_MoveToAppendageForce(CQ7reJyJYIvrlELKhXM, obj, obj, 0, 0, CQ7reJyJYIvrlELKhXM.getZPos(), 50, true, CQbn2SkApbKtRRN49zHg,true)
local CQFjo11YduUU7ONfb = CQbn2SkApbKtRRN49zHg.getAppendageInfo()
CQFjo11YduUU7ONfb.setValidTime(600)
}
		break
case 14:
		if(CQdZm3fuUjfGkm15CXE == 4)
			sq_SendDestroyPacketPassiveObject(obj)
break
case 88:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 94:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 147:
		MagicSword_BasiconAttack(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 87:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
BluntmasteryAddAppend(CQyPJlCfSoAJf911)
break
case 131:
		if(CQA3KGUF53oVdX2Bs == 10)
		{
			obj.sq_RemoveMoveParticle()
obj.stopTimeEvent(0)
if(obj.getVar().get_vector(0) == 2 && sq_GetSkillLevel(CQyPJlCfSoAJf911, 13)>0)
				obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
else
				obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
}
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
BluntmasteryAddAppend(CQyPJlCfSoAJf911)
break
case 132:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
if(CQA3KGUF53oVdX2Bs == 11)
			BluntmasteryAddAppend(CQyPJlCfSoAJf911)
break
case 133:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 134:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
local CQg5RjS8eBMT2UB7q7l = obj.getVar().get_vector(1)
SendSetActiveStatus_Magicswordup(obj,CQyPJlCfSoAJf911,CQg5RjS8eBMT2UB7q7l,CQ7reJyJYIvrlELKhXM,CQCvsxZUhTejzI3XtO)
break
case 135:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
if(CQdZm3fuUjfGkm15CXE == 1 || CQdZm3fuUjfGkm15CXE == 2)
			BluntmasteryAddAppend(CQyPJlCfSoAJf911)
break
case 136:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 142:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
local CQoXDwrXJct88VVg = 2000
if(CQdZm3fuUjfGkm15CXE == 1)
			CQoXDwrXJct88VVg = 100
local CQNymrsBlMzI6aM85X = "character/atswordman/1_swordmaster/timeslash/ap_devilslash.nut"
local CQbn2SkApbKtRRN49zHg = CNSquirrelAppendage.sq_AppendAppendage(CQ7reJyJYIvrlELKhXM, obj, -1, false, CQNymrsBlMzI6aM85X, true)
if(sq_IsHoldable(obj,CQ7reJyJYIvrlELKhXM) && sq_IsGrabable(obj,CQ7reJyJYIvrlELKhXM) && !sq_IsFixture(CQ7reJyJYIvrlELKhXM))
			if(CQbn2SkApbKtRRN49zHg)
			{
				sq_HoldAndDelayDie(CQ7reJyJYIvrlELKhXM, obj, true, false, false, 100, 100, ENUM_DIRECTION_NEUTRAL, CQbn2SkApbKtRRN49zHg)
				local CQFjo11YduUU7ONfb = CQbn2SkApbKtRRN49zHg.getAppendageInfo()
				CQFjo11YduUU7ONfb.setValidTime(CQoXDwrXJct88VVg)
			}
		break
case 137:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 138:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
local CQg5RjS8eBMT2UB7q7l = obj.getVar().get_vector(2)
SendSetActiveStatus_Magicswordup(obj,CQyPJlCfSoAJf911,CQg5RjS8eBMT2UB7q7l,CQ7reJyJYIvrlELKhXM,CQCvsxZUhTejzI3XtO)
switch(CQA3KGUF53oVdX2Bs)
		{
		case 11:
			obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 139:
		switch(CQA3KGUF53oVdX2Bs)
		{
		case 10:
			
			break
}
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 140:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 141:
		MagicswordupOccur(CQyPJlCfSoAJf911, CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 149:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 152:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 157:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 158:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 159:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 160:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 161:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 164:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 165:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
case 166:
		Calldaimus_onAttack(CQyPJlCfSoAJf911,CQ7reJyJYIvrlELKhXM, CQrY66xpL5Vvbf4N, CQCvsxZUhTejzI3XtO)
break
}
}

function onKeyFrameFlag_po_ChangQing_751675335_ATSwordman(obj, CQZC8CL4kTXTGm4flChe)
{
	if(!obj) return false
local CQzSOdpJDEQ9XB4lY = obj.getVar("skill").get_vector(0)
local CQOilnbo833MHa3hmXs = obj.getVar("state").get_vector(0)
local CQ8pLEBhEUiJAR3c = obj.getVar("ObjType").get_vector(0)
local CQrQQLO1ModZJI2TA = sq_ObjectToSQRCharacter(obj.getTopCharacter())
switch(CQzSOdpJDEQ9XB4lY)
	{
	case -1:
		switch(CQZC8CL4kTXTGm4flChe)
		{
		case 0:
			
			break
}
		break
case 131:
		switch(CQZC8CL4kTXTGm4flChe)
		{
		case 1:
			if(CQOilnbo833MHa3hmXs != 13)
				break
if(obj.getVar().get_vector(0) != 2)
				break
sq_BinaryStartWrite()
sq_BinaryWriteDword(131)
sq_BinaryWriteDword(1)
sq_BinaryWriteDword(obj.getVar().get_vector(3))
sq_BinaryWriteDword(obj.getVar().get_vector(4))
sq_SendCreatePassiveObjectPacketPos(obj,24383, 0,sq_GetDistancePos(obj.getXPos(), obj.getDirection(), 100), obj.getYPos(), 0)
break
}
		break
case 140:
		if(!obj.isMyControlObject())
			break
switch(CQZC8CL4kTXTGm4flChe)
		{
		case 0:
			sq_SetMyShake(obj,50,400)
sq_flashScreen(obj,50,100,150,204,sq_RGB(255,255,255),GRAPHICEFFECT_LINEARDODGE,ENUM_DRAWLAYER_BOTTOM)
break
case 1:
			sq_flashScreen(obj,0,200,100,153,sq_RGB(0,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
case 141:
		if(!obj.isMyControlObject())
			break
switch(CQZC8CL4kTXTGm4flChe)
		{
		case 1:
			sq_SetMyShake(obj,12,350)
local CQCzL8QFcMOASn1bG7K = CQrQQLO1ModZJI2TA.getObjectManager()
for(local CQc9QvjbKbTisC1x = 0; CQc9QvjbKbTisC1x < CQCzL8QFcMOASn1bG7K.getCollisionObjectNumber(); CQc9QvjbKbTisC1x+=1)
			{
				local CQAN3iMfguJQDqMmVX = "character/atswordman/1_swordmaster/laevateinn/ap_laevateinn.nut"
local CQdGpJABtBnxINNvgx3w = CQCzL8QFcMOASn1bG7K.getCollisionObject(CQc9QvjbKbTisC1x)
if(CQdGpJABtBnxINNvgx3w &&CQdGpJABtBnxINNvgx3w.isInDamagableState(obj)&& CQdGpJABtBnxINNvgx3w.isObjectType(OBJECTTYPE_ACTIVE) && CQrQQLO1ModZJI2TA.isEnemy(CQdGpJABtBnxINNvgx3w) && sq_IsHoldable(CQrQQLO1ModZJI2TA,CQdGpJABtBnxINNvgx3w))
				{
	if(CNSquirrelAppendage.sq_IsAppendAppendage(CQdGpJABtBnxINNvgx3w, CQAN3iMfguJQDqMmVX))
		CNSquirrelAppendage.sq_RemoveAppendage(CQdGpJABtBnxINNvgx3w, CQAN3iMfguJQDqMmVX);				
sq_SendHitObjectPacket(obj,CQdGpJABtBnxINNvgx3w,0,0,CQdGpJABtBnxINNvgx3w.getZPos()+CQdGpJABtBnxINNvgx3w.getObjectHeight()/2)
}
			}
			break
}
		break
case 157:
		if(CQZC8CL4kTXTGm4flChe == 4 || CQZC8CL4kTXTGm4flChe == 2 || CQZC8CL4kTXTGm4flChe == 3 || CQZC8CL4kTXTGm4flChe == 1)
			obj.resetHitObjectList()
break
case 158:
		switch(CQZC8CL4kTXTGm4flChe)
		{
		case 1:
			if(CQrQQLO1ModZJI2TA.isMyControlObject())
			{
				obj.sq_setShake(obj,3,300);	
				sq_flashScreen(obj, 30, 25, 30, 200, sq_RGB(255,255,255), GRAPHICEFFECT_NONE, ENUM_DRAWLAYER_BOTTOM)
}
			break
}
		break
case 166:
		if(CQrQQLO1ModZJI2TA.isMyControlObject())
			break
switch(CQZC8CL4kTXTGm4flChe)
		{
		case 3:
			sq_SetMyShake(obj,7,180)
sq_flashScreen(obj,0,60,0,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 5:
			sq_flashScreen(obj,0,60,0,204,sq_RGB(139,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 6:
			sq_SetMyShake(obj,2,480)
break
case 7:
			sq_flashScreen(obj,0,60,0,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 9:
			sq_flashScreen(obj,0,60,0,204,sq_RGB(139,0,0),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 11:
			sq_flashScreen(obj,0,60,0,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
case 14:
			sq_SetMyShake(obj,5,180)
sq_flashScreen(obj,0,120,120,204,sq_RGB(255,255,255),GRAPHICEFFECT_NONE,ENUM_DRAWLAYER_BOTTOM)
break
}
		break
}
	
	return true
}

function onEndCurrentAni_po_ChangQing_751675335_ATSwordman(obj)
{
	if(!obj) return
local CQFdFFuOTzEAtm8qE7 = obj.getVar("skill").get_vector(0)
local CQgMb3ceosgoaV7bOeIl = obj.getVar("state").get_vector(0)
local CQoHNl6795SQuQ6eF = obj.getVar("ObjType").get_vector(0)
local CQ2ayraZwTcxef6mKzd = sq_ObjectToSQRCharacter(obj.getTopCharacter())
switch(CQFdFFuOTzEAtm8qE7)
	{
	case -1:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 11:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 160:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 94:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 88:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 87:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 93:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 34:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 96:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 147:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 14:
		if(CQgMb3ceosgoaV7bOeIl == 10)
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
else
			sq_SendDestroyPacketPassiveObject(obj)
break
case 131:
		local CQkedSmaHEZfUI5t7O = obj.getVar().get_vector(2)
switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 11:
			obj.getVar().set_vector(2,CQkedSmaHEZfUI5t7O-1)
if((CQkedSmaHEZfUI5t7O - 2) > 0)
				obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
else
				obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			obj.getVar().set_vector(2,CQkedSmaHEZfUI5t7O-1)
if((CQkedSmaHEZfUI5t7O - 2) > 0)
				obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
else
				obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
break
case 13:
			obj.getVar().set_vector(2,CQkedSmaHEZfUI5t7O-1)
if((CQkedSmaHEZfUI5t7O - 1) > 0)
				obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
else
				sq_SendDestroyPacketPassiveObject(obj)
break
case 20:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 132:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 11:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 133:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 134:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 135:
		switch(CQoHNl6795SQuQ6eF)
		{
		case 0:
			switch(CQgMb3ceosgoaV7bOeIl)
			{
			case 10:
				if(sq_GetSkillLevel(CQ2ayraZwTcxef6mKzd, 13) > 0 && CQ2ayraZwTcxef6mKzd.getWeaponSubType() == 2)
					obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
else
					obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 11:
				obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
				sq_SendDestroyPacketPassiveObject(obj)
break
}
			break
case 1:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 2:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 3:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 4:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 136:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 142:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 137:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 11:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 138:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 12:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 139:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 9:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 10:
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 20:
			obj.addSetStatePacket(21, null, STATE_PRIORITY_AUTO, false, "")
break
case 22:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 30:
			obj.addSetStatePacket(31, null, STATE_PRIORITY_AUTO, false, "")
break
case 32:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 40:
			obj.addSetStatePacket(41, null, STATE_PRIORITY_AUTO, false, "")
break
case 42:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 50:
			obj.addSetStatePacket(51, null, STATE_PRIORITY_AUTO, false, "")
break
case 52:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 140:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 9:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 10:
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 100:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 141:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 149:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 152:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 11:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 21:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 157:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 12:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 11:
			local CQaYPMRTY2q3rh4wf7oD = obj.getVar().get_vector(2)
switch(CQaYPMRTY2q3rh4wf7oD)
			{
			case 0:
				obj.addSetStatePacket(60, null, STATE_PRIORITY_AUTO, false, "")
break
case 1:
				obj.addSetStatePacket(30, null, STATE_PRIORITY_AUTO, false, "")
break
case 2:
				obj.addSetStatePacket(50, null, STATE_PRIORITY_AUTO, false, "")
break
case 3:
				obj.addSetStatePacket(20, null, STATE_PRIORITY_AUTO, false, "")
break
case 4:
				obj.addSetStatePacket(40, null, STATE_PRIORITY_AUTO, false, "")
break
}
			break
case 20:
			obj.addSetStatePacket(21, null, STATE_PRIORITY_AUTO, false, "")
break
case 21:
			obj.addSetStatePacket(22, null, STATE_PRIORITY_AUTO, false, "")
break
case 22:
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 30:
			obj.addSetStatePacket(31, null, STATE_PRIORITY_AUTO, false, "")
break
case 31:
			obj.addSetStatePacket(32, null, STATE_PRIORITY_AUTO, false, "")
break
case 32:
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 40:
			obj.addSetStatePacket(41, null, STATE_PRIORITY_AUTO, false, "")
break
case 41:
			obj.addSetStatePacket(42, null, STATE_PRIORITY_AUTO, false, "")
break
case 42:
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 50:
			obj.addSetStatePacket(51, null, STATE_PRIORITY_AUTO, false, "")
break
case 51:
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 60:
			obj.addSetStatePacket(61, null, STATE_PRIORITY_AUTO, false, "")
break
case 61:
			obj.addSetStatePacket(62, null, STATE_PRIORITY_AUTO, false, "")
break
case 62:
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 158:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 159:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 161:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 21:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 22:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 23:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 24:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 30:
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 164:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 165:
		sq_SendDestroyPacketPassiveObject(obj)
break
case 166:
		switch(CQgMb3ceosgoaV7bOeIl)
		{
		case 10:
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
case 11:
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
case 12:
			obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
break
case 13:
			CQ2ayraZwTcxef6mKzd.sq_IntVectClear()
CQ2ayraZwTcxef6mKzd.sq_AddSetStatePacket(0, STATE_PRIORITY_IGNORE_FORCE, true)
sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
}
}

function onTimeEvent_po_ChangQing_751675335_ATSwordman(obj, CQw2XwIH3oyAYq3WzX5, CQZKxOqmyM9FqN3E)
{
	if(!obj) return
local CQzLZB2hZvIEvagupO = obj.getVar("skill").get_vector(0)
local CQOOwgDMUSkelRRrI8ku = obj.getVar("state").get_vector(0)
local CQPJJZajVKypEbvQ = sq_ObjectToSQRCharacter(obj.getTopCharacter())
switch(CQzLZB2hZvIEvagupO)
	{
	case -1:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:
			sq_SendDestroyPacketPassiveObject(obj)
break
case 1:	
			obj.resetHitObjectList()
break
}
		break
case 88:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			obj.resetHitObjectList()
break
}
		break
case 96:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 1:	
			local CQBuywnyNARpcZqZVly6 = sq_GetObjectByObjectId(CQPJJZajVKypEbvQ, obj.getVar().get_vector(0))
if(CQBuywnyNARpcZqZVly6)
			{
				CQBuywnyNARpcZqZVly6 = sq_GetCNRDObjectToActiveObject(CQBuywnyNARpcZqZVly6)
CQBuywnyNARpcZqZVly6.getVar("changeswordCount").setInt(0, CQBuywnyNARpcZqZVly6.getVar("changeswordCount").getInt(0) - 1)
}
			sq_SendDestroyPacketPassiveObject(obj)
break
case 0:	
			local CQBuywnyNARpcZqZVly6 = sq_GetObjectByObjectId(CQPJJZajVKypEbvQ, obj.getVar().get_vector(0))
if(CQBuywnyNARpcZqZVly6)
			{
				CQBuywnyNARpcZqZVly6 = sq_GetCNRDObjectToActiveObject(CQBuywnyNARpcZqZVly6)
local CQeiFDxB6USQe3xfsi7 = CQBuywnyNARpcZqZVly6.getZPos() + CQBuywnyNARpcZqZVly6.getObjectHeight()/2
sq_SendHitObjectPacketWithNoStuck(obj,CQBuywnyNARpcZqZVly6,0,0,CQeiFDxB6USQe3xfsi7)
}
			break
}
		break
case 131:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			obj.sq_RemoveMoveParticle()
if(obj.getVar().get_vector(0) == 2 && sq_GetSkillLevel(CQPJJZajVKypEbvQ, 13)>0)
				obj.addSetStatePacket(13, null, STATE_PRIORITY_AUTO, false, "")
else
				obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 135:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			local CQ4NWqiAP7DKDxEaTrV = obj.getVar().get_vector(2)
if(CQ4NWqiAP7DKDxEaTrV > 0)
			{
				local CQQG8IYY5ecPIJpD = obj.getXPos()
local CQLEOV78ULXuovoOne = obj.getYPos()
local CQlwzfKPVkQmO4oEaX9g = 140
local CQIcLUmrlq2zpuiSP = 60
local CQ7fQaRzGJudt7iIFOi = 80
local CQr1LZVZdh91EGuG = sq_GetLevelData(CQPJJZajVKypEbvQ,13, 12, sq_GetSkillLevel(CQPJJZajVKypEbvQ, 13))/100.0
if(sq_GetSkillLevel(CQPJJZajVKypEbvQ, 13) > 0 && CQPJJZajVKypEbvQ.getWeaponSubType() == 2)
				{
					CQlwzfKPVkQmO4oEaX9g = (CQr1LZVZdh91EGuG*CQlwzfKPVkQmO4oEaX9g).tointeger()
CQIcLUmrlq2zpuiSP = (CQr1LZVZdh91EGuG*CQIcLUmrlq2zpuiSP).tointeger()
CQ7fQaRzGJudt7iIFOi = (CQr1LZVZdh91EGuG*CQ7fQaRzGJudt7iIFOi).tointeger()
}
				if(CQZKxOqmyM9FqN3E%3 ==0)
				{
					CQQG8IYY5ecPIJpD = CQQG8IYY5ecPIJpD + sq_getRandom(CQlwzfKPVkQmO4oEaX9g*(-1), -CQIcLUmrlq2zpuiSP)
CQLEOV78ULXuovoOne = CQLEOV78ULXuovoOne + sq_getRandom(CQ7fQaRzGJudt7iIFOi*(-1), CQ7fQaRzGJudt7iIFOi)
}
				else if(CQZKxOqmyM9FqN3E%3 ==1)
				{
					CQQG8IYY5ecPIJpD = CQQG8IYY5ecPIJpD + sq_getRandom((-1)*CQIcLUmrlq2zpuiSP, CQIcLUmrlq2zpuiSP)
CQLEOV78ULXuovoOne = CQLEOV78ULXuovoOne + sq_getRandom(CQ7fQaRzGJudt7iIFOi*(-1), CQ7fQaRzGJudt7iIFOi)
}
				else
				{
					CQQG8IYY5ecPIJpD = CQQG8IYY5ecPIJpD + sq_getRandom(CQIcLUmrlq2zpuiSP, CQlwzfKPVkQmO4oEaX9g)
CQLEOV78ULXuovoOne = CQLEOV78ULXuovoOne + sq_getRandom(CQ7fQaRzGJudt7iIFOi*(-1), CQ7fQaRzGJudt7iIFOi)
}
				sq_BinaryStartWrite()
sq_BinaryWriteDword(135)
sq_BinaryWriteDword(0)
sq_BinaryWriteDword(obj.getVar().get_vector(0))
sq_BinaryWriteDword(obj.getVar().get_vector(1))
sq_BinaryWriteDword(CQ4NWqiAP7DKDxEaTrV - 1)
sq_BinaryWriteDword(obj.getVar().get_vector(3))
sq_BinaryWriteDword(obj.getVar().get_vector(4))
sq_SendCreatePassiveObjectPacketPos(obj,24383, 0,CQQG8IYY5ecPIJpD,CQLEOV78ULXuovoOne , 0)
}
			break
case 1:	
			sq_SendDestroyPacketPassiveObject(obj)
break
case 10:	
			sq_SendDestroyPacketPassiveObject(obj)
break
}
		break
case 136:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			obj.resetHitObjectList()
break
}
		break
case 137:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			obj.resetHitObjectList()
break
case 1:	
			obj.addSetStatePacket(11, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 138:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			obj.resetHitObjectList()
break
case 1:	
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 152:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			local CQBuywnyNARpcZqZVly6 = sq_GetObjectByObjectId(CQPJJZajVKypEbvQ, obj.getVar().get_vector(1))
sq_SendHitObjectPacket(obj,CQBuywnyNARpcZqZVly6,0,0,CQBuywnyNARpcZqZVly6.getZPos() + CQBuywnyNARpcZqZVly6.getObjectHeight()/2)
break
case 1:	
			obj.addSetStatePacket(21, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 157:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			obj.resetHitObjectList()
break
case 1:	
			obj.addSetStatePacket(42, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 158:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			obj.resetHitObjectList()
break
case 1:	
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 159:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 1:	
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 161:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			obj.resetHitObjectList()
break
case 1:	
			obj.addSetStatePacket(12, null, STATE_PRIORITY_AUTO, false, "")
break
}
		break
case 166:
		switch(CQw2XwIH3oyAYq3WzX5)
		{
		case 0:	
			if(CQPJJZajVKypEbvQ.isMyControlObject())
				sq_SetMyShake(obj,12,400)
sq_BinaryStartWrite()
sq_BinaryWriteDword(166)
sq_BinaryWriteDword(1)
sq_BinaryWriteDword(obj.getVar().get_vector(2))
sq_SendCreatePassiveObjectPacketPos(obj, 24383, 0, obj.getXPos(), obj.getYPos(), 0)
break
case 1:	
			sq_SendDestroyPacketPassiveObject(obj)
break
case 5:	
			obj.resetHitObjectList()
break
case 6:	
			obj.resetHitObjectList()
break
}
		break
}
	return false
}
