function onProc_swordman_bloodblast(obj)
{
    if(!obj) return;
    local sizeRate2 = obj.sq_GetIntData(101, 6);
    if(sizeRate2 != 100){
        SkillSizeSettings(obj , 20102 , sizeRate2);
        SkillSizeSettings(obj , 20103 , sizeRate2);
        SkillSizeSettings(obj , 20104 , sizeRate2);
    }

}


