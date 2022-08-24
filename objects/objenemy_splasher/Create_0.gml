event_inherited();

moveSpeed = .5;
mobHealth = 32;
mobDamage = 1;
knockbackReduce = 3;
aggroRadius = 500;
attackRadius = 35;
currentEnemyType = enemyType.splasher;
spriteIdle = sprEnemy_Splasher_Idle;
spriteMove = sprEnemy_Splasher_Move;
spriteAttack = sprEnemy_Splasher_Attack;
knockbackReduce = 2;

shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objLarge_Shadow);

dropScrap = 5;
dropWires = 2;