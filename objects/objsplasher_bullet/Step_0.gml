if (!isReleased) {
	speed -= .1;
}

if (speed <= 0) {
	instance_destroy();
}