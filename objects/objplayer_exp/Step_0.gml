//if (global.currentPlayerExpPoints >= global.currentMaxExpPoints) {
//	global.currentLevel++;
//	increaseLevelExp = global.currentMaxExpPoints;
	
//	// Сохранение опыта, который перевалил за пределы капа
//	if (global.currentPlayerExpPoints > global.currentMaxExpPoints) {
//			oveloadedExp = global.currentPlayerExpPoints - global.currentMaxExpPoints;
//	}
	
//	if (global.currentLevel >= 11 && global.currentLevel <= 25) {
//		global.currentMaxExpPoints = increaseLevelExp + 15;
//		increaseLevelExp = 0;
//		global.currentPlayerExpPoints = 0;
//		global.currentPlayerExpPoints += oveloadedExp;
//	}
//	else if (global.currentLevel <= 10) {
//		global.currentMaxExpPoints = increaseLevelExp + 5;
//		increaseLevelExp = 0;
//		global.currentPlayerExpPoints = 0;
//		global.currentPlayerExpPoints += oveloadedExp;
		
//		global.pointIncome = global.currentLevel == 0 || global.currentLevel == 1 ? 2 : global.currentLevel + 2;
//		global.mobCapAtLevel += int64((global.currentLevel + 5) * 0.8);
//	}
	
//	oveloadedExp = 0;
//}