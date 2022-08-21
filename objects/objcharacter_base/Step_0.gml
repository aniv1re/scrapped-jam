/// @description User.StateMachine

#region Player.Util

// Захват передвижения
keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(ord("S"));
keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(ord("D"));

// Разворот персонажа в сторону движения относительно положения курсора на экране
if ((camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2) >= mouse_x) {	
	image_xscale = -1;
	global.flipCharacter = -1;
} 
else {
	image_xscale = 1;
	global.flipCharacter = 1;
}

// Если игрок начинает движение
if (keyUp || keyDown || keyLeft || keyRight) {
	global.currentState = statePlayer.move;
}

#endregion

#region Player.State

if (global.currentState == statePlayer.idle) {
	sprite_index = spriteIdle;
}

if (global.currentState == statePlayer.move) {
	sprite_index = spriteMove;
	
	// Получение направления движения
	var inputDirection = point_direction(0, 0, keyRight - keyLeft, keyDown - keyUp);

	// Получение скорости по x и y учитывая то, что скорость по горизонтали будет равно скорости по осям x и y
	hSpeed = lengthdir_x(moveSpeed, inputDirection);
	vSpeed = lengthdir_y(moveSpeed, inputDirection);
	
	x += (hSpeed * speedSlow); 
	y += (vSpeed * speedSlow); 
	
	// Передача координат в глобальную переменную
	global.playerPosX = x;
	global.playerPosY = y;
	
	// Сброс состояния до бездействия
	global.currentState = statePlayer.idle;
}

if (mouse_check_button(mb_left) && !isAttacked) {
	instance_create_layer(x, y, "OBJ_Layer", objWeapon_WrenchSwoosh);
	isAttacked = true;
	// Таймер на 1 секунду (30 тиков = 1 секунда)
	alarm[0] = 40;
}

#endregion