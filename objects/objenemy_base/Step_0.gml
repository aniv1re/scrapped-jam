/// @description Enemy.StateMachine

if (currentState == stateEnemy.idle) { }

if (currentState == stateEnemy.move) {
	if (currentEnemyType == enemyType.seeker) {
		var nearestBot = instance_nearest(x, y, objBot_Base);
		
		if (point_in_circle(nearestBot.x, nearestBot.y ,x, y, aggroRadius)) {
			direction = point_direction(x, y, nearestBot.x, nearestBot.y);
			mp_potential_step_object(nearestBot.x, nearestBot.y, moveSpeed * speedSlow, objBot_Base);
		}
		else if (point_in_circle(global.playerPosX, global.playerPosY, x, y, aggroRadius)) {
			direction = point_direction(x, y, global.playerPosX, global.playerPosY);
			mp_potential_step_object(global.playerPosX, global.playerPosY, moveSpeed * speedSlow, objEnemy_Base);
		}
	}
}

if (currentState == stateEnemy.hurt) {
	var dir = point_direction(global.playerPosX, global.playerPosY, x, y);
	speed -= .1;

	if (!isKnockbacked) {
		var knockStr = baseKnockbackStrength - knockbackReduce;
		if (knockStr > 0) {
			motion_add(dir, knockStr);
		}
		
		alarm[0] = 15;
		isKnockbacked = true;
	}
	
	if (!isDamaged) {
		
		
		if (mobHealth <= 0) {
			instance_destroy();
		} 
		else {
			alarm[1] = 30;
			isDamaged = true;
		}
	}
}