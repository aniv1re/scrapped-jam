if (unlockState) {
	image_index = 1;
	
	switch (upgradeState) {
		case 0:
			image_index = 1;
			break;
		case 1:
			image_index = 2;
			break;
		case 2:
			image_index = 3;
			break;
	}
}



if (position_meeting(mouse_x, mouse_y, id))
{
	if (unlockState) {
		isOpen = true;
	}
	//cursor_sprite = sprCursorSelect_1;
}
else {
	isOpen = false;
	//cursor_sprite = sprCursorAttack_1;
}

if (isSelected) {
	if (!collision_circle(mouse_x, mouse_y, 15, objCollisionBase, 0, 1) && point_in_circle(mouse_x, mouse_y, global.playerPosX, global.playerPosY, buildRadius)) {
		isColliding = false;
		if (mouse_check_button_pressed(mb_left))
		{
				if (isRequiredWires && isRequiredBatterys) {
					if (global.scrap >= botBuildPriceScrap && global.wires >= botBuildPriceWires && global.batterys >= botBuildPriceBatterys) {
						global.scrap -= botBuildPriceScrap;
						global.wires -= botBuildPriceWires;
						global.batterys -= botBuildPriceBatterys;
						
						instance_create_layer(mouse_x, mouse_y, "OBJ_Layer", objBotSpawn);
						instance_create_layer(mouse_x, mouse_y, "OBJ_Layer", currentBot);
					}
				}
				else if (isRequiredWires) {
					if (global.scrap >= botBuildPriceScrap && global.wires >= botBuildPriceWires) {
						global.scrap -= botBuildPriceScrap;
						global.wires -= botBuildPriceWires;
						
						if (currentBot == objBot_Shield && instance_find(objBot_Shield, 0)) {
							global.shieldHP = global.shieldHPDefault;
							instance_create_layer(mouse_x, mouse_y, "OBJ_Layer", objBotSpawn);
						}
						else {
							instance_create_layer(mouse_x, mouse_y, "OBJ_Layer", objBotSpawn);
							instance_create_layer(mouse_x, mouse_y, "OBJ_Layer", currentBot);
						}
					}
				}
				else {
					if (global.scrap >= botBuildPriceScrap) {
						global.scrap -= botBuildPriceScrap;
						
						instance_create_layer(mouse_x, mouse_y, "OBJ_Layer", objBotSpawn);
						instance_create_layer(mouse_x, mouse_y, "OBJ_Layer", currentBot);
					}
				}
		}
	}
	else {
		isColliding = true;
	}
}

if (!global.isBuilding) {
	if (mouse_check_button_pressed(mb_left))
	{
		if (position_meeting(mouse_x, mouse_y, id) && unlockState)
		{
			global.isBuilding = true;
			isSelected = true;
			global.selectedBotId = object_index;
			cursor_sprite = sprCursorBuild_1;
		}
	}
}

if (mouse_check_button_pressed(mb_right))
{
	isSelected = false;
	global.selectedBotId = 0;
	cursor_sprite = sprCursorAttack_1;
	global.isBuilding = false;
}