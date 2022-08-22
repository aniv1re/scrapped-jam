/// @description Bot.StateMachine

if (botHealth <= 0) {
	instance_destroy();	
}

var getNearestEnemy = instance_nearest(x, y, objEnemy_Base);
var currentInstance = id;

#region Flip bot to enemy

// FlipBot_Base
var flip = 0;	
if (instance_exists(getNearestEnemy)) {
	if (x >= getNearestEnemy.x) {	
		image_xscale = -1;
		flip = -1;
	}
	else {
		image_xscale = 1;
		flip = 1;
	}
}
else {
	if (x >= global.playerPosX) {	
		image_xscale = -1;
		flip = -1;
	}
	else {
		image_xscale = 1;
		flip = 1;
	}
}

// FlipGun
if (instance_exists(getNearestEnemy)) {
	var dir = point_direction(x, y, getNearestEnemy.x, getNearestEnemy.y);
	with (gunId) {
		var flip = 0;
	
		if (currentInstance.x >= getNearestEnemy.x) {	
			image_yscale = -1;
			flip = -1;
		} 
		else {
			image_yscale = 1;
			flip = 1;
		}

		if (flip == -1) {
			self.x = other.x - 4;
		} 
		else if (flip == 1) {
			self.x = other.x + 4;
		}
		self.y = other.y;
	
		direction = dir;
		image_angle = direction;
	}
}
else {
	var dir = point_direction(x, y, global.playerPosX, global.playerPosY);
	with (gunId) {
		var flip = 0;
	
		if (currentInstance.x >= global.playerPosX) {	
			image_yscale = -1;
			flip = -1;
		} 
		else {
			image_yscale = 1;
			flip = 1;
		}

		if (flip == -1) {
			self.x = other.x - 4;
		} 
		else if (flip == 1) {
			self.x = other.x + 4;
		}
		self.y = other.y;
	
		direction = dir;
		image_angle = direction;
	}
}
#endregion

if (currentState == stateBot.idle) {
	sprite_index = spriteIdle;
	
	if (instance_exists(getNearestEnemy)) {
		if (point_in_circle(getNearestEnemy.x, getNearestEnemy.y, x, y, aggroRadius)) {
			currentState = stateBot.move;
		}
	}
	else {
		if (point_in_circle(global.playerPosX, global.playerPosY, x, y, aggroRadius)) {
			currentState = stateBot.move;
		}
	}
}

if (currentState == stateBot.move) {
	sprite_index = spriteMove;
	
	if (instance_exists(getNearestEnemy)) {
		if (point_in_circle(getNearestEnemy.x, getNearestEnemy.y, x, y, attackRadius)) {
			//currentState = stateBot.attack;
			if (!isAttackCooldown) {
				var projId = instance_create_layer(gunId.x, gunId.y, "OBJ_Layer", objWeapon_GunProj);
	
				with (projId) {
					direction = point_direction(x, y, getNearestEnemy.x, getNearestEnemy.y);
					speed = 3;
					bulletDamage = other.botDamage;
				}
	
				isAttackCooldown = true;
				alarm[0] = 70;
			}
		}
		
		if (!point_in_circle(global.playerPosX, global.playerPosY, x, y, followRadius)) {
			direction = point_direction(x, y, global.playerPosX, global.playerPosY);
			mp_potential_step_object(global.playerPosX, global.playerPosY, moveSpeed * speedSlow, objBot_Base);
		}
		else {
			currentState = stateBot.idle;
		}
	}
	else {
		if (!point_in_circle(global.playerPosX, global.playerPosY, x, y, followRadius)) {
			direction = point_direction(x, y, global.playerPosX, global.playerPosY);
			mp_potential_step_object(global.playerPosX, global.playerPosY, moveSpeed * speedSlow, objBot_Base);
		}
		else {
			currentState = stateBot.idle;
		}
	}
}

//if (currentState == stateBot.attack) {
//	if (instance_exists(getNearestEnemy)) {
//		if (!point_in_circle(getNearestEnemy.x, getNearestEnemy.y, x, y, attackRadius)) {
//			currentState = stateBot.move;
//		}
	

//	}
//}