function onProc_swordman_bloodsword(obj)
{
    if(!obj) return;
    local sizeRate2 = obj.sq_GetIntData(103, 5);
    if(sizeRate2 != 100){
        SkillSizeSettings(obj , 20066 , sizeRate2);
    }

}

