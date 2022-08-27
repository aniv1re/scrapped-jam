if (!objCharacter_Base.isDead) {
	depth = -2000;

	if (!point_in_circle(global.playerPosX, global.playerPosY, beaconX, beaconY, 45)) {
		image_alpha = 1;
		var dir = point_direction(global.playerPosX, global.playerPosY, beaconX, beaconY);

		x = global.playerPosX + lengthdir_x(25, dir);
		y = global.playerPosY + lengthdir_y(25, dir) - 4;
	
		image_angle = dir - 45;
	}
	else  if (collision_circle(objBeacon.x, objBeacon.y, 12, objCharacter_Base, false, false) || objBeacon.isActivated) {
		image_alpha = 0;
	}
	else {
		image_alpha = 1;
		x = objBeacon.x;
		y = objBeacon.y - 35;
	
		image_angle = 225;
	}
}
else {
	instance_destroy();
}
