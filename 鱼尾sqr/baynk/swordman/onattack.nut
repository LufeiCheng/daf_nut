function onAttack_po_swordman_baynk(obj, damager, boundingBox, isStuck)
{
    if(!obj) return;

    local id = obj.getVar("id").get_vector(0);
    local parentChr = sq_ObjectToSQRCharacter(obj.getTopCharacter());

    switch(id)
    {
        case 1://绗逄藋?�棂
            switch(parentChr.getWeaponSubType())
            {
                case 0://??
                    obj.sq_PlaySound("R_MINERALSWDA_HIT");
                break;
                case 1://�???
                    obj.sq_PlaySound("R_KATANAC_HIT");
                break;
                case 2://俋塎
                    obj.sq_PlaySound("R_STICKA_HIT");
                    if(damager.getState() != STATE_HOLD && sq_IsGrabable(obj, damager) && sq_IsHoldable(obj, damager) && !sq_IsFixture(damager))
                    {
                        local appendage = CNSquirrelAppendage.sq_AppendAppendage(damager, parentChr, 9, false, "character/swordman/momentaryslash/ap_momentaryslash.nut", true);
                    }
                break;
                case 3://??
                    obj.sq_PlaySound("R_SQUARESWDA_HIT");
                break;
                case 5://??
                    obj.sq_PlaySound("R_BEAMSWDA_HIT");
                break;
            }
        break;
    }
}