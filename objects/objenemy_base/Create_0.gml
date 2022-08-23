/// @description Enemy.Init

enum stateEnemy {
	idle = 2,
	move = 4,
	attack = 8,
	hurt = 16
}

enum enemyType {
	seeker = 2
}

mass = 1;
speedSlow = 0.5;
global.hitByAttack = ds_list_create();
baseKnockbackStrength = 2.5;
isDamaged = false;
isKnockbacked = false;
isAttacked = false;
currentState = stateEnemy.idle;
flip = 1;

// Изменяемые статы и спрайты в будущем
moveSpeed = 0;
mobHealth = 0;
mobDamage = 0;
knockbackReduce = 0;
aggroRadius = 0;
attackRadius = 0;
currentEnemyType = enemyType.seeker;
spriteIdle = sprTest;
spriteMove = sprTest;
spriteAttack = sprTest;

dropScrap = 0;