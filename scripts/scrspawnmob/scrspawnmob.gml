/// Spawn mob

/// @param currentDifficulty
function scrSpawnMob(currentDifficulty){
	// Получение случайно точки спавна от 200 до 300 единиц от игрока
	randomize();
	var dir = random_range(0, 359);
	spawnCoordX = global.playerPosX + lengthdir_x(180, dir);
	spawnCoordY = global.playerPosY + lengthdir_y(180, dir);
	
	// Спавн моба на пустом месте
	if (!place_meeting(spawnCoordX, spawnCoordY, objEnemy_Base) && point_in_rectangle(spawnCoordX, spawnCoordY, 16, 16, room_width - 168, room_height - 98)) {
		switch (currentDifficulty) {
			case 0:
					if (!isMobSpawned_Seeker) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Seeker);
						isMobSpawned_Seeker = true;
						alarm[1] = 300;
						
						show_debug_message("isSpawned")
					}
					break;
			case 1:
					if (!isMobSpawned_Seeker) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Seeker);
						isMobSpawned_Seeker = true;
						alarm[1] = 180;
						
						show_debug_message("isSpawned")
					}
					break;
			case 2:
					if (!isMobSpawned_Seeker) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Seeker);
						isMobSpawned_Seeker = true;
						alarm[1] = 150;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Baby) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objBabySpawner);
						isMobSpawned_Baby = true;
						alarm[2] = 480;
						
						show_debug_message("isSpawned")
					}
					break;
			case 3:
					if (!isMobSpawned_Seeker) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Seeker);
						isMobSpawned_Seeker = true;
						alarm[1] = 120;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Baby) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objBabySpawner);
						isMobSpawned_Baby = true;
						alarm[2] = 480;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Splasher) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Splasher);
						isMobSpawned_Splasher = true;
						alarm[3] = 660;
						
						show_debug_message("isSpawned")
					}
					break;
			case 4: 
					if (!isMobSpawned_Seeker) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Seeker);
						isMobSpawned_Seeker = true;
						alarm[1] = 120;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Baby) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objBabySpawner);
						isMobSpawned_Baby = true;
						alarm[2] = 360;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Splasher) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Splasher);
						isMobSpawned_Splasher = true;
						alarm[3] = 560;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Shotgun) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Shotgun);
						isMobSpawned_Shotgun = true;
						alarm[4] = 300;
						
						show_debug_message("isSpawned")
					}
					break;
			case 5: 
					if (!isMobSpawned_Seeker) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Seeker);
						isMobSpawned_Seeker = true;
						alarm[1] = 60;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Baby) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objBabySpawner);
						isMobSpawned_Baby = true;
						alarm[2] = 300;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Splasher) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Splasher);
						isMobSpawned_Splasher = true;
						alarm[3] = 300;
						
						show_debug_message("isSpawned")
					}
					if (!isMobSpawned_Shotgun) {
						instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Shotgun);
						isMobSpawned_Shotgun = true;
						alarm[4] = 300;
						
						show_debug_message("isSpawned")
					}
					break;
		}
	}
}