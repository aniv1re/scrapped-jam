if (!other.isLocked) {
	scrSound(sfxLoot_Blueprint, 1);
	randomize();
	
	if (objCardBotMachinegun_Icon.upgradeState == 2 &&
		objCardBotHelicopter_Icon.upgradeState == 2 &&
		objCardBotMortyr_Icon.upgradeState == 2 &&
		objCardShield_Icon.upgradeState == 2  &&
		objCardBotGunner_Icon.upgradeState == 2 &&
		objCardBotMachinegun_Icon.unlockState &&
		objCardBotHelicopter_Icon.unlockState &&
		objCardBotMortyr_Icon.unlockState &&
		objCardShield_Icon.unlockState &&
		objCardBotGunner_Icon.unlockState) {
			show_debug_message("miss");
	}
	else {
		if (objCardBotMachinegun_Icon.unlockState &&
			objCardBotHelicopter_Icon.unlockState &&
			objCardBotMortyr_Icon.unlockState &&
			objCardShield_Icon.unlockState &&
			objCardBotGunner_Icon.unlockState) {
				show_debug_message("miss");
				scrRollUpgrade();
		}
		else {
			scrRollUnlock();
		}
	//	if (irandom(1) > .5) {
	//		// upgrade
	//		show_debug_message("rolled upgrade");
		
	//		if (objCardBotMachinegun_Icon.upgradeState > 2 &&
	//			objCardBotHelicopter_Icon.upgradeState > 2 &&
	//			objCardBotMortyr_Icon.upgradeState > 2 &&
	//			objCardShield_Icon.upgradeState > 2  &&
	//			objCardBotGunner_Icon.upgradeState > 2) {
	//				show_debug_message("miss");
	//				scrRollUnlock();
	//		}
	//		else {
	//			scrRollUpgrade();
	//		}
	//	}
	//	else {
	//		// unlock
	//		show_debug_message("rolled unlock");
		
	//		if (objCardBotMachinegun_Icon.unlockState &&
	//			objCardBotHelicopter_Icon.unlockState &&
	//			objCardBotMortyr_Icon.unlockState &&
	//			objCardShield_Icon.unlockState &&
	//			objCardBotGunner_Icon.unlockState) {
	//				show_debug_message("miss");
	//				scrRollUpgrade();
	//		}
	//		else {
	//			scrRollUnlock();
	//		}
	//	}
	//}
	}
}