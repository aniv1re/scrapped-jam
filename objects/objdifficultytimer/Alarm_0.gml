global.seconds++;

if (global.seconds == 60) {
	global.minutes++;
	global.seconds = 0;
}

global.difficultyTimerSeconds--;

if (global.difficultyTimerSeconds == 0 && global.currentLevelDifficulty <= 5) {
	var prevDiffTimer = global.difficultyTimerMinutes;
	global.difficultyTimerMinutes--;
	
	if (prevDiffTimer == 1 && global.difficultyTimerMinutes == 0) {
		global.difficultyTimerSeconds = 60;
	}
	else if (global.difficultyTimerMinutes == 0 && global.difficultyTimerSeconds == 0) {
		global.currentLevelDifficulty++;
		
		switch(global.currentLevelDifficulty) {
			case 2:
				global.difficultyTimerSeconds = 59;
				global.difficultyTimerMinutes = 4;
				break;
			case 3:
				global.difficultyTimerSeconds = 59;
				global.difficultyTimerMinutes = 8;
				break;
			case 4:
				global.difficultyTimerSeconds = 59;
				global.difficultyTimerMinutes = 14;
				break;
			default: 
				break;
		}
	}
	else {
		global.difficultyTimerSeconds = 60;
	}
}

alarm[0] = 60;