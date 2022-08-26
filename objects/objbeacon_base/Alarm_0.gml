if (isActivated && isPlayerEntered) {
	timer--;
	
	if (timer <= 0) {
		sprite_index = sprActive;
		isCharged = true;
		instance_destroy(beaconId);
		alarm[1] = 3;
		global.isBeaconCreated = false;
		isActivatedFully = true;
	}
}

alarm[0] = 60;