if (!isReleased) {
	speed -= .2;
	
	if (speed <= 0) {
		instance_destroy();
	}
}