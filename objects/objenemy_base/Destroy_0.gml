for (var i = 0; i < dropScrap; i++) {
    var createdInstId = instance_create_layer(x, y, "OBJ_Layer", objDrop_Scrap);
	
	with (createdInstId) {
		randomize();
		image_index = irandom_range(1, 10);
		direction = irandom(360);
		speed = 2;
	}
}