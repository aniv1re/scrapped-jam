enum botType {
	gunner = 2
}

enum stateBot{
	idle = 2,
	move = 4,
	attack = 8,
	create = 16
}

mass = 1;
speedSlow = 0.5;
baseKnockbackStrength = 2.5;
isDamaged = false;
isKnockbacked = false;
isAttackCooldown = false;
currentState = stateBot.move;

// Изменяемые статы и спрайты в будущем
moveSpeed = 0;
botHealth = 0;
botDamage = 0;
knockbackReduce = 0;
aggroRadius = 0;
attackRadius = 0;
currentEnemyType = botType.gunner;
spriteIdle = sprTest;
spriteMove = sprTest;
followRadius = 0;

gunId = instance_create_layer(x, y, "OBJ_Layer", objBotGunner_Gun);