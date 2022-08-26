/// Ролл апгрейда бота

function scrRollUpgrade(){
	var isUpgradeDone = false;
	while (!isUpgradeDone) {
		var rngUpgrade = irandom_range(0, 4);
		show_debug_message("rngUpgrade:" + string(rngUpgrade));
				
		if (rngUpgrade == 0 && objCardBotGunner_Icon.unlockState && objCardBotGunner_Icon.upgradeState < 2) {
			with (objCardBotGunner_Icon) {
				if (upgradeState <= 1) {
					upgradeState++;
						
					if (upgradeState == 1) {
						currentBot = objBot_Gunner_LVL1;
					}
					else if (upgradeState == 2) {
						currentBot = objBot_Gunner_LVL2;
					}
				}
				
				instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
			}
			isUpgradeDone = true;
		}
		else if (rngUpgrade == 1 && objCardBotMachinegun_Icon.unlockState && objCardBotMachinegun_Icon.upgradeState < 2) {
			with (objCardBotMachinegun_Icon) {
				if (upgradeState <= 2) {
					upgradeState++;
				}
					
				if (upgradeState == 1) {
					currentBot = objBot_Machinegun_LVL1;
				}
				else if (upgradeState == 2) {
					currentBot = objBot_Machinegun_LVL2;
				}
				
				instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
			}
			isUpgradeDone = true;
		}
		else if (rngUpgrade == 2 && objCardShield_Icon.unlockState && objCardShield_Icon.upgradeState < 2) {
			with (objCardShield_Icon) {
				if (upgradeState <= 2) {
					upgradeState++;
				}
					
				if (upgradeState == 1) {
					currentBot = objBot_Shield_LVL1;
				}
				else if (upgradeState == 2) {
					currentBot = objBot_Shield_LVL2;
				}
				
				instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
			}
			isUpgradeDone = true;
		}
		else if (rngUpgrade == 3 && objCardBotHelicopter_Icon.unlockState && objCardBotHelicopter_Icon.upgradeState < 2) {
			with (objCardBotHelicopter_Icon) {
				if (upgradeState <= 2) {
					upgradeState++;
				}
					
				if (upgradeState == 1) {
					currentBot = objBot_Fly_LVL1;
				}
				else if (upgradeState == 2) {
					currentBot = objBot_Fly_LVL2;
				}
				
				instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
			}
			isUpgradeDone = true;
		}
		else if (rngUpgrade == 4 && objCardBotMortyr_Icon.unlockState && objCardBotMortyr_Icon.upgradeState < 2) {
			with (objCardBotMortyr_Icon) {
				if (upgradeState <= 2) {
					upgradeState++;
				}
					
				if (upgradeState == 1) {
					currentBot = objBot_Mortyr_LVL1;
				}
				else if (upgradeState == 2) {
					currentBot = objBot_Mortyr_LVL2;
				}
				
				instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
			}
			isUpgradeDone = true;
		}
	}
}