// Подсчёт живых мобов
global.aliveMobs = instance_number(objEnemy_Base);

// Если живых мобов меньше капап и достаточно очков спавна
if (global.aliveMobs < global.mobCapAtLevel) {
	scrSpawnMob(global.currentLevelDifficulty);
}