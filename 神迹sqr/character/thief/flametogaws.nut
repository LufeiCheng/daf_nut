function onAttack_po_thief_shared_UncleBang740438587( UncleBang740438587QQdfawf, UncleBang740438587QQbvqhehbheawsfg, UncleBang740438587QQbvqhekut, UncleBang740438587QQhrws )
{
	if (!UncleBang740438587QQdfawf)
	{
		return;
	}

	local UncleBang740438587QQ1 = UncleBang740438587QQdfawf.getVar("id").get_vector(0);
	local UncleBang740438587QQ2 = this.sq_GetXPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ3 = this.sq_GetYPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ4 = this.sq_GetZPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ5 = this.sq_ObjectToSQRCharacter(UncleBang740438587QQdfawf.getTopCharacter());

	switch(UncleBang740438587QQ1)
	{
	case 9:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ6 == 10)
		{
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 3, 200);
		}
		else
		{
		}

		break;

	case 12:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ6 == 10)
		{
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
		}
		else
		{
		}

		break;

	case 13:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ6 == 11)
		{
			if (this.sq_IsGrabable(UncleBang740438587QQdfawf, UncleBang740438587QQbvqhehbheawsfg) && this.sq_IsHoldable(UncleBang740438587QQdfawf, UncleBang740438587QQbvqhehbheawsfg) && !this.sq_IsFixture(UncleBang740438587QQbvqhehbheawsfg))
			{
				this.sq_MoveToAppendageForce(UncleBang740438587QQbvqhehbheawsfg, UncleBang740438587QQdfawf, UncleBang740438587QQdfawf, 0, 0, 0, 200, true, this.Appendage);
			}
		}
		else
		{
		}

		break;
	}
}

function onEndCurrentAni_po_thief_shared_UncleBang740438587( UncleBang740438587QQdfawf )
{
	if (!UncleBang740438587QQdfawf)
	{
		return;
	}

	local UncleBang740438587QQ1 = UncleBang740438587QQdfawf.getVar("id").get_vector(0);
	local UncleBang740438587QQ2 = this.sq_GetXPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ3 = this.sq_GetYPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ4 = this.sq_GetZPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ5 = this.sq_ObjectToSQRCharacter(UncleBang740438587QQdfawf.getTopCharacter());

	switch(UncleBang740438587QQ1)
	{
	case 0:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 1:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 2:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 3:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 4:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 5:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 6:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 7:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 8:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 9:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 10:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 11:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 12:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;

		case 11:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 12:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 13:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;

		case 11:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 12:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 14:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 15:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 16:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(17);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 17:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 18:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 19:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 20:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 21:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 22:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 23:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 24:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 25:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 26:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 27:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 28:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 29:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 30:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 31:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 32:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 33:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 34:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 35:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 36:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 37:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 38:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 39:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 40:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 41:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 42:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 43:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 44:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 45:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(46);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -100), UncleBang740438587QQ3 - 1, UncleBang740438587QQ4);
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(47);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -100), UncleBang740438587QQ3 - 1, UncleBang740438587QQ4);
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 46:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 12:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 47:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 12:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 48:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 49:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 50:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 51:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 52:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 53:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 54:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 12:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(13);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 13:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(14);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 14:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(55);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 55:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 56:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(57);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 57:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 58:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(59);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4 + 250);
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 59:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			local UncleBang740438587QQ26 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_AMATERAS, 2);
			local UncleBang740438587QQ27 = UncleBang740438587QQ26 / 2;
			local UncleBang740438587QQ28 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_AMATERAS, 3);
			local UncleBang740438587QQ29 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_AMATERAS, 4);
			local UncleBang740438587QQ30 = UncleBang740438587QQdfawf.sq_FindFirstTarget(-UncleBang740438587QQ26, UncleBang740438587QQ27, UncleBang740438587QQ28, UncleBang740438587QQ29);

			if (!UncleBang740438587QQ30)
			{
				UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
				UncleBang740438587QQdfawf.flushSetStatePacket();
			}
			else
			{
				UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
				UncleBang740438587QQdfawf.flushSetStatePacket();
			}

			break;

		case 11:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 12:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 60:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 61:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 62:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 63:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 64:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 65:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 66:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 67:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 68:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 69:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 70:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 71:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 72:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 73:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 74:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 75:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
			UncleBang740438587QQdfawf.flushSetStatePacket();
			break;

		case 11:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			break;
		}

		break;

	case 76:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 77:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(46);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -100), UncleBang740438587QQ3 - 1, UncleBang740438587QQ4);
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(47);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -100), UncleBang740438587QQ3 - 1, UncleBang740438587QQ4);
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 78:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 79:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 80:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(59);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4 + 250);
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;
	}
}

