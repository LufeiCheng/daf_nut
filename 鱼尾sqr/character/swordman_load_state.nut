

IRDSQRCharacter.pushScriptFiles("character/swordman/passive_skill_swordman.nut");  
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/shockwavearea/shockwavearea.nut", "swordman_shockwavearea", 31, -1);//xieguang ?â¢
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/HundredSword/HundredSword.nut", "swordman_hundredsword", 47, -1);//juexÑÃîÔ
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/hellbenter/hellbenter.nut", "hellbenter", 46, -1);//juextuoâ¢

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/momentaryslash/momentaryslash.nut", "swordman_momentaryslash", 23, 9);  //Ì¤ò¥ÚûÓïßÒ÷¾
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/momentaryslash/momentaryslash.nut", "swordman_momentaryslashre", 250, -1);  //ñìÞÐÚûÓï
IRDSQRCharacter.pushPassiveObj("baynk/po_swordman_baynk.nut", 24399);//obj for badao

 
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/BloodSword/BloodSword.nut", "swordman_bloodsword", 60, -1);//úì?Ú±Ù¤ñéøïíÈ
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodsword/sword_bloodsword.nut", "swordman_bloodsword", 60, 103);//úì?ÓÞá³

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/bloodblast/bloodblast.nut", "swordman_bloodblast", 57, 101);//ÓÞÒÁ?ÓÞá³



IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/IllusionSlash/IllusionSlash.nut", "swordman_illusionSlash", 40, 73);//?ÙñÓÞá³

//?í­??
IRDSQRCharacter.pushPassiveObj("character/swordman/wavemark/po_wavemark_wave.nut", 24370);//obj for wavemark

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "character/swordman/attack.nut", "swordmanAttack", 8, -1);//pingA hook
 IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_SWORDMAN, "Character/swordman/throw.nut", "swordmanThrow", 13, -1);//throw
