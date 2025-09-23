
function drawCustomUI_DeBug(obj)
{
    if(DEBUG_FLAG == 0)return;
    objcount(obj);//Í¤???ª§Ù¸Éº
    stateinfo(obj);//É¬?Ó·?ª§Ù¸Éº
    drawzi(obj);
}

function drawzi(obj){
	drawDebugText(obj,"debugtext2",80,8,250,20);//??3
	drawdebugnums(obj,"debugnums2",200,8,250,20);//??1
	drawDebugText(obj,"debugtext3",80,8,35,20);//??3
    drawdebugnums(obj,"debugnums3",200,8,35,20);//??3
    drawDebugText(obj,"debugtext4",480,8,35,20);//??4
    drawdebugnums(obj,"debugnums4",600,8,35,20);//??4
	drawDebugText(obj,"dsubstatetext",480,8,250,20);   
	drawdebugnums(obj,"dsubstate",600,8,250,20);//??5 ????Éº?ôá??
}

function addSubState(obj, state, datas){
	if(DEBUG_SUBSTATE==1)obj.getVar("dsubstate").clear_vector();
	obj.getVar("dsubstatetext").clear_vector();
	obj.getVar("dsubstatetext").push_vector(5);
	for(local i=0;i<15;i++){
		local SubState = obj.sq_GetVectorData(datas, i);
		if(SubState==-1){
			return;
		}
		obj.getVar("dsubstate").push_vector(SubState);
	}
}

function stateinfo(obj){
    local stage = sq_GetGlobaludpModuleStage();
    local dungeon = sq_GetDungeonByStage(stage);
    local dungeonIndex = sq_GetDuegonIndex(dungeon);			
    local mapIndex = sq_GetMapIndex(stage);
    local skillIndex2 = obj.getThrowIndex();
    local attackIndex = obj.getAttackIndex();
    local buffSkillIndex = obj.getBuffSkillIndex();
    local throwState = obj.getThrowState();
    local state = obj.sq_GetState();
    local skillIndex = obj.getCurrentSkillIndex();
    local SubState = obj.getSkillSubState();

    obj.getVar("debugnums4").clear_vector();
	obj.getVar("debugtext4").clear_vector();
	obj.getVar("debugnums3").clear_vector();
	obj.getVar("debugtext3").clear_vector();
    obj.getVar("debugnums2").push_vector(dungeonIndex);//ø¤«»ID
    obj.getVar("debugtext2").push_vector(1);
    obj.getVar("debugnums2").push_vector(mapIndex);//map¦¨ïËID
	obj.getVar("debugtext2").push_vector(2);

    //obj.getVar("debugtext4").push_vector(sq_GetCurrentModuleType());//??Ê«?Ù¸þ¬
    //obj.getVar("debugtext4").push_vector(obj.sq_GetTeam());//??Î¾?
    //obj.getVar("debugnums3").push_vector(buffSkillIndex);//17É¬??«ÎÉº¬Þ?ID
    //obj.getVar("debugnums3").push_vector(skillIndex2);//13É¬??«ÎÉº¬Þ?ID
    obj.getVar("debugnums4").push_vector(skillIndex);//??a??«ÎÉº¬Þ??É¬?
	obj.getVar("debugtext4").push_vector(4);
	obj.getVar("debugnums4").push_vector(state);//??a?É¬?
	obj.getVar("debugtext4").push_vector(3);
    obj.getVar("debugnums4").push_vector(SubState);//??a??«ÎÉº¬Þ??É¬?
	obj.getVar("debugtext4").push_vector(5);
    obj.getVar("debugnums4").push_vector(throwState);//13É¬??Éº?É¬?
	obj.getVar("debugtext4").push_vector(20);  
	obj.getVar("debugnums4").push_vector(attackIndex);//??8É¬?¬ð?É¬??Éº¬ð?ID
    obj.getVar("debugtext4").push_vector(11);
    obj.getVar("debugnums3").push_vector(sq_getJob(obj));//????a?Ù¸
	obj.getVar("debugtext3").push_vector(12);
    obj.getVar("debugnums3").push_vector(sq_getGrowType(obj));//??a? ?×ÀÙ¸þ¬
	obj.getVar("debugtext3").push_vector(13);
    obj.getVar("debugnums3").push_vector(obj.getWeaponSubType());//a????«ÎÉº?Ìå?Ù¸
	obj.getVar("debugtext3").push_vector(14);
    obj.getVar("debugnums2").push_vector(obj.getXPos());
	obj.getVar("debugtext2").push_vector(6);
    obj.getVar("debugnums2").push_vector(obj.getYPos());
	obj.getVar("debugtext2").push_vector(7);
    obj.getVar("debugnums2").push_vector(obj.getZPos());
	obj.getVar("debugtext2").push_vector(8);
    obj.getVar("debugnums2").push_vector(IMouse.GetXPos());
	obj.getVar("debugtext2").push_vector(21);
    obj.getVar("debugnums2").push_vector(IMouse.GetYPos());
	obj.getVar("debugtext2").push_vector(22);	
    //???«Î??Ìå?????????????¬â?Ìå????
    if(obj.isCarryWeapon()){
        obj.getVar("debugnums3").push_vector(1);//?¥Ó??Ìå ??111
	}
    else{
        obj.getVar("debugnums3").push_vector(0);//?«Î??Ìå ??222
	}
	obj.getVar("debugtext3").push_vector(9);

	if(DEBUG_ANI==0) return;
    local ani = obj.sq_GetCurrentAni();//????ani
    for(local i=0;i<400;i++){//ü­×Ù300¥Ø
        if(sq_IsSameAni(ani,sq_GetCustomAni(obj, i))){//???ª£?ùí¬ÚÉº???ani??          
			obj.getVar("debugnums4").push_vector(i);//?????Éº e?????î§?????ani
			obj.getVar("debugtext4").push_vector(10);
			break;//??ü­×Ù
		}
	}
}

