if (!objCharacter_Base.isDead) {
	global.seconds++;

	if (global.seconds == 60) {
		global.minutes++;
		global.seconds = 0;
	}

	alarm[0] = 60;
}