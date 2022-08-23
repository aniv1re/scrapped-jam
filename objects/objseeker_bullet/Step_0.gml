if (!isReleased) {
	speed -= .1;
	
	if (speed <= 0.1) {
		instance_destroy();
	}
}