function onKeyFrameFlag_po_thief_shared_UncleBang740438587( UncleBang740438587QQdfawf, UncleBang740438587QQbvqhehjert )
{
	if (!UncleBang740438587QQdfawf)
	{
		return false;
	}

	local UncleBang740438587QQ1 = UncleBang740438587QQdfawf.getVar("id").get_vector(0);
	local UncleBang740438587QQ2 = this.sq_GetXPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ3 = this.sq_GetYPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ4 = this.sq_GetZPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ5 = this.sq_ObjectToSQRCharacter(UncleBang740438587QQdfawf.getTopCharacter());
	local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCurrentAnimation();

	switch(UncleBang740438587QQ1)
	{
	case 2:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 1);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEBALL, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_FLAMEBALL);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 2, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 5, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 1);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/mouthpieceflameball.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/loop/loop_flameball_normal.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 0, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/loop/loop_flameball_dodge.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/end/end_flameball_normal.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 0, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/end/end_flameball_dodge.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/end/end_flameball_end_normal.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 0, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/end/end_flameball_end_dodge.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			break;

		case 10002:
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 1);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEBALL, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_FLAMEBALL);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 2, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 5, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
			break;
		}

		break;

	case 4:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			UncleBang740438587QQdfawf.sq_PlaySound("R_GHOSTKUNAI_THROW");
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_ILUSIONSHURIKEN);
			local UncleBang740438587QQ26 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_ILUSIONSHURIKEN, 1, UncleBang740438587QQ10);

			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(6);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 60), UncleBang740438587QQ3, UncleBang740438587QQ4 + 60);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(6);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 140), UncleBang740438587QQ3 + 50, UncleBang740438587QQ4 + 60);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(6);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 180), UncleBang740438587QQ3 - 50, UncleBang740438587QQ4 + 60);

				if (UncleBang740438587QQ26 >= 3)
				{
					UncleBang740438587QQ5.sq_StartWrite();
					UncleBang740438587QQ5.sq_WriteDword(6);
					this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 30), UncleBang740438587QQ3 + 80, UncleBang740438587QQ4 + 60);
				}

				if (UncleBang740438587QQ26 >= 4)
				{
					UncleBang740438587QQ5.sq_StartWrite();
					UncleBang740438587QQ5.sq_WriteDword(6);
					this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 80), UncleBang740438587QQ3 - 80, UncleBang740438587QQ4 + 60);
				}
			}
		}
		else
		{
		}

		break;

	case 5:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(7);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 60), UncleBang740438587QQ3, UncleBang740438587QQ4 + 60);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(7);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -10), UncleBang740438587QQ3 + 30, UncleBang740438587QQ4 + 60);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(7);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -10), UncleBang740438587QQ3 - 30, UncleBang740438587QQ4 + 60);
			}
		}
		else
		{
		}

		break;

	case 8:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(9);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 60), UncleBang740438587QQ3, UncleBang740438587QQ4);
			}
		}
		else
		{
		}

		break;

	case 10:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(12);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 99), UncleBang740438587QQ3, UncleBang740438587QQ4 + 53);
			}
		}
		else
		{
		}

		break;

	case 11:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(13);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 90), UncleBang740438587QQ3, UncleBang740438587QQ4);
			}
		}
		else
		{
		}

		break;

	case 14:
		local UncleBang740438587QQ27 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ27 == 10)
		{
			if (UncleBang740438587QQbvqhehjert == 10001)
			{
				if (UncleBang740438587QQdfawf.isMyControlObject())
				{
					UncleBang740438587QQ5.sq_StartWrite();
					UncleBang740438587QQ5.sq_WriteDword(15);
					this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
				}
			}
			else
			{
			}
		}
		else
		{
		}

		break;

	case 15:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(16);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}
		}
		else
		{
		}

		break;

	case 18:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			this.sq_SetVelocity(UncleBang740438587QQdfawf, 2, 1000.0);
			break;

		case 10002:
			this.sq_SetVelocity(UncleBang740438587QQdfawf, 2, 0.0);
			this.sq_SetCurrentPos(UncleBang740438587QQdfawf, UncleBang740438587QQ2, UncleBang740438587QQ3, 200);

			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(21);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}

			break;

		case 10003:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(20);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}

			break;

		case 10004:
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/skyroads/beam/hand_a.ani", -80, 0, 200, 45, 100, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/skyroads/beam/hand_b.ani", -80, 0, 200, 45, 100, 0, 1, 1.0);

			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(22);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 300), UncleBang740438587QQ3, 0);
			}

			break;
		}

		break;

	case 19:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(21);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}

			break;

		case 10002:
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/skyroads/beam/hand_a.ani", -80, 0, 200, 45, 100, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/skyroads/beam/hand_b.ani", -80, 0, 200, 45, 100, 0, 1, 1.0);

			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(22);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 300), UncleBang740438587QQ3, 0);
			}

			break;
		}

		break;

	case 22:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(23);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, 0);
			}
		}
		else
		{
		}

		break;

	case 24:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(25);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}
		}
		else
		{
		}

		break;

	case 25:
		local UncleBang740438587QQ27 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ27 == 10)
		{
			switch(UncleBang740438587QQbvqhehjert)
			{
			case 10001:
				this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
				UncleBang740438587QQdfawf.sq_PlaySound("GASOLINEFIRE_TOAD");
				this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
				  // [882]  OP_JMP            0     25    0    0

			case 10002:
				if (UncleBang740438587QQdfawf.isMyControlObject())
				{
					UncleBang740438587QQ5.sq_StartWrite();
					UncleBang740438587QQ5.sq_WriteDword(26);
					this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 400), UncleBang740438587QQ3, UncleBang740438587QQ4);
				}

				  // [907]  OP_JMP            0      0    0    0

			default:
				break;
			}
		}

		break;

	case 27:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			UncleBang740438587QQdfawf.resetHitObjectList();
			break;

		case 10002:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(28);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3 - 1, UncleBang740438587QQ4);
			}

			break;

		case 10003:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(29);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3 - 1, UncleBang740438587QQ4);
			}

			break;
		}

		break;

	case 30:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			local UncleBang740438587QQ29 = UncleBang740438587QQ6.getDelaySum(false);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ29, 0, 125, this.sq_RGB(0, 0, 0), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;

		case 10002:
			this.sq_MoveToNearMovablePos(UncleBang740438587QQdfawf, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 400), UncleBang740438587QQ3, UncleBang740438587QQ4, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4, 20, -1, 3);
			break;

		case 10003:
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;

		case 10004:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(33);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -200), UncleBang740438587QQ3 - 100, UncleBang740438587QQ4);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(34);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3 - 130, UncleBang740438587QQ4);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(35);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 200), UncleBang740438587QQ3 - 100, UncleBang740438587QQ4);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(36);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 200), UncleBang740438587QQ3, UncleBang740438587QQ4);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(37);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(38);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -200), UncleBang740438587QQ3, UncleBang740438587QQ4);
			}

			break;
		}

		break;

	case 31:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 16);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			break;

		case 10002:
			if (this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD) >= 3)
			{
				UncleBang740438587QQdfawf.resetHitObjectList();
				local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 16);
				this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
				local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
				local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 5, 1.0);
				this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			}

			break;
		}

		break;

	case 39:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(41);
				UncleBang740438587QQ5.sq_WriteDword(-20);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -100), UncleBang740438587QQ3, UncleBang740438587QQ4 + 100);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(42);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 50), UncleBang740438587QQ3, 0);
			}

			this.sq_MoveToNearMovablePos(UncleBang740438587QQdfawf, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -200), UncleBang740438587QQ3, 100, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4, 20, -1, 3);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLYINGSWALLOW, 0);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			local UncleBang740438587QQ38 = this.sq_getRandom(0, 200);
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom1_normal.ani", UncleBang740438587QQ38, 0, -100, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom1_normal.ani", UncleBang740438587QQ38, 0, -100, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			break;

		case 10002:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(41);
				UncleBang740438587QQ5.sq_WriteDword(-50);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 100), UncleBang740438587QQ3, UncleBang740438587QQ4 + 100);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(42);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 250), UncleBang740438587QQ3, 0);
			}

			this.sq_MoveToNearMovablePos(UncleBang740438587QQdfawf, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 100), UncleBang740438587QQ3, 200, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4, 20, -1, 3);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLYINGSWALLOW, 0);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			local UncleBang740438587QQ38 = this.sq_getRandom(0, 200);
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom1_normal.ani", UncleBang740438587QQ38, 0, -200, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom1_normal.ani", UncleBang740438587QQ38, 0, -200, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			break;
		}

		break;

	case 46:
		local UncleBang740438587QQ27 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ27 == 12)
		{
			if (UncleBang740438587QQbvqhehjert == 10001)
			{
				this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
				this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			}
			else
			{
			}
		}
		else
		{
		}

		break;

	case 48:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(50);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 116), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(51);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 116), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(52);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 116), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(53);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 116), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
			}

			break;

		case 10002:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(54);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 255), UncleBang740438587QQ3, UncleBang740438587QQ4 + 58);
			}

			break;
		}

		break;

	case 49:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(56);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 10), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
			}
		}
		else
		{
		}

		break;

	case 59:
		local UncleBang740438587QQ27 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ27)
		{
		case 10:
			if (UncleBang740438587QQbvqhehjert == 10001)
			{
				this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
				this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			}
			else
			{
			}

			break;

		case 12:
			if (UncleBang740438587QQbvqhehjert == 10001)
			{
				this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
				this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			}
			else
			{
			}

			break;
		}

		break;

	case 63:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(64);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 400), UncleBang740438587QQ3, 0);
			}
		}
		else
		{
		}

		break;

	case 64:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 33);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SWORDOFKUSANAGI, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
			break;

		case 10002:
			UncleBang740438587QQdfawf.resetHitObjectList();
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 33);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SWORDOFKUSANAGI, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
			break;

		case 10003:
			UncleBang740438587QQdfawf.resetHitObjectList();
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 33);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SWORDOFKUSANAGI, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;
		}

		break;

	case 65:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 1);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEBALL, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_FLAMEBALL);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 2, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 5, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 1);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/mouthpieceflameball.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/loop/loop_flameball_normal.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 0, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/loop/loop_flameball_dodge.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/end/end_flameball_normal.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 0, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/end/end_flameball_dodge.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/end/end_flameball_end_normal.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 0, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/flameball/end/end_flameball_end_dodge.ani", 0, 0, 0, 0, 100 * UncleBang740438587QQ16, 0, 1, 1.0);
			break;

		case 10002:
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 1);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEBALL, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_FLAMEBALL);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 2, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 5, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
			break;
		}

		break;

	case 66:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			UncleBang740438587QQdfawf.sq_PlaySound("R_GHOSTKUNAI_THROW");
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_ILUSIONSHURIKEN);
			local UncleBang740438587QQ26 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_ILUSIONSHURIKEN, 1, UncleBang740438587QQ10);

			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(6);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 60), UncleBang740438587QQ3, UncleBang740438587QQ4 + 60);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(6);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 140), UncleBang740438587QQ3 + 50, UncleBang740438587QQ4 + 60);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(6);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 180), UncleBang740438587QQ3 - 50, UncleBang740438587QQ4 + 60);

				if (UncleBang740438587QQ26 >= 3)
				{
					UncleBang740438587QQ5.sq_StartWrite();
					UncleBang740438587QQ5.sq_WriteDword(6);
					this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 30), UncleBang740438587QQ3 + 80, UncleBang740438587QQ4 + 60);
				}

				if (UncleBang740438587QQ26 >= 4)
				{
					UncleBang740438587QQ5.sq_StartWrite();
					UncleBang740438587QQ5.sq_WriteDword(6);
					this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 80), UncleBang740438587QQ3 - 80, UncleBang740438587QQ4 + 60);
				}
			}

			break;

		case 10002:
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_ILUSIONSHURIKEN);
			local UncleBang740438587QQ26 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_ILUSIONSHURIKEN, 1, UncleBang740438587QQ10);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/animation/ilusionshuriken_shadow1.ani", 80, 50, 0, 0, 100, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_boom.ani", 80, 51, 0, 0, 100, 0, 2, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_glow.ani", 80, 51, 0, 0, 100, 0, 2, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/animation/ilusionshuriken_shadow1.ani", 120, -50, 0, 0, 100, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_boom.ani", 120, -49, 0, 0, 100, 0, 2, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_glow.ani", 120, -49, 0, 0, 100, 0, 2, 1.0);

			if (UncleBang740438587QQ26 >= 3)
			{
				this.als_ani(UncleBang740438587QQdfawf, "character/thief/animation/ilusionshuriken_shadow1.ani", -30, 80, 0, 0, 100, 0, 1, 1.0);
				this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_boom.ani", -30, 81, 0, 0, 100, 0, 2, 1.0);
				this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_glow.ani", -30, 81, 0, 0, 100, 0, 2, 1.0);
			}

			if (UncleBang740438587QQ26 >= 4)
			{
				this.als_ani(UncleBang740438587QQdfawf, "character/thief/animation/ilusionshuriken_shadow1.ani", 20, -80, 0, 0, 100, 0, 1, 1.0);
				this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_boom.ani", 20, -79, 0, 0, 100, 0, 2, 1.0);
				this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_glow.ani", 20, -79, 0, 0, 100, 0, 2, 1.0);
			}

			break;
		}

		break;

	case 67:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(7);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 60), UncleBang740438587QQ3, UncleBang740438587QQ4 + 60);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(7);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -10), UncleBang740438587QQ3 + 30, UncleBang740438587QQ4 + 60);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(7);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -10), UncleBang740438587QQ3 - 30, UncleBang740438587QQ4 + 60);
			}

			break;

		case 10002:
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/animation/ilusionshuriken_shadow2.ani", -70, 30, 0, 0, 100, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_boom.ani", -70, -29, 0, 0, 100, 0, 2, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_glow.ani", -70, -29, 0, 0, 100, 0, 2, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/animation/ilusionshuriken_shadow2.ani", -70, -30, 0, 0, 100, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_boom.ani", -70, -49, 0, 0, 100, 0, 2, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "character/thief/effect/animation/illusionshuriken/groundatk/ilusion_groundatkstart_a_glow.ani", -70, -49, 0, 0, 100, 0, 2, 1.0);
			break;
		}

		break;

	case 68:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(9);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 60), UncleBang740438587QQ3, UncleBang740438587QQ4);
			}
		}
		else
		{
		}

		break;

	case 69:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(12);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 99), UncleBang740438587QQ3, UncleBang740438587QQ4 + 53);
			}
		}
		else
		{
		}

		break;

	case 70:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(13);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 90), UncleBang740438587QQ3, UncleBang740438587QQ4);
			}
		}
		else
		{
		}

		break;

	case 71:
		local UncleBang740438587QQ27 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ27 == 10)
		{
			if (UncleBang740438587QQbvqhehjert == 10001)
			{
				if (UncleBang740438587QQdfawf.isMyControlObject())
				{
					UncleBang740438587QQ5.sq_StartWrite();
					UncleBang740438587QQ5.sq_WriteDword(15);
					this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
				}
			}
			else
			{
			}
		}
		else
		{
		}

		break;

	case 72:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			this.sq_SetVelocity(UncleBang740438587QQdfawf, 2, 1000.0);
			break;

		case 10002:
			this.sq_SetVelocity(UncleBang740438587QQdfawf, 2, 0.0);
			this.sq_SetCurrentPos(UncleBang740438587QQdfawf, UncleBang740438587QQ2, UncleBang740438587QQ3, 200);

			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(21);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}

			break;

		case 10003:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(20);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}

			break;

		case 10004:
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/skyroads/beam/hand_a.ani", -80, 0, 200, 45, 100, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/skyroads/beam/hand_b.ani", -80, 0, 200, 45, 100, 0, 1, 1.0);

			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(22);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 300), UncleBang740438587QQ3, 0);
			}

			break;
		}

		break;

	case 73:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(21);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}

			break;

		case 10002:
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/skyroads/beam/hand_a.ani", -80, 0, 200, 45, 100, 0, 1, 1.0);
			this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/skyroads/beam/hand_b.ani", -80, 0, 200, 45, 100, 0, 1, 1.0);

			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(22);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 300), UncleBang740438587QQ3, 0);
			}

			break;
		}

		break;

	case 74:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(25);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4);
			}
		}
		else
		{
		}

		break;

	case 75:
		local UncleBang740438587QQ27 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ27 == 10)
		{
			switch(UncleBang740438587QQbvqhehjert)
			{
			case 10001:
				this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
				UncleBang740438587QQdfawf.sq_PlaySound("GASOLINEFIRE_TOAD");
				this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
				  // [2893]  OP_JMP            0     25    0    0

			case 10002:
				if (UncleBang740438587QQdfawf.isMyControlObject())
				{
					UncleBang740438587QQ5.sq_StartWrite();
					UncleBang740438587QQ5.sq_WriteDword(26);
					this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 400), UncleBang740438587QQ3, UncleBang740438587QQ4);
				}

				  // [2918]  OP_JMP            0      0    0    0

			default:
				break;
			}
		}

		break;

	case 76:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			UncleBang740438587QQdfawf.resetHitObjectList();
			break;

		case 10002:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(28);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3 - 1, UncleBang740438587QQ4);
			}

			break;

		case 10003:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(29);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ2, UncleBang740438587QQ3 - 1, UncleBang740438587QQ4);
			}

			break;
		}

		break;

	case 78:
		switch(UncleBang740438587QQbvqhehjert)
		{
		case 10001:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(50);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 116), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(51);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 116), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(52);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 116), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(53);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 116), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
			}

			break;

		case 10002:
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(54);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 255), UncleBang740438587QQ3, UncleBang740438587QQ4 + 58);
			}

			break;
		}

		break;

	case 79:
		if (UncleBang740438587QQbvqhehjert == 10001)
		{
			if (UncleBang740438587QQdfawf.isMyControlObject())
			{
				UncleBang740438587QQ5.sq_StartWrite();
				UncleBang740438587QQ5.sq_WriteDword(56);
				this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 10), UncleBang740438587QQ3, UncleBang740438587QQ4 + 66);
			}
		}
		else
		{
		}

		break;
	}

	return true;
}

