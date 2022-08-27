event_inherited();

moveSpeed = 1.1;
mobHealth = 10;
mobDamage = 3;
knockbackReduce = 1.5;
aggroRadius = 500;
attackRadius = 40;
currentEnemyType = enemyType.seeker;
spriteIdle = sprEnemy_Seeker_Idle;
spriteMove = sprEnemy_Seeker_Move;
spriteAttack = sprEnemy_Seeker_Attack;

shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);

dropScrap = 2;
dropWires = 1;