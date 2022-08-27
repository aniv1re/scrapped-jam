event_inherited();

moveSpeed = .7;
mobHealth = 20;
mobDamage = 5;
knockbackReduce = 3;
aggroRadius = 500;
attackRadius = 85;
currentEnemyType = enemyType.shotgun;
spriteIdle = sprEnemy_Shotgun_Idle;
spriteMove = sprEnemy_Shotgun_Move;
knockbackReduce = 2;

shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objLarge_Shadow);

dropScrap = 2;
dropWires = 8;