function onTimeEvent_po_thief_shared_UncleBang740438587( UncleBang740438587QQdfawf, UncleBang740438587QQhibt, UncleBang740438587QQhibtuig )
{
	if (!UncleBang740438587QQdfawf)
	{
		return false;
	}

	local UncleBang740438587QQ1 = UncleBang740438587QQdfawf.getVar("id").get_vector(0);
	local UncleBang740438587QQ2 = this.sq_GetXPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ3 = this.sq_GetYPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ4 = this.sq_GetZPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ5 = this.sq_ObjectToSQRCharacter(UncleBang740438587QQdfawf.getTopCharacter());
	local UncleBang740438587QQ6 = UncleBang740438587QQ5.sq_GetState();

	switch(UncleBang740438587QQhibt)
	{
	case 0:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			UncleBang740438587QQdfawf.resetHitObjectList();
		}

		break;

	case 1:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 2:
		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			local UncleBang740438587QQ7 = UncleBang740438587QQ2 + this.sq_getRandom(-200, 200);
			local UncleBang740438587QQ8 = UncleBang740438587QQ3 + this.sq_getRandom(-100, 100);
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(60);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, UncleBang740438587QQ7, UncleBang740438587QQ8, 0);
		}

		break;
	}
}

function procAppend_po_thief_shared_UncleBang740438587( UncleBang740438587QQdfawf )
{
	if (!UncleBang740438587QQdfawf)
	{
		return false;
	}

	local UncleBang740438587QQ1 = UncleBang740438587QQdfawf.getVar("id").get_vector(0);
	local UncleBang740438587QQ2 = this.sq_GetXPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ3 = this.sq_GetYPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ4 = this.sq_GetZPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ5 = this.sq_ObjectToSQRCharacter(UncleBang740438587QQdfawf.getTopCharacter());
	local UncleBang740438587QQ6 = UncleBang740438587QQ5.sq_GetState();
	local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCurrentAnimation();
	local UncleBang740438587QQ8 = this.sq_GetAnimationFrameIndex(UncleBang740438587QQ7);
	local UncleBang740438587QQ9 = this.sq_GetCurrentTime(UncleBang740438587QQ7);

	switch(UncleBang740438587QQ1)
	{
	case 0:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		local UncleBang740438587QQ10 = UncleBang740438587QQdfawf.getVar("chakraMove").get_vector(0);
		local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("chakraMove").get_vector(1);
		local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ10, UncleBang740438587QQ11, UncleBang740438587QQ9, 600);
		this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
		local UncleBang740438587QQ13 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_EQUIPCHAKRAWEAPON, 0);
		UncleBang740438587QQ13 = UncleBang740438587QQ13.tofloat();

		if (UncleBang740438587QQdfawf.getDirection() == this.ENUM_DIRECTION_LEFT)
		{
			local UncleBang740438587QQ14 = UncleBang740438587QQ10 - UncleBang740438587QQ13;

			if (UncleBang740438587QQ2 <= UncleBang740438587QQ14)
			{
				if (UncleBang740438587QQdfawf.isMyControlObject())
				{
					this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
				}
			}
		}

		if (UncleBang740438587QQdfawf.getDirection() == this.ENUM_DIRECTION_RIGHT)
		{
			local UncleBang740438587QQ14 = UncleBang740438587QQ10 + UncleBang740438587QQ13;

			if (UncleBang740438587QQ2 >= UncleBang740438587QQ14)
			{
				if (UncleBang740438587QQdfawf.isMyControlObject())
				{
					this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
				}
			}
		}

		break;

	case 1:
		if (!UncleBang740438587QQ5 || UncleBang740438587QQ4 == 0)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 2:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 3:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 4:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (UncleBang740438587QQ6 == this.STATE_ILUSIONSHURIKEN && this.sq_IsEnterCommand(UncleBang740438587QQ5, this.E_JUMP_COMMAND))
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 5:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (UncleBang740438587QQ6 == this.STATE_ILUSIONSHURIKEN && this.sq_IsEnterCommand(UncleBang740438587QQ5, this.E_JUMP_COMMAND))
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 6:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (UncleBang740438587QQ6 == this.STATE_ILUSIONSHURIKEN && this.sq_IsEnterCommand(UncleBang740438587QQ5, this.E_JUMP_COMMAND))
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 7:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (UncleBang740438587QQ6 == this.STATE_ILUSIONSHURIKEN && this.sq_IsEnterCommand(UncleBang740438587QQ5, this.E_JUMP_COMMAND))
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 8:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 9:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ6 == 10)
		{
			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("flametornadoMove").get_vector(0);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 40000);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			local UncleBang740438587QQ19 = UncleBang740438587QQdfawf.getObjectManager();

			for( local i = 0; i < UncleBang740438587QQ19.getCollisionObjectNumber(); ++i )
			{
				local UncleBang740438587QQ20 = UncleBang740438587QQdfawf.getVar("flametornadoAttract").get_vector(0);
				local UncleBang740438587QQ21 = UncleBang740438587QQdfawf.getVar("flametornadoAttract").get_vector(1);
				local UncleBang740438587QQ13 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 2);
				local UncleBang740438587QQ23 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 3);
				local UncleBang740438587QQ24 = UncleBang740438587QQ19.getCollisionObject(i);

				if (UncleBang740438587QQ24 && UncleBang740438587QQdfawf.isEnemy(UncleBang740438587QQ24) && !this.sq_IsFixture(UncleBang740438587QQ24) && UncleBang740438587QQ24.isObjectType(this.OBJECTTYPE_ACTIVE) && this.sq_GetDistance(UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ20, UncleBang740438587QQ21, true) <= UncleBang740438587QQ13)
				{
					local UncleBang740438587QQ12 = this.sq_GetAccel(UncleBang740438587QQ20, UncleBang740438587QQ2, UncleBang740438587QQ9, UncleBang740438587QQ23, false);
					local UncleBang740438587QQ26 = this.sq_GetAccel(UncleBang740438587QQ21, UncleBang740438587QQ3, UncleBang740438587QQ9, UncleBang740438587QQ23, false);
					this.sq_setCurrentAxisPos(UncleBang740438587QQ24, 0, UncleBang740438587QQ12);
					this.sq_setCurrentAxisPos(UncleBang740438587QQ24, 1, UncleBang740438587QQ26);
				}
			}
		}
		else
		{
		}

		break;

	case 10:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 11:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 12:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("bigkunaiMove").get_vector(0);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100000);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			break;

		case 11:
			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("bigkunaiMove").get_vector(0);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 150000);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);

			if (UncleBang740438587QQ5.sq_IsEnterSkill(this.SKILL_BIGKUNAI) != -1)
			{
				this.sq_MoveToNearMovablePos(UncleBang740438587QQ5, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4, this.sq_GetXPos(UncleBang740438587QQ5), this.sq_GetYPos(UncleBang740438587QQ5), this.sq_GetZPos(UncleBang740438587QQ5), 20, -1, 3);
				UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
				UncleBang740438587QQdfawf.flushSetStatePacket();
			}

			break;
		}

		break;

	case 13:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			local UncleBang740438587QQ33 = UncleBang740438587QQdfawf.getVar("bigkunaiMove").get_vector(0);
			local UncleBang740438587QQ34 = this.sq_GetUniformVelocity(UncleBang740438587QQ4, UncleBang740438587QQ33, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 2, UncleBang740438587QQ34);

			if (UncleBang740438587QQ4 == 0)
			{
				UncleBang740438587QQdfawf.sendStateOnlyPacket(11);
				UncleBang740438587QQdfawf.flushSetStatePacket();
			}

			break;

		case 11:
			if (UncleBang740438587QQ5.sq_IsEnterSkill(this.SKILL_BIGKUNAI) != -1)
			{
				this.sq_MoveToNearMovablePos(UncleBang740438587QQ5, UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ4, this.sq_GetXPos(UncleBang740438587QQ5), this.sq_GetYPos(UncleBang740438587QQ5), this.sq_GetZPos(UncleBang740438587QQ5), 20, -1, 3);
				UncleBang740438587QQdfawf.sendStateOnlyPacket(12);
				UncleBang740438587QQdfawf.flushSetStatePacket();
			}

			break;
		}

		break;

	case 14:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ6 == 11)
		{
			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("migawariMove").get_vector(0);
			local UncleBang740438587QQ33 = UncleBang740438587QQdfawf.getVar("migawariMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 1500);
			local UncleBang740438587QQ34 = this.sq_GetUniformVelocity(UncleBang740438587QQ4, UncleBang740438587QQ33, UncleBang740438587QQ9, 1500);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 2, UncleBang740438587QQ34);
			this.sq_SimpleMoveToNearMovablePos(UncleBang740438587QQdfawf, 200);
		}
		else
		{
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 15:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 16:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 17:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 18:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 19:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 20:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 21:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 22:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 23:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 24:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 25:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 26:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 27:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (UncleBang740438587QQ6 == this.STATE_FLAMEFLOWER && UncleBang740438587QQ8 <= 32)
		{
			if (this.sq_IsEnterCommand(UncleBang740438587QQ5, this.E_JUMP_COMMAND))
			{
				this.sq_SetAnimationFrameIndex(UncleBang740438587QQ7, 33);
			}
		}

		if (UncleBang740438587QQ6 == this.STATE_FLAMEFLOWER && UncleBang740438587QQ8 >= 34 && UncleBang740438587QQ8 <= 67)
		{
			if (this.sq_IsEnterCommand(UncleBang740438587QQ5, this.E_JUMP_COMMAND))
			{
				this.sq_SetAnimationFrameIndex(UncleBang740438587QQ7, 68);
			}
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 28:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (UncleBang740438587QQ6 == this.STATE_FLAMEFLOWER)
		{
			if (this.sq_IsEnterCommand(UncleBang740438587QQ5, this.E_JUMP_COMMAND))
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}
		}

		break;

	case 29:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 30:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (UncleBang740438587QQ8 >= 17 && UncleBang740438587QQ8 <= 26)
		{
			local UncleBang740438587QQ19 = UncleBang740438587QQdfawf.getObjectManager();

			for( local i = 0; i < UncleBang740438587QQ19.getCollisionObjectNumber(); ++i )
			{
				local UncleBang740438587QQ20 = UncleBang740438587QQdfawf.getVar("attract").get_vector(0);
				local UncleBang740438587QQ21 = UncleBang740438587QQdfawf.getVar("attract").get_vector(1);
				local UncleBang740438587QQ24 = UncleBang740438587QQ19.getCollisionObject(i);

				if (UncleBang740438587QQ24 && UncleBang740438587QQdfawf.isEnemy(UncleBang740438587QQ24) && !this.sq_IsFixture(UncleBang740438587QQ24) && UncleBang740438587QQ24.isObjectType(this.OBJECTTYPE_ACTIVE) && this.sq_GetDistance(UncleBang740438587QQ2, UncleBang740438587QQ3, UncleBang740438587QQ20, UncleBang740438587QQ21, true) <= 600)
				{
					local UncleBang740438587QQ12 = this.sq_GetAccel(UncleBang740438587QQ20, UncleBang740438587QQ2, UncleBang740438587QQ9, 500, false);
					local UncleBang740438587QQ26 = this.sq_GetAccel(UncleBang740438587QQ21, UncleBang740438587QQ3, UncleBang740438587QQ9, 500, false);
					this.sq_setCurrentAxisPos(UncleBang740438587QQ24, 0, UncleBang740438587QQ12);
					this.sq_setCurrentAxisPos(UncleBang740438587QQ24, 1, UncleBang740438587QQ26);
				}
			}
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 31:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 32:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 33:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 34:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 35:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 36:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 37:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 38:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 39:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 40:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 41:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 42:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 43:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 44:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 45:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 46:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 47:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 48:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 49:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 50:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 500);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 500);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;

		case 11:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;
		}

		break;

	case 51:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 500);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 500);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;

		case 11:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;
		}

		break;

	case 52:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 500);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 500);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;

		case 11:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;
		}

		break;

	case 53:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 500);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 500);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;

		case 11:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("smallSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;
		}

		break;

	case 54:
		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		switch(UncleBang740438587QQ6)
		{
		case 10:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(0);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 300);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			break;

		case 11:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;

		case 12:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;

		case 13:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;

		case 14:
			if (!UncleBang740438587QQ5)
			{
				this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
			}

			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(0);
			local UncleBang740438587QQ48 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 100);
			local UncleBang740438587QQ26 = this.sq_GetUniformVelocity(UncleBang740438587QQ3, UncleBang740438587QQ48, UncleBang740438587QQ9, 100);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 1, UncleBang740438587QQ26);
			break;
		}

		break;

	case 55:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 56:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(0);
		local UncleBang740438587QQ33 = UncleBang740438587QQdfawf.getVar("bigSurikenMove").get_vector(1);
		local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 300);
		local UncleBang740438587QQ34 = this.sq_GetUniformVelocity(UncleBang740438587QQ4, UncleBang740438587QQ33, UncleBang740438587QQ9, 300);
		this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
		this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 2, UncleBang740438587QQ34);
		break;

	case 57:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 58:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		this.LeaveTrace_Body(UncleBang740438587QQdfawf);
		break;

	case 59:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 60:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 61:
		local UncleBang740438587QQ10 = UncleBang740438587QQdfawf.getVar("swordofkusanagiMove").get_vector(0);
		local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("swordofkusanagiMove").get_vector(1);
		local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ10, UncleBang740438587QQ11, UncleBang740438587QQ9, 500);
		this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
		local UncleBang740438587QQ13 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_SWORDOFKUSANAGI, 1);

		if (UncleBang740438587QQdfawf.getDirection() == this.ENUM_DIRECTION_LEFT)
		{
			local UncleBang740438587QQ14 = UncleBang740438587QQ10 - UncleBang740438587QQ13;

			if (UncleBang740438587QQ2 <= UncleBang740438587QQ14)
			{
				if (UncleBang740438587QQdfawf.isMyControlObject())
				{
					this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
				}
			}
		}

		if (UncleBang740438587QQdfawf.getDirection() == this.ENUM_DIRECTION_RIGHT)
		{
			local UncleBang740438587QQ14 = UncleBang740438587QQ10 + UncleBang740438587QQ13;

			if (UncleBang740438587QQ2 >= UncleBang740438587QQ14)
			{
				if (UncleBang740438587QQdfawf.isMyControlObject())
				{
					this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
				}
			}
		}

		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 62:
		if (!UncleBang740438587QQ5 || UncleBang740438587QQ4 == 0)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 63:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 64:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		break;

	case 65:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 66:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 67:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 68:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 69:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 70:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 71:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").get_vector(0);

		if (UncleBang740438587QQ6 == 11)
		{
			local UncleBang740438587QQ11 = UncleBang740438587QQdfawf.getVar("migawariMove").get_vector(0);
			local UncleBang740438587QQ33 = UncleBang740438587QQdfawf.getVar("migawariMove").get_vector(1);
			local UncleBang740438587QQ12 = this.sq_GetUniformVelocity(UncleBang740438587QQ2, UncleBang740438587QQ11, UncleBang740438587QQ9, 1500);
			local UncleBang740438587QQ34 = this.sq_GetUniformVelocity(UncleBang740438587QQ4, UncleBang740438587QQ33, UncleBang740438587QQ9, 1500);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ12);
			this.sq_setCurrentAxisPos(UncleBang740438587QQdfawf, 2, UncleBang740438587QQ34);
			this.sq_SimpleMoveToNearMovablePos(UncleBang740438587QQdfawf, 200);
		}
		else
		{
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 72:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 73:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 74:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 75:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 76:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 77:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 78:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 79:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;

	case 80:
		if (!UncleBang740438587QQ5)
		{
			this.sq_SendDestroyPacketPassiveObject(UncleBang740438587QQdfawf);
		}

		if (this.CNSquirrelAppendage.sq_IsAppendAppendage(UncleBang740438587QQ5, "character/thief/3_kunoich/deitiesrebirth/ap_deitiesrebirth.nut") == true)
		{
			this.sq_SetPause(UncleBang740438587QQdfawf, this.PAUSETYPE_OBJECT, 1);
		}

		break;
	}
}

