instance_create_layer(x, y - 4, "OBJ_FX", objDeathExpl_Enemy);
global.currentPlayerExpPoints++;

if (irandom(1) > .5) {
	for (var i = 0; i < dropScrap; i++) {
	    var createdInstId = instance_create_layer(x, y, "OBJ_Drop", objDrop_Scrap);
	
		with (createdInstId) {
			randomize();
			image_index = irandom_range(1, 10);
			direction = irandom(360);
			speed = 2;
		}
	}
}

if (irandom(1) > .65) {
	for (var i = 0; i < dropWires; i++) {
	    var createdInstId = instance_create_layer(x, y, "OBJ_Drop", objDrop_Wires);
	
		with (createdInstId) {
			randomize();
			image_index = irandom_range(1, 9);
			direction = irandom(360);
			speed = 2;
		}
	}
}