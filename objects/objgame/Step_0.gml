depth = -2000;

global.playerPosX = objCharacter_Base.x;
global.playerPosY = objCharacter_Base.y;

if (global.shieldHP <= 0) {
	global.shieldHP = global.shieldHPDefault;
	global.isShield = false;
	instance_destroy(global.shieldObj);
}

if (objCharacter_Base.isDead) {
	if (keyboard_check_pressed(vk_space)) {
		audio_group_unload(global.audio_group_id);
		game_restart();
	}
}