function setCustomData_po_thief_shared_UncleBang740438587( UncleBang740438587QQdfawf, UncleBang740438587QQhibercvisd )
{
	if (!UncleBang740438587QQdfawf)
	{
		return;
	}

	local UncleBang740438587QQ1 = UncleBang740438587QQhibercvisd.readDword();
	local UncleBang740438587QQ2 = this.sq_GetXPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ3 = this.sq_GetYPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ4 = this.sq_GetZPos(UncleBang740438587QQdfawf);
	UncleBang740438587QQdfawf.getVar("id").clear_vector();
	UncleBang740438587QQdfawf.getVar("id").push_vector(UncleBang740438587QQ1);
	local UncleBang740438587QQ5 = this.sq_ObjectToSQRCharacter(UncleBang740438587QQdfawf.getTopCharacter());
	local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCurrentAnimation();

	switch(UncleBang740438587QQ1)
	{
	case 0:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(0);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 0);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(174, -1, 0, 0.1);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ11 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_EQUIPCHAKRAWEAPON, 0);
		local UncleBang740438587QQ12 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), UncleBang740438587QQ11);
		UncleBang740438587QQdfawf.getVar("chakraMove").clear_vector();
		UncleBang740438587QQdfawf.getVar("chakraMove").push_vector(UncleBang740438587QQ2);
		UncleBang740438587QQdfawf.getVar("chakraMove").push_vector(UncleBang740438587QQ12);
		break;

	case 1:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(0);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 0);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(174, -1, 0, 0.1);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		UncleBang740438587QQdfawf.sq_SetMoveParticle("Particle/chakraweapon.ptl", 0.0, -45.0);
		UncleBang740438587QQdfawf.setCustomRotate(true, this.sq_ToRadian(-45.0));
		break;

	case 2:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(1);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		local UncleBang740438587QQ18 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 0);
		UncleBang740438587QQdfawf.setTimeEvent(0, UncleBang740438587QQ18, 0, false);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 1);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		break;

	case 3:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(2);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 1);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEBALL, -1, 1, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ25 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_FLAMEBALL);
		local UncleBang740438587QQ26 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 2, UncleBang740438587QQ25);
		local UncleBang740438587QQ27 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 3, UncleBang740438587QQ25);
		local UncleBang740438587QQ28 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 4, UncleBang740438587QQ25);
		local UncleBang740438587QQ29 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 5, UncleBang740438587QQ25);
		this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ9, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ26, UncleBang740438587QQ27, UncleBang740438587QQ28, UncleBang740438587QQ29);
		break;

	case 4:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(3);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 5:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(4);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 6:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(5);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 2);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_ILUSIONSHURIKEN, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_ILUSIONSHURIKEN, 0);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQdfawf.setTimeEvent(0, 500, 0, false);
		break;

	case 7:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(5);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 2);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_ILUSIONSHURIKEN, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_ILUSIONSHURIKEN, 0);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQdfawf.sq_SetMoveParticle("Particle/illusionsuriken.ptl", 0.0, -45.0);
		UncleBang740438587QQdfawf.setCustomRotate(true, this.sq_ToRadian(-45.0));
		break;

	case 8:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(6);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 9:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 10:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(9);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_CAST");
		break;

	case 11:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(10);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_CAST");
		break;

	case 12:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 13:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 14:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 15:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(19);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 4);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_MIGAWARI, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		break;

	case 16:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(20);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 4);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_MIGAWARI, -1, 1, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		break;

	case 17:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(21);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 5);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_MIGAWARI, -1, 2, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_MIGAWARI, 0);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
		this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
		break;

	case 18:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(22);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 19:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(23);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 20:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(24);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 6);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SKYROADS, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		break;

	case 21:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(25);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 7);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SKYROADS, -1, 1, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		break;

	case 22:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(26);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 8);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SKYROADS, -1, 2, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_SKYROADS, 0);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
		this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(0, 0, 0), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
		break;

	case 23:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(27);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 9);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SKYROADS, -1, 3, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_SKYROADS, 1);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		local UncleBang740438587QQ25 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_SKYROADS);
		local UncleBang740438587QQ26 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_SKYROADS, 4, UncleBang740438587QQ25);
		local UncleBang740438587QQ27 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_SKYROADS, 5, UncleBang740438587QQ25);
		local UncleBang740438587QQ28 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_SKYROADS, 6, UncleBang740438587QQ25);
		local UncleBang740438587QQ29 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_SKYROADS, 7, UncleBang740438587QQ25);
		this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ9, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ26, UncleBang740438587QQ27, UncleBang740438587QQ28, UncleBang740438587QQ29);
		break;

	case 24:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(28);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		UncleBang740438587QQdfawf.sq_PlaySound("R_GASOLINEFIRE_CAST");
		break;

	case 25:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 26:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(31);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 11);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_GASOLINEFIRE, -1, 1, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 0);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		local UncleBang740438587QQ25 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE);
		local UncleBang740438587QQ26 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 3, UncleBang740438587QQ25);
		local UncleBang740438587QQ27 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 4, UncleBang740438587QQ25);
		local UncleBang740438587QQ28 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 5, UncleBang740438587QQ25);
		local UncleBang740438587QQ29 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 6, UncleBang740438587QQ25);
		this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ9, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ26, UncleBang740438587QQ27, UncleBang740438587QQ28, UncleBang740438587QQ29);
		this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
		UncleBang740438587QQdfawf.sq_PlaySound("GASOLINEFIRE_BALL_EXP");
		break;

	case 27:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(32);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 13);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEFLOWER, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ104 = UncleBang740438587QQ6.getDelaySum(false);
		this.sq_flashScreen(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ104, 0, 125, this.sq_RGB(0, 0, 0), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
		break;

	case 28:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(33);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 14);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEFLOWER, -1, 1, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEFLOWER, 1);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		local UncleBang740438587QQ111 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEFLOWER, 0);
		UncleBang740438587QQdfawf.setTimeEvent(0, 1400 / UncleBang740438587QQ111, UncleBang740438587QQ111, false);
		break;

	case 29:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(34);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 15);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEFLOWER, -1, 2, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEFLOWER, 2);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetMyShake(UncleBang740438587QQdfawf, 8, 300);
		this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
		break;

	case 30:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(35);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 18);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 2, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);

		if (UncleBang740438587QQdfawf.isMyControlObject())
		{
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(31);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 400), UncleBang740438587QQ3, UncleBang740438587QQ4);
			UncleBang740438587QQ5.sq_StartWrite();
			UncleBang740438587QQ5.sq_WriteDword(32);
			this.sq_SendCreatePassiveObjectPacketPos(UncleBang740438587QQdfawf, 24356, 0, this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 400), UncleBang740438587QQ3, UncleBang740438587QQ4);
		}

		local UncleBang740438587QQ122 = UncleBang740438587QQdfawf.getObjectManager();

		for( local i = 0; i < UncleBang740438587QQ122.getCollisionObjectNumber(); ++i )
		{
			local UncleBang740438587QQ123 = UncleBang740438587QQ122.getCollisionObject(i);

			if (UncleBang740438587QQ123 && UncleBang740438587QQdfawf.isEnemy(UncleBang740438587QQ123) && UncleBang740438587QQ123.isObjectType(this.OBJECTTYPE_ACTIVE))
			{
				local UncleBang740438587QQ124 = this.sq_GetXPos(UncleBang740438587QQ123);
				local UncleBang740438587QQ125 = this.sq_GetYPos(UncleBang740438587QQ123);
				UncleBang740438587QQdfawf.getVar("attract").clear_vector();
				UncleBang740438587QQdfawf.getVar("attract").push_vector(UncleBang740438587QQ124);
				UncleBang740438587QQdfawf.getVar("attract").push_vector(UncleBang740438587QQ125);
			}
		}

		break;

	case 31:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(36);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ25 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
		local UncleBang740438587QQ20 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 6, UncleBang740438587QQ25);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		break;

	case 32:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 33:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 34:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 35:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 36:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 37:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 38:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 39:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(46);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQdfawf.setCurrentDirection(this.sq_GetOppositeDirection(UncleBang740438587QQ5.getDirection()));
		break;

	case 40:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(47);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 21);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLYINGSWALLOW, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = 150;
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		break;

	case 41:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(48);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 22);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLYINGSWALLOW, -1, 1, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = 150;
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		local UncleBang740438587QQ143 = UncleBang740438587QQhibercvisd.readDword();
		UncleBang740438587QQdfawf.setCustomRotate(true, this.sq_ToRadian(1.0 * UncleBang740438587QQ143));
		break;

	case 42:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(49);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 23);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLYINGSWALLOW, -1, 2, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLYINGSWALLOW, 0);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		local UncleBang740438587QQ150 = this.sq_getRandom(-200, 200);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom1_normal.ani", UncleBang740438587QQ150, 0, 0, 0, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom1_normal.ani", UncleBang740438587QQ150, 0, 0, 0, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		break;

	case 43:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(50);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 24);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLYINGSWALLOW, -1, 3, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLYINGSWALLOW, 1);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 40, 10, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 80, -30, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 120, 40, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 160, -25, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -40, 40, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -80, -30, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -120, 25, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -160, -10, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		break;

	case 44:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(50);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 24);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLYINGSWALLOW, -1, 3, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLYINGSWALLOW, 2);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 40, 10, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 80, -30, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 120, 40, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 160, -25, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -40, 40, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -80, -30, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -120, 25, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -160, -10, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 200, -50, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -200, 50, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", 170, 35, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		this.als_ani(UncleBang740438587QQdfawf, "passiveUncleBang740438587QQdfawfect/unclebang_shared_passive_UncleBang740438587QQdfawfect/thief/animation/flyingswallow/swallow_boom2_normal.ani", -170, -35, 0, 90, 100 * UncleBang740438587QQ20, 0, 1, 1.0);
		break;

	case 45:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(51);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 46:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 47:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 48:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(58);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 49:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(59);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 50:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 51:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 52:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 53:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 54:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 55:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(67);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 29);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 2, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 3);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
		break;

	case 56:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(68);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 28);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 1, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 4);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		local UncleBang740438587QQ178 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 0);
		UncleBang740438587QQdfawf.setTimeEvent(0, 300 / UncleBang740438587QQ178, 0, true);
		UncleBang740438587QQdfawf.sq_SetMaxHitCounterPerObject(UncleBang740438587QQ178);
		local UncleBang740438587QQ12 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 200);
		local UncleBang740438587QQ180 = 0;
		UncleBang740438587QQdfawf.getVar("bigSurikenMove").clear_vector();
		UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ12);
		UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ180);
		break;

	case 57:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(69);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 29);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 2, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 4);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
		break;

	case 58:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(70);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQ7.setRGBA(255, 255, 255, 0);
		break;

	case 59:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 60:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(74);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 31);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_AMATERAS, -1, 1, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_AMATERAS, 1);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 100);
		break;

	case 61:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(75);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 32);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SWORDOFKUSANAGI, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = 60;
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		local UncleBang740438587QQ11 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_SWORDOFKUSANAGI, 1);
		local UncleBang740438587QQ12 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), UncleBang740438587QQ11);
		UncleBang740438587QQdfawf.getVar("swordofkusanagiMove").clear_vector();
		UncleBang740438587QQdfawf.getVar("swordofkusanagiMove").push_vector(UncleBang740438587QQ2);
		UncleBang740438587QQdfawf.getVar("swordofkusanagiMove").push_vector(UncleBang740438587QQ12);
		break;

	case 62:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(75);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 32);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_SWORDOFKUSANAGI, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = 60;
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQdfawf.sq_SetMoveParticle("Particle/swordofkusanagi.ptl", 0.0, -45.0);
		UncleBang740438587QQdfawf.setCustomRotate(true, this.sq_ToRadian(-45.0));
		break;

	case 63:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(76);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ104 = UncleBang740438587QQ6.getDelaySum(false);
		this.sq_flashScreen(UncleBang740438587QQdfawf, 70, UncleBang740438587QQ104, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
		break;

	case 64:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(77);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_SWORDOFKUSANAGI, 2);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		UncleBang740438587QQ7.setImageRateFromOriginal(UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		UncleBang740438587QQ7.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ19 * UncleBang740438587QQ20);
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		break;

	case 65:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(1);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ18 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 0);
		UncleBang740438587QQdfawf.setTimeEvent(0, UncleBang740438587QQ18, 0, false);
		local UncleBang740438587QQ19 = 1.0;
		local UncleBang740438587QQ20 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMEBALL, 1);
		UncleBang740438587QQ20 = UncleBang740438587QQ20.tofloat() / 100.0;
		this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ7, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20, UncleBang740438587QQ19 * UncleBang740438587QQ20);
		break;

	case 66:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(3);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 67:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(4);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 68:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(6);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 69:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(9);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_CAST");
		break;

	case 70:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(10);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_CAST");
		break;

	case 71:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 72:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(22);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 73:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(23);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 74:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(28);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 75:
		UncleBang740438587QQdfawf.sendStateOnlyPacket(10);
		UncleBang740438587QQdfawf.flushSetStatePacket();
		break;

	case 76:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(32);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		local UncleBang740438587QQ8 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 13);
		this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ8);
		local UncleBang740438587QQ9 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
		local UncleBang740438587QQ10 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMEFLOWER, -1, 0, 1.0);
		this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ9, UncleBang740438587QQ10);
		local UncleBang740438587QQ104 = UncleBang740438587QQ6.getDelaySum(false);
		this.sq_flashScreen(UncleBang740438587QQdfawf, 0, UncleBang740438587QQ104, 0, 125, this.sq_RGB(0, 0, 0), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
		break;

	case 77:
		this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(51);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 78:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(58);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 79:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(59);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;

	case 80:
		local UncleBang740438587QQ7 = UncleBang740438587QQdfawf.getCustomAnimation(70);
		UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ7);
		break;
	}
}

