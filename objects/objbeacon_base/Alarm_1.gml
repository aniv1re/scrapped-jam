if (chests > 0) {
	randomize();
	var isGen = false;
	
	while (!isGen) {
		var dir = random_range(0, 359);
		//var distance = irandom_range(x, spawnChestArea);
		spawnCoordX = x + lengthdir_x(spawnChestArea, dir);
		spawnCoordY = y + lengthdir_y(spawnChestArea, dir);

		if (position_empty(spawnCoordX, spawnCoordY) && point_in_circle(spawnCoordX, spawnCoordY, x, y, spawnChestArea)) {
			instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_FX", objChestSpawn_FX);
			
			if (isBLDropped) {
				instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Beacons", objChest_Beacon_WithBlueprint);
				isBLDropped = false;
			}
			else {
				instance_create_layer(spawnCoordX, spawnCoordY, "OBJ_Beacons", objChest_Beacon);
			}
		
			isGen = true;
		}
	}
	
	chests--;
	alarm[1] = 15;
}
else {
	alarm[1] = 0;
}