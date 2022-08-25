/// @description Enemy.Init

enum stateEnemy {
	idle = 2,
	move = 4,
	attack = 8,
	hurt = 16
}

enum enemyType {
	seeker = 2,
	splasher = 4,
	shotgun = 8,
	baby = 16
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
isDamageBlink = false;

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
dropWires = 0;

shadowObj = 0;