function setState_po_thief_shared_UncleBang740438587( UncleBang740438587QQdfawf, UncleBang740438587QQbvqawd, UncleBang740438587QQbvqahbwesaf )
{
	if (!UncleBang740438587QQdfawf)
	{
		return;
	}

	local UncleBang740438587QQ1 = UncleBang740438587QQdfawf.getVar("id").get_vector(0);
	local UncleBang740438587QQ2 = this.sq_GetXPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ3 = this.sq_GetYPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ4 = this.sq_GetZPos(UncleBang740438587QQdfawf);
	local UncleBang740438587QQ5 = this.sq_ObjectToSQRCharacter(UncleBang740438587QQdfawf.getTopCharacter());

	switch(UncleBang740438587QQ1)
	{
	case 9:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(7);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 3);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMETORNADO, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 2, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 5, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 1);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ17 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 0);
			UncleBang740438587QQdfawf.setTimeEvent(0, UncleBang740438587QQ17, 0, false);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 400);
			UncleBang740438587QQdfawf.getVar("flametornadoMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("flametornadoMove").push_vector(UncleBang740438587QQ18);
			local UncleBang740438587QQ19 = UncleBang740438587QQdfawf.getObjectManager();

			for( local i = 0; i < UncleBang740438587QQ19.getCollisionObjectNumber(); ++i )
			{
				local UncleBang740438587QQ20 = UncleBang740438587QQ19.getCollisionObject(i);

				if (UncleBang740438587QQ20 && UncleBang740438587QQdfawf.isEnemy(UncleBang740438587QQ20) && UncleBang740438587QQ20.isObjectType(this.OBJECTTYPE_ACTIVE))
				{
					local UncleBang740438587QQ21 = this.sq_GetXPos(UncleBang740438587QQ20);
					local UncleBang740438587QQ22 = this.sq_GetYPos(UncleBang740438587QQ20);
					UncleBang740438587QQdfawf.getVar("flametornadoAttract").clear_vector();
					UncleBang740438587QQdfawf.getVar("flametornadoAttract").push_vector(UncleBang740438587QQ21);
					UncleBang740438587QQdfawf.getVar("flametornadoAttract").push_vector(UncleBang740438587QQ22);
				}
			}

			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(8);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 3);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FLAMETORNADO, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 2, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 5, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FLAMETORNADO, 1);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
			break;
		}

		break;

	case 12:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(11);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 3);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_BIGKUNAI, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 3000);
			UncleBang740438587QQdfawf.getVar("bigkunaiMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("bigkunaiMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_THROW");
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(12);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 3);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_BIGKUNAI, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ17 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_BIGKUNAI, 0);
			UncleBang740438587QQdfawf.setTimeEvent(0, UncleBang740438587QQ17, 0, false);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 300);
			UncleBang740438587QQdfawf.getVar("bigkunaiMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("bigkunaiMove").push_vector(UncleBang740438587QQ18);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 3, 1920);
			UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_SPIN");
			break;

		case 12:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(12);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(13);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 3);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_BIGKUNAI, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_BIGKUNAI, 1);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
			UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_EXP");
			break;
		}

		break;

	case 13:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(14);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 3);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_BIGKUNAI, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ55 = 0;
			UncleBang740438587QQdfawf.getVar("bigkunaiMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("bigkunaiMove").push_vector(UncleBang740438587QQ55);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(15);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 3);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_BIGKUNAI, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ17 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_BIGKUNAI, 0);
			UncleBang740438587QQdfawf.setTimeEvent(0, UncleBang740438587QQ17, 0, false);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 3, 1920);
			UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_SPIN");
			break;

		case 12:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(12);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(16);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 3);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_BIGKUNAI, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_BIGKUNAI, 1);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
			UncleBang740438587QQdfawf.sq_PlaySound("NSKUNAI_EXP");
			break;
		}

		break;

	case 14:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(17);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(18);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -200);
			local UncleBang740438587QQ55 = 100;
			UncleBang740438587QQdfawf.getVar("migawariMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("migawariMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("migawariMove").push_vector(UncleBang740438587QQ55);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;
		}

		local UncleBang740438587QQ71 = UncleBang740438587QQdfawf.getCurrentAnimation();
		UncleBang740438587QQ71.setRGBA(255, 255, 255, 0);
		break;

	case 25:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(29);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 10);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_GASOLINEFIRE, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(30);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 12);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_GASOLINEFIRE, -1, 2, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 1);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 5, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 6, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 8, 300);
			UncleBang740438587QQdfawf.sq_PlaySound("GASOLINEFIRE_BALL_EXP");
			break;
		}

		break;

	case 32:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(37);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(38);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 17);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 6, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 8, 300);
			break;
		}

		break;

	case 33:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(39);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 19);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 3, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 8, 300);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(45);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			UncleBang740438587QQdfawf.sq_PlaySound("R_NINPOJIN_EXP");
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 20);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 4, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;
		}

		break;

	case 34:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(40);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 19);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 3, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 8, 300);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(45);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			UncleBang740438587QQdfawf.sq_PlaySound("R_NINPOJIN_EXP");
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 20);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 4, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;
		}

		break;

	case 35:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(41);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 19);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 3, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 8, 300);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(45);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			UncleBang740438587QQdfawf.sq_PlaySound("R_NINPOJIN_EXP");
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 20);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 4, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 10, 300);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;
		}

		break;

	case 36:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(42);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 19);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 3, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(45);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 20);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 4, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			break;
		}

		break;

	case 37:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(43);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 19);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 3, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(45);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 20);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 4, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			break;
		}

		break;

	case 38:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(44);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 19);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 3, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 8, 300);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(45);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 20);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_DOOMFIELD, -1, 4, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_DOOMFIELD);
			local UncleBang740438587QQ16 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_DOOMFIELD, 7, UncleBang740438587QQ10);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			break;
		}

		break;

	case 46:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(52);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 5, 300);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(53);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 25);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_YAMATAOROCHI, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 2, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 5, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			local UncleBang740438587QQ189 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 0);
			UncleBang740438587QQdfawf.setTimeEvent(0, UncleBang740438587QQ189, 0, false);
			break;

		case 12:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(12);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(54);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			break;
		}

		break;

	case 47:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(55);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(56);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 26);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_YAMATAOROCHI, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 6, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 7, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 8, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 9, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ189 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 1);
			UncleBang740438587QQdfawf.setTimeEvent(0, UncleBang740438587QQ189, 0, false);
			break;

		case 12:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(12);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(57);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_YAMATAOROCHI, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			break;
		}

		break;

	case 50:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(60);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 27);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ215 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 0);
			UncleBang740438587QQdfawf.setTimeEvent(0, 720 / UncleBang740438587QQ215, 0, true);
			UncleBang740438587QQdfawf.sq_SetMaxHitCounterPerObject(UncleBang740438587QQ215);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 280);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), 100);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ217);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(61);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 27);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -330);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), -80);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ217);
			break;
		}

		break;

	case 51:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(60);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 27);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ215 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 0);
			UncleBang740438587QQdfawf.setTimeEvent(0, 720 / UncleBang740438587QQ215, 0, true);
			UncleBang740438587QQdfawf.sq_SetMaxHitCounterPerObject(UncleBang740438587QQ215);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 320);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), 50);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ217);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(61);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 27);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -370);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), -30);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ217);
			break;
		}

		break;

	case 52:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(60);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 27);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ215 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 0);
			UncleBang740438587QQdfawf.setTimeEvent(0, 720 / UncleBang740438587QQ215, 0, true);
			UncleBang740438587QQdfawf.sq_SetMaxHitCounterPerObject(UncleBang740438587QQ215);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 380);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), 0);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ217);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(61);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 27);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -430);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), -0);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ217);
			break;
		}

		break;

	case 53:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(60);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 27);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ215 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 0);
			UncleBang740438587QQdfawf.setTimeEvent(0, 720 / UncleBang740438587QQ215, 0, true);
			UncleBang740438587QQdfawf.sq_SetMaxHitCounterPerObject(UncleBang740438587QQ215);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 280);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), -50);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ217);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(61);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 27);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 2);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -330);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), 30);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("smallSurikenMove").push_vector(UncleBang740438587QQ217);
			break;
		}

		break;

	case 54:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(62);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 28);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 3);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ215 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 1);
			UncleBang740438587QQdfawf.setTimeEvent(0, 600 / UncleBang740438587QQ215, 0, true);
			UncleBang740438587QQdfawf.sq_SetMaxHitCounterPerObject(UncleBang740438587QQ215);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 200);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ18);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(63);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 28);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 3);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -50);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), -50);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ217);
			break;

		case 12:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(12);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(64);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 28);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 3);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -100);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), 50);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ217);
			break;

		case 13:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(13);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(65);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 28);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 3);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 50);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), 100);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ217);
			break;

		case 14:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(14);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(66);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 28);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_FUUMASHURIKEN, -1, 1, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_FUUMASHURIKEN, 3);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), 100);
			local UncleBang740438587QQ217 = this.sq_GetDistancePos(UncleBang740438587QQ3, UncleBang740438587QQdfawf.getDirection(), -100);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("bigSurikenMove").push_vector(UncleBang740438587QQ217);
			break;
		}

		break;

	case 59:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(71);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 30);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_AMATERAS, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(72);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ322 = UncleBang740438587QQ6.getDelaySum(false);
			local UncleBang740438587QQ323 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_AMATERAS, 0);
			UncleBang740438587QQdfawf.setTimeEvent(2, UncleBang740438587QQ322 / UncleBang740438587QQ323, UncleBang740438587QQ323, false);
			break;

		case 12:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(12);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(73);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 30);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_AMATERAS, -1, 2, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			break;
		}

		break;

	case 71:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(17);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			break;

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			this.sq_ChangeDrawLayer(UncleBang740438587QQdfawf, this.ENUM_DRAWLAYER_BOTTOM);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(18);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ18 = this.sq_GetDistancePos(UncleBang740438587QQ2, UncleBang740438587QQdfawf.getDirection(), -200);
			local UncleBang740438587QQ55 = 100;
			UncleBang740438587QQdfawf.getVar("migawariMove").clear_vector();
			UncleBang740438587QQdfawf.getVar("migawariMove").push_vector(UncleBang740438587QQ18);
			UncleBang740438587QQdfawf.getVar("migawariMove").push_vector(UncleBang740438587QQ55);
			this.sq_flashScreen(UncleBang740438587QQdfawf, 70, 140, 70, 160, this.sq_RGB(255, 255, 255), this.GRAPHICEFFECT_NONE, this.ENUM_DRAWLAYER_BOTTOM);
			break;
		}

		break;

	case 75:
		switch(UncleBang740438587QQbvqawd)
		{
		case 10:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(10);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(29);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 10);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_GASOLINEFIRE, -1, 0, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			  // [3976]  OP_JMP            0    108    0    0

		case 11:
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").clear_vector();
			UncleBang740438587QQdfawf.getVar("UncleBang740438587QQbvqawd").push_vector(11);
			local UncleBang740438587QQ6 = UncleBang740438587QQdfawf.getCustomAnimation(30);
			UncleBang740438587QQdfawf.setCurrentAnimation(UncleBang740438587QQ6);
			local UncleBang740438587QQ7 = this.sq_GetCustomAttackInfo(UncleBang740438587QQdfawf, 12);
			this.sq_SetCurrentAttackInfo(UncleBang740438587QQdfawf, UncleBang740438587QQ7);
			local UncleBang740438587QQ8 = this.sq_GetCurrentAttackInfo(UncleBang740438587QQdfawf);
			local UncleBang740438587QQ9 = UncleBang740438587QQ5.sq_GetBonusRateWithPassive(this.SKILL_GASOLINEFIRE, -1, 2, 1.0);
			this.sq_SetCurrentAttackBonusRate(UncleBang740438587QQ8, UncleBang740438587QQ9);
			local UncleBang740438587QQ15 = 1.0;
			local UncleBang740438587QQ16 = this.sq_GetIntData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 1);
			UncleBang740438587QQ16 = UncleBang740438587QQ16.tofloat() / 100.0;
			UncleBang740438587QQ6.setImageRateFromOriginal(UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			UncleBang740438587QQ6.setAutoLayerWorkAnimationAddSizeRate(UncleBang740438587QQ15 * UncleBang740438587QQ16);
			this.sq_SetAttackBoundingBoxSizeRate(UncleBang740438587QQ6, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16, UncleBang740438587QQ15 * UncleBang740438587QQ16);
			local UncleBang740438587QQ10 = this.sq_GetSkillLevel(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE);
			local UncleBang740438587QQ11 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 3, UncleBang740438587QQ10);
			local UncleBang740438587QQ12 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 4, UncleBang740438587QQ10);
			local UncleBang740438587QQ13 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 5, UncleBang740438587QQ10);
			local UncleBang740438587QQ14 = this.sq_GetLevelData(UncleBang740438587QQ5, this.SKILL_GASOLINEFIRE, 6, UncleBang740438587QQ10);
			this.sq_SetChangeStatusIntoAttackInfo(UncleBang740438587QQ8, 0, this.ACTIVESTATUS_BURN, UncleBang740438587QQ11, UncleBang740438587QQ12, UncleBang740438587QQ13, UncleBang740438587QQ14);
			this.sq_SetMyShake(UncleBang740438587QQdfawf, 8, 300);
			UncleBang740438587QQdfawf.sq_PlaySound("GASOLINEFIRE_BALL_EXP");
			  // [4084]  OP_JMP            0      0    0    0

		default:
			break;
		}
	}
}

