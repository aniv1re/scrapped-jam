if (!isReleased) {
	speed -= .02;
	
	if (speed <= 0) {
		instance_destroy();
	}
}