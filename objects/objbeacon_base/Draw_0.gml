if (!isCharged) {
	//if (isActivated && isPlayerEntered) {
	//	draw_sprite(sprBeaconArea, 0, x, y);
	//	//draw_sprite_ext(sprBeaconArea, 1, x, y, 2, 2, 0, -1, 1);
	//}
	//else if (isActivated && !isPlayerEntered) {
	//	draw_sprite(sprBeaconArea, 1, x, y);
	//}

	if (point_in_circle(global.playerPosX, global.playerPosY, x, y, activateArea) && !isActivated) {
		draw_sprite(sprTipInfo_ActivateBeacon, 0, x, y - 40);
	}

	if (isActivated) {
		draw_text(x - 5, y - 35, timer);
	}
}

draw_self();