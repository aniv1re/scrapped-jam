/// @description User.Init

enum statePlayer {
	idle = 2,
	move = 4,
	attack = 8
}

enum weaponsPlayer {
	none = 2,
	wrench = 4
}

global.currentState = statePlayer.idle;
global.currentWeapon = weaponsPlayer.wrench;
global.flipCharacter = 0;

speedSlow = 0.5;
hSpeed = 0;
vSpeed = 0;
keyUp = 0;
keyDown = 0;
keyLeft = 0;
keyRight = 0;

// Изменяемые статы и спрайты в будущем
moveSpeed = 0;
characterHealth = 0;
baseDamage = 0;
spriteIdle = sprTest;
spriteMove = sprTest;
attackColldown = 2;
isAttacked = false;
isDamaged = false;
isDamageBlink = false;

shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);