/// @description Enemy.StateMachine
depth = -y;

if (mobHealth <= 0) {
	if (object_index == objEnemy_Seeker) scrSound(sfxEnemy_Death_Medium, 1);
	if (object_index == objEnemy_Splasher) scrSound(sfxEnemy_Death_Large, 1);
	if (object_index == objEnemy_Shotgun) scrSound(sfxEnemy_Death_Large, 1);
	instance_destroy(shadowObj);
	instance_destroy();
} 

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
	
	if (instance_exists(nearestBot)) {
			if (point_in_circle(nearestBot.x, nearestBot.y ,x, y, attackRadius)) {
				currentState = stateEnemy.attack;
			}
			else if (point_in_circle(nearestBot.x, nearestBot.y ,x, y, aggroRadius)) {
				direction = point_direction(x, y, nearestBot.x, nearestBot.y);
			
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

if (currentState == stateEnemy.hurt) {
	var dir = point_direction(global.playerPosX, global.playerPosY, x, y);
	
	isDamageBlink = true;
	alarm[3] = 8;
	
	currentState = stateEnemy.move;
}

if (currentState == stateEnemy.attack) {
	if (instance_exists(nearestBot)) {
		if (!point_in_circle(nearestBot.x, nearestBot.y ,x, y, attackRadius)) {
				currentState = stateEnemy.move;
		}
		else if  (!objCharacter_Base.isDead)  {
			sprite_index = spriteIdle;
			
			switch (currentEnemyType) {
				case enemyType.seeker: 
					if (!isAttacked) {
						image_xscale = 1.5 * flip;
						image_yscale = 0.5;
						scrSound(sfxEnemy_Seeker, 1);
					
						if (instance_exists(nearestBot)) {
							var bullet = instance_create_layer(x, y, "OBJ_Layer", objSeeker_Bullet);
							var angle = point_direction(x, y, nearestBot.x, nearestBot.y - 4);
							with (bullet) {
								direction = angle;
								image_angle = direction;
								bulletDamage = other.mobDamage;
							}		
							
							isAttacked = true;
							alarm[2] = irandom_range(50, 70);
						}
					}
					break;
				
				case enemyType.splasher: 
					if (!isAttacked) {
						image_xscale = 1.5 * flip;
						image_yscale = 0.5;
					
						if (instance_exists(nearestBot)) {
							scrSound(sfxEnemy_Splasher, 1);
							var angle = point_direction(x, y, nearestBot.x, nearestBot.y - 4);
							for (var i = 0; i < 8; i++) {
								var bullet = instance_create_layer(x, y, "OBJ_Layer", objSplasher_Bullet);
								
								with (bullet) {
									direction = angle;
									image_angle = direction;
									bulletDamage = other.mobDamage;
								}		
								
								angle += 45;
							}
							
							isAttacked = true;
							alarm[2] = irandom_range(110, 130);
						}
					}
					break;
					
				case enemyType.shotgun: 
					if (!isAttacked) {
						image_xscale = 1.5 * flip;
						image_yscale = 0.5;
						
						if (instance_exists(nearestBot)) {
							scrSound(sfxEnemy_Shootgun, 1);
							for (var i = 0; i < 5; i++) {
								var dir = point_direction(x, y, nearestBot.x, nearestBot.y - 4);
								var newDir = random_range(dir - 15, dir + 15);
								
								var attack = instance_create_layer(x, y - 8, "OBJ_Layer", objShotgun_Bullet);
								with (attack) {
									direction = newDir;
									image_angle = newDir;
									bulletDamage = other.mobDamage;
									speed = random_range(2, 3);
								}
							}
							isAttacked = true;
							alarm[2] = irandom_range(70, 90);
						}
					}
					break;
			}
		}
		else {
			sprite_index = spriteIdle;
		}
	}
	else {
		if (!point_in_circle(global.playerPosX, global.playerPosY ,x, y, attackRadius)) {
			currentState = stateEnemy.move;
		}
		else if  (!objCharacter_Base.isDead) {
			sprite_index = spriteIdle;
		
			switch (currentEnemyType) {
				case enemyType.seeker: {
						if (!isAttacked) {
							image_xscale = 1.5 * flip;
							image_yscale = 0.5;
							scrSound(sfxEnemy_Seeker, 1);
					
							var attack = instance_create_layer(x, y - 4, "OBJ_Layer", objSeeker_Bullet);
					
							with (attack) {
								direction = point_direction(x, y, global.playerPosX, global.playerPosY - 5);
								image_angle = direction;
								bulletDamage = other.mobDamage;
							}		
							isAttacked = true;
							alarm[2] = irandom_range(50, 70);
						}
					}
				case enemyType.splasher: {
						if (!isAttacked) {
							image_xscale = 1.5 * flip;
							image_yscale = 0.5;
							
							scrSound(sfxEnemy_Splasher, 1);
							var angle = point_direction(x, y, global.playerPosX, global.playerPosY - 5);
							for (var i = 0; i < 8; i++) {
								var bullet = instance_create_layer(x, y, "OBJ_Layer", objSplasher_Bullet);
								
								with (bullet) {
									direction = angle;
									image_angle = direction;
									bulletDamage = other.mobDamage;
								}		
								
								angle += 45;
							}
							
							isAttacked = true;
							alarm[2] = irandom_range(110, 130);
						}
						break;
					}
				case enemyType.shotgun: {
					if (!isAttacked) {
						image_xscale = 1.5 * flip;
						image_yscale = 0.5;
						
						scrSound(sfxEnemy_Shootgun, 1);
						for (var i = 0; i < 5; i++) {
							var dir = point_direction(x, y - 8, global.playerPosX, global.playerPosY - 5);
							var newDir = random_range(dir - 15, dir + 15);
								
							var attack = instance_create_layer(x, y - 4, "OBJ_Layer", objShotgun_Bullet);
							
							with (attack) {
								direction = newDir;
								image_angle = newDir;
								bulletDamage = other.mobDamage;
								speed = random_range(2, 3);
							}
						}

							
						isAttacked = true;
						alarm[2] = irandom_range(70, 90);
					}
				}
			}
		}
		else  {
			sprite_index = spriteIdle;
		}
	}
}

x = clamp(x, 168, room_width - 168);
y = clamp(y, 98, room_height - 98);


image_xscale = scrApproach(image_xscale, flip, 0.05);
image_yscale = scrApproach(image_yscale, 1, 0.05);

with (shadowObj) {
	x = other.x;
	y = other.y;
}