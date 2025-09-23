function onKeyFrameFlag_ClosePunch(obj,flagIndex){
    if(!obj) return false;
    local flag = obj.sq_GetIntData(19, 0);
    if(!flag) return;
    if(flagIndex == 10086){
        local objectManager = obj.getObjectManager();
        for (local i = 0; i < objectManager.getCollisionObjectNumber(); i+=1){
            local object = objectManager.getCollisionObject(i);
            if (object && obj.isEnemy(object) && object.isObjectType(OBJECTTYPE_ACTIVE) && abs(obj.getXPos() - object.getXPos() ) < 200 && abs(obj.getYPos() - object.getYPos() ) <150){
                if(sq_IsGrabable(obj,object) && sq_IsHoldable(obj,object) && !sq_IsFixture(object)){                
                    local posX = obj.getXPos();
                    local posY = obj.getYPos();
                    local direction = obj.getDirection();
                    local realX = direction ? posX + 50 : posX - 50
                    sq_SetCurrentPos(object, realX, posY, 0);
                }
            }
        }
    }
    return true;
}