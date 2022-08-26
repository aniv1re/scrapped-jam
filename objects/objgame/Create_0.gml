global.isDebug = true;
global.playerPosX = objCharacter_Base.x;
global.playerPosY = objCharacter_Base.y;

global.invisibilityFrameTime = 90;

global.scrap = 0;
global.wires = 0;
global.batterys = 0;

cursor_sprite = sprCursorAttack_1;

global.selectedBotId = 0;
global.isBuilding = false;

global.isShield = false;
global.shieldHP = 24;
global.shieldHPDefault = global.shieldHP;
global.shieldObj = 0;

global.currentLevelDifficulty = 1;

//global.shieldRegeneration = 1;
//alarm[0] = 900;

//global.botGunnerDamage = 2;
//global.baseDamage = 4;

// Flip coords
//global.playerPosX = objCharacter_Base.x + 4;
//if (global.flipCharacter != 0) {
//	global.playerPosX = objCharacter_Base.x - 4;
//} 
//global.playerPosY = objCharacter_Base.y;