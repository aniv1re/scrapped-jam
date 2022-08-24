if (point_in_circle(global.playerPosX, global.playerPosY, x, y, activateArea)) {
	if (keyboard_check_pressed(ord("E")) && !isActivated && !isCharged) {
		isActivated = true;
		sprite_index = sprActivated;
	}
}

if (point_in_circle(global.playerPosX, global.playerPosY, x, y, chargeArea)) {
	isPlayerEntered = true;
}
else {
	isPlayerEntered = false;
}