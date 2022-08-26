depth = -y;

if (isActivatedFully && !collision_circle(x, y, 180, objCharacter_Base, 0, 0)) {
	instance_destroy(shadow);
	instance_destroy();
}

if (point_in_circle(global.playerPosX, global.playerPosY, x, y, activateArea)) {
	if (keyboard_check_pressed(ord("E")) && !isActivated && !isCharged) {
		isActivated = true;
		sprite_index = sprActivated;
		beaconId = instance_create_layer(x, y, "OBJ_Beacons_Area", objBeacon_Area);
	}
}

if (place_meeting(global.playerPosX, global.playerPosY,  objBeacon_Area)) {
	isPlayerEntered = true;
}
else {
	isPlayerEntered = false;
}