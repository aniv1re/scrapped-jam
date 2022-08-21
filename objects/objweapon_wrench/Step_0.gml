/// @description Weapon.State

// Отражение спрайта в зависимости от состояния игрока и курсора в objCharacter_Base
if (global.flipCharacter == -1) {
	x = global.playerPosX - 4;
} 
else if (global.flipCharacter == 1) {
	x = global.playerPosX + 4;
}
y = global.playerPosY;

// Направление спрайта к курсору игрока
direction = point_direction(global.playerPosX, global.playerPosY, mouse_x, mouse_y)
image_angle = direction;

if (global.flipCharacter != 0) {
	image_yscale = global.flipCharacter;
} 