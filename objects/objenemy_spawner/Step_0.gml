// Подсчёт живых мобов
global.aliveMobs = instance_number(objEnemy_Base);

// Если живых мобов меньше капап и достаточно очков спавна
if (global.aliveMobs < global.mobCapAtLevel && global.currentEnemyPoints > 0) {
	// Получение случайно точки спавна от 200 до 300 единич от игрока
	randomize();
	var dir = random_range(0, 359);
	var distance = irandom_range(150, 350);
	spawnCoordX = global.playerPosX + lengthdir_x(distance, dir);
	spawnCoordY = global.playerPosY + lengthdir_y(distance, dir);
	
	// Спавн моба на пустом месте
	if (!place_meeting(spawnCoordX, spawnCoordY, objEnemy_Base) && point_in_rectangle(spawnCoordX, spawnCoordY, 16, 16, room_width - 168, room_height - 98)) {
		switch (global.currentLevel) {
			case 0:
			case 1:
			case 2:
			case 3: {
				instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Seeker);
				global.currentEnemyPoints -= 2;
				break;
			}
			case 4: {
				if (irandom_range(0, 100) > 80) {
					instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Splasher);
					global.currentEnemyPoints -= 5;
					break;
				}
				else {
					instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Seeker);
					global.currentEnemyPoints -= 2;
					break;
				}
			}
		}
		
	}
}