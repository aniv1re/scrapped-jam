for (var i = 0; i < irandom_range(3, 5); i++) {
	randomize();
	var dir = random_range(0, 359);
	var distance = irandom_range(0, 5);
	spawnCoordX = x + lengthdir_x(distance, dir);
	spawnCoordY = y + lengthdir_y(distance, dir);
	
	if (!place_meeting(spawnCoordX, spawnCoordY, objEnemy_Base)) {
		instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Layer", objEnemy_Baby);
	}
}