function objcount(obj)
{
    local objectManager = obj.getObjectManager();//??Í¤?ùÏ?Ìå
    local objectcount = objectManager.getCollisionObjectNumber();//??Í¤?ùÏ?Ìå??Éº??
    obj.getVar("debugnums2").clear_vector();//?äïî§??Éº??Ó·?
	obj.getVar("debugtext2").clear_vector();
    local AiCharacter = 0;//?äÐ
    local Monster = 0;//¦²É«
    local Character =0;//a?
    local PASSIVE = 0;//??
    for(local i=0;i<objectcount;i++)
    {
        local object = objectManager.getCollisionObject(i);//??Í¤?
        if(object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_MONSTER))
        {
            Monster++;
        }
        else if(object && sq_IsAiCharacter(sq_GetCNRDObjectToActiveObject(object)))
            AiCharacter++;
        else if(object && object.isObjectType(OBJECTTYPE_PASSIVE))
        {
            PASSIVE++;
        }
        else if(object && object.isObjectType(OBJECTTYPE_CHARACTER)&&!sq_IsAiCharacter(sq_GetCNRDObjectToActiveObject(object)))
        {
            Character++;
        }
    }

    obj.getVar("debugnums2").push_vector(objectcount);//ÝÁ?Ù¸Í¤???
    obj.getVar("debugtext2").push_vector(15);
	obj.getVar("debugnums2").push_vector(AiCharacter);//?äÐapc??
    obj.getVar("debugtext2").push_vector(16);
	obj.getVar("debugnums2").push_vector(Monster);//¦²É«??
    obj.getVar("debugtext2").push_vector(17);
	obj.getVar("debugnums2").push_vector(Character);//a???
    obj.getVar("debugtext2").push_vector(18);
	obj.getVar("debugnums2").push_vector(PASSIVE);//????
    obj.getVar("debugtext2").push_vector(19);
}

//?îÁ?????î¦???????
function drawdebugnums(obj,vartext,xpos,xadd,ypos,yadd)
{
    local count = obj.getVar(vartext).size_vector();
    for(local a=0;a<count;a++)
    {
        local str = obj.getVar(vartext).get_vector(a).tostring();

        //ªÀó¥?üâ??
		for(local i=0;i<str.len();i++){
			local val = DEBUG_TEXT_INFO[str.slice(i,i+1)];
			local sprChar = obj.getVar().GetAnimationMap("sprChar", DEBUG_ANI_PATH);
			sq_SetAnimationFrameIndex( sprChar, val);
			sq_drawCurrentFrame(sprChar, xpos+i*xadd, ypos+a*yadd, false);
		}
    }
}

function drawDebugText(obj,vartext,xpos,xadd,ypos,yadd) {
	if(!obj) return;
	local count = obj.getVar(vartext).size_vector();
	for(local a=0;a<count;a++){
		local num = obj.getVar(vartext).get_vector(a);
		local str = DEBUG_KEY_INFO[num];
		for(local i=0;i<str.len();i+=1){
			local val = DEBUG_TEXT_INFO[str.slice(i,i+1)];
			local sprChar = obj.getVar().GetAnimationMap("sprChar", DEBUG_ANI_PATH);
			sq_SetAnimationFrameIndex(sprChar, val);
			sq_drawCurrentFrame(sprChar, xpos+i*xadd, ypos+a*yadd, false);
		}
	}
}


DEBUG_ANI_PATH <- "sqr/custom/debug/animation/zi.ani"
DEBUG_TEXT_INFO <- {
	["0"]=0,["1"]=1,["n"]=2,["o"]=3,["4"]=4,["5"]=5,["2"]=6,["3"]=7,["h"]=8,["i"]=9,
	["f"]=10,["g"]=11,["l"]=12,["-"]=13,["*"]=14,["+"]=15,["8"]=16,["9"]=17,["6"]=18,["7"]=19,
	["="]=20,["z"]=21,[";"]=22,["/"]=23,["."]=24,["'"]=25,["m"]=26,["t"]=27,["v"]=28,["r"]=29,
	["x"]=30,["k"]=31,["`"]=32,["a"]=33,["j"]=34,["s"]=35,["d"]=36,["e"]=37,["b"]=38,["c"]=39,
	["q"]=40,["p"]=41,["u"]=42,["y"]=43,["\\"]=44,["]"]=45,["w"]=46,["["]=47
}
DEBUG_KEY_INFO <- {
	[0]="=",[1]="dungeonindex",[2]="mapindex",[3]="state",[4]="skillindex",
	[5]="substate",[6]="xpos",[7]="ypos",[8]="zpos",[9]="carryweapon",
	[10]="curani",[11]="attackindex",[12]="job",[13]="growtype",[14]="weaponsubtype",
	[15]="objectcount",[16]="aicharacter",[17]="monster",[18]="character",[19]="passive",
	[20]="throwstate",[21]="mxpos",[22]="mypos"
}

