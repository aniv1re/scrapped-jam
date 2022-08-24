event_inherited();

moveSpeed = .9;
mobHealth = 6;
mobDamage = 1;
knockbackReduce = 1.5;
aggroRadius = 500;
attackRadius = 35;
currentEnemyType = enemyType.seeker;
spriteIdle = sprEnemy_Seeker_Idle;
spriteMove = sprEnemy_Seeker_Move;
spriteAttack = sprEnemy_Seeker_Attack;

shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);

dropScrap = 2;
dropWires = 1;