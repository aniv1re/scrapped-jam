speed -= speed * .1;

if (speed <= 0) {
	isFullDropped = true;
}

if (collision_circle(x, y, 30, objCharacter_Base, false, true) && !isLocked) {
	speed += 2 * .1; 
	
	direction = point_direction(x, y, global.playerPosX, global.playerPosY);
	
	mp_potential_step_object(global.playerPosX, global.playerPosY, speed, objDrop_Scrap);
}
