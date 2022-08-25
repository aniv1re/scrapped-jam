if (chests > 0) {
	randomize();
	var isGen = false;
	
	while (!isGen) {
		var dir = random_range(0, 359);
		var distance = irandom_range(x, spawnChestArea);
		spawnCoordX = x + lengthdir_x(distance, dir);
		spawnCoordY = y + lengthdir_y(distance, dir);

		if (!place_meeting(spawnCoordX, spawnCoordY, objChest_Beacon) && point_in_circle(spawnCoordX, spawnCoordY, x, y, spawnChestArea)) {
			instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_FX", objChestSpawn_FX);
			instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Beacons", objChest_Beacon);
		
			isGen = true;
		}
	}
	
	chests--;
	alarm[1] = 5;
}
else {
	alarm[1] = 0;
}