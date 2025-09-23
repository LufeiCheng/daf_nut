
function sq_AddFunctionName(appendage)

{

	appendage.sq_AddFunctionName("proc", "proc_appendage_wavemark")

}

function proc_appendage_wavemark(appendage)

{

	if (!appendage)
return;	
	local parentObj = appendage.getParent();
local sqrChr = sq_GetCNRDObjectToSQRCharacter(parentObj);
	if(!parentObj || sqrChr.getState() == STATE_DIE || sqrChr.isDead()) 
{

appendage.setValid(false);
return;
	
}

if(appendage.getTimer().Get()<10000) return;
if(sqrChr.sq_IsEnterSkill(47)!=-1)
if(sqrChr.sq_IsUseSkill(47))

{

appendage.setValid(false);
return;

}


}

