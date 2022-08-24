global.playerPosX = objCharacter_Base.x;
global.playerPosY = objCharacter_Base.y;

if (global.shieldHP <= 0) {
	global.shieldHP = global.shieldHPDefault;
	global.isShield = false;
	instance_destroy(global.shieldObj);
}