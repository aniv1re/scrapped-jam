/// @description Enemy.StateMachine
var nearestBot = instance_nearest(x, y, objBot_Base);

if (currentState == stateEnemy.idle) { 
	sprite_index = spriteIdle
	
	if (instance_exists(nearestBot)) {
			if (point_in_circle(nearestBot.x, nearestBot.y ,x, y, aggroRadius)) {
				currentState = stateEnemy.move;
			}
	}
	else {
		if (point_in_circle(global.playerPosX, global.playerPosY ,x, y, aggroRadius)) {
				currentState = stateEnemy.move;
			}
	}
}

if (currentState == stateEnemy.move) {
	sprite_index = spriteMove;
	
	if (currentEnemyType == enemyType.seeker) {
		if (instance_exists(nearestBot)) {
			if (point_in_circle(nearestBot.x, nearestBot.y ,x, y, attackRadius)) {
				currentState = stateEnemy.attack;
			}
			else if (point_in_circle(nearestBot.x, nearestBot.y ,x, y, aggroRadius)) {
				direction = point_direction(x, y, nearestBot.x, nearestBot.y);
			
				var flip = 0;
				if (x >= nearestBot.x) {	
					image_xscale = -1;
					flip = -1;
				} 
				else {
					image_xscale = 1;
					flip = 1;
				}
			
				mp_potential_step_object(nearestBot.x, nearestBot.y, moveSpeed * speedSlow, objBot_Base);
			}
		}
		else {
			if (point_in_circle(global.playerPosX, global.playerPosY ,x, y, attackRadius)) {
				currentState = stateEnemy.attack;
			}
			else (point_in_circle(global.playerPosX, global.playerPosY, x, y, aggroRadius)) {
				direction = point_direction(x, y, global.playerPosX, global.playerPosY);
			
				var flip = 0;
				if (x >= global.playerPosX) {	
					image_xscale = -1;
					flip = -1;
				} 
				else {
					image_xscale = 1;
					flip = 1;
				}
			
				mp_potential_step_object(global.playerPosX, global.playerPosY, moveSpeed * speedSlow, objEnemy_Base);
			}
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
	
if (currentState == stateEnemy.attack) {
	if (instance_exists(nearestBot)) {
		if (!point_in_circle(nearestBot.x, nearestBot.y ,x, y, attackRadius)) {
				currentState = stateEnemy.move;
		}
		else {
			//sprite_index = spriteAttack;
			sprite_index = spriteIdle;
		
			if (currentEnemyType == enemyType.seeker) {
				if (!isAttacked) {
					if (instance_exists(nearestBot)) {
						var attack = instance_create_layer(x, y, "OBJ_Layer", objSeeker_Bullet);
					
						with (attack) {
							direction = point_direction(x, y, nearestBot.x, nearestBot.y);
							image_angle = direction;
							speed = 1;
							bulletDamage = other.mobDamage;
						}		
						isAttacked = true;
						alarm[2] = 60;
					}
				}
			}
		}
	}
	else {
		if (!point_in_circle(global.playerPosX, global.playerPosY ,x, y, attackRadius)) {
			currentState = stateEnemy.move;
		}
		else {
			sprite_index = spriteIdle;
		
			if (currentEnemyType == enemyType.seeker) {
				if (!isAttacked) {
						var attack = instance_create_layer(x, y, "OBJ_Layer", objSeeker_Bullet);
					
						with (attack) {
							direction = point_direction(x, y, global.playerPosX, global.playerPosY);
							image_angle = direction;
							speed = 1;
							bulletDamage = other.mobDamage;
						}
					
						isAttacked = true;
						alarm[2] = 60;
					}
				}
			}
		}
}