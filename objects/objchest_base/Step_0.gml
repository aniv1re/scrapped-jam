depth = -y;

if (distance_to_object(objCharacter_Base) >= 200 && isOpen) {
	instance_destroy(shadow);
	instance_destroy();
}

if (!isOpen && point_in_circle(global.playerPosX, global.playerPosY, x, y, openArea)) {
	isOpen = true;
	scrSound(sfxChest_Open, 1);
	image_speed = 1;
	
	for (var i = 0; i < scrapLoot; i++) {
		instance_create_layer(x, y, "OBJ_Drop", objDrop_Scrap, {
			image_index : irandom_range(1, 10),
			direction : irandom(360),
			speed : random_range(1, 3)
		});
	}
	
	for (var i = 0; i < wiresLoot; i++) {
		instance_create_layer(x, y, "OBJ_Drop", objDrop_Wires, {
			image_index : irandom_range(1, 10),
			direction : irandom(360),
			speed : random_range(1, 3)
		});
	}
	
	for (var i = 0; i < battareisLoot; i++) {
		instance_create_layer(x, y, "OBJ_Drop", objDrop_Battereis, {
			image_index : irandom_range(1, 10),
			direction : irandom(360),
			speed : random_range(1, 3)
		});
	}
	
	if (bluePrintsLoot == 1) {
		instance_create_layer(x, y, "OBJ_Drop", objDrop_Blueprint, {
			image_index : irandom_range(1, 10),
			direction : irandom(360),
			speed : random_range(1, 3)
		});
	}
}