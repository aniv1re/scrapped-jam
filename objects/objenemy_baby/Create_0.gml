event_inherited();

moveSpeed = random_range(2.5, 2.8);
mobHealth = 1;
mobDamage = 1;
knockbackReduce = 1.5;
aggroRadius = 500;
currentEnemyType = enemyType.baby;
spriteIdle = sprEnemy_Baby_Idle;
spriteMove = sprEnemy_Baby_Idle;

shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);