if (!objCharacter_Base.isDead) {
	global.difficultyTimerSeconds--;

	if (global.difficultyTimerSeconds <= 0 && global.currentLevelDifficulty < 5) {
		global.currentLevelDifficulty++;
		scrSound(sfxDifficultyUp, 1);
		
		switch(global.currentLevelDifficulty) {
			case 1:
				global.difficultyTimerSeconds = 40;
				break;
			case 2:
				global.difficultyTimerSeconds = 180;
				break;
			case 3:
				global.difficultyTimerSeconds = 180;
				break;
			case 4:
				global.difficultyTimerSeconds = 300;
				break;
			default: 
				break;
		}
	}

	alarm[1] = 60;
}