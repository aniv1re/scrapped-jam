/// Ролл анлока бота

function scrRollUnlock(){
	var isUnlockDone = false;
	while (!isUnlockDone) {
		var rngUnlock = irandom_range(0, 4);
		show_debug_message("rngUnlock:" + string(rngUnlock));
				
		if (rngUnlock == 0 && !objCardBotGunner_Icon.unlockState) {
			with (objCardBotGunner_Icon) {
				unlockState = true;
				
				var upgrd = instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
				
				with (upgrd) {
					parent = other.id;
				}
			}
			isUnlockDone = true;
		}
		else if (rngUnlock == 1 && !objCardBotMachinegun_Icon.unlockState) {
			with (objCardBotMachinegun_Icon) {
				unlockState = true;
				
				var upgrd = instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
				
				with (upgrd) {
					parent = other.id;
				}
			}
			isUnlockDone = true;
		}
		else if (rngUnlock == 2 && !objCardShield_Icon.unlockState) {
			with (objCardShield_Icon) {
				unlockState = true;
				
				var upgrd = instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
				
				with (upgrd) {
					parent = other.id;
				}
			}
			isUnlockDone = true;
		}
		else if (rngUnlock == 3 && !objCardBotHelicopter_Icon.unlockState) {
			with (objCardBotHelicopter_Icon) {
				unlockState = true;
				
				var upgrd = instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
				
				with (upgrd) {
					parent = other.id;
				}
			}
			isUnlockDone = true;
		}
		else if (rngUnlock == 4 && !objCardBotMortyr_Icon.unlockState) {
		with (objCardBotMortyr_Icon) {
			unlockState = true;
			
			var upgrd = instance_create_layer(x, y, "OBJ_Menu", objUpdradeOrUnlock);
				
			with (upgrd) {
				parent = other.id;
			}
		}
		isUnlockDone = true;
		}
	}
}