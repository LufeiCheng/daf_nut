function onProc_swordman_illusionSlash(obj)
{
    if(!obj) return;
    local sizeRate1 = sq_GetLevelData(obj, 73, 3,sq_GetSkillLevel(obj, 73));
    if(sizeRate1 != 100){
        SkillSizeSettings(obj , 20033 , sizeRate1);
        SkillSizeSettings(obj , 20034 , sizeRate1);
        SkillSizeSettings(obj , 20035 , sizeRate1);
        SkillSizeSettings(obj , 20036 , sizeRate1);
    }
    local sizeRate2 = sq_GetLevelData(obj, 73, 4,sq_GetSkillLevel(obj, 73));
    if(sizeRate2 != 100){
        SkillSizeSettings(obj , 20037 , sizeRate2);
    }

}

