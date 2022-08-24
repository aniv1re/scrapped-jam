if (isActivated && isPlayerEntered) {
	timer--;
	
	if (timer <= 0) {
		sprite_index = sprActive;
		isCharged = true;
	}
}

alarm[0] = 60;