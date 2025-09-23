IRDSQRCharacter.pushScriptFiles("character/atfighter/passive_skill_atfighter.nut");
IRDSQRCharacter.pushScriptFiles("character/common_common.nut");
IRDSQRCharacter.pushScriptFiles("character/atfighter/atfighter_common.nut");

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_FIGHTER, "Character/atfighter/flamelegs/flamelegs.nut", "atfighter_flamelegs", 62, -1);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_FIGHTER, "character/atfighter/randomkick/randomkick.nut", "RandomKick", 49, 82);
IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_FIGHTER, "character/atfighter/lieyanfenbu/lieyanfenbuzhuijia.nut", "LieYanFenBuZhuiJia", STATE_LIE_YAN_FEN_BU_ZHUI_JIA, -1);

IRDSQRCharacter.pushState(ENUM_CHARACTERJOB_AT_FIGHTER, "character/atfighter/closepunch/closepunch.nut", "AT_ClosePunch", 29, 19);


