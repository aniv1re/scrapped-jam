startEnemyPoints = 20;
global.currentEnemyPoints = 0;
global.pointIncome = 2;
global.mobCapAtLevel = 256;
global.aliveMobs = 0;

isMobSpawned_Seeker = false;
isMobSpawned_Baby = false;
isMobSpawned_Splasher = false;
isMobSpawned_Shotgun = false;

// Добавление поинтов каждую секунду
alarm[0] = 30;

global.currentEnemyPoints += startEnemyPoints;