if (isActivated && isPlayerEntered) {
	timer--;
	
	if (timer <= 0) {
		sprite_index = sprActive;
		isCharged = true;
		
		alarm[1] = 3;
	}
}

alarm[0] = 60;