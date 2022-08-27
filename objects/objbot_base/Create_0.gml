scrSound(sfxBot_Spawn, 1);

alarm[4] = 60;

enum botType {
	gunner = 2,
	machinegun = 4,
	fly = 8,
	mortyr = 16
}

enum stateBot{
	idle = 2,
	move = 4,
	attack = 8,
	create = 16,
	hurt = 32
}

mass = 1;
speedSlow = 0.5;
baseKnockbackStrength = 2.5;
isDamaged = false;
isKnockbacked = false;
isAttackCooldown = false;
currentState = stateBot.move;
flip = 1;

// Изменяемые статы и спрайты в будущем
moveSpeed = 0;
botHealth = 0;
botHealthDefault = 0;
botDamage = 0;
knockbackReduce = 0;
aggroRadius = 0;
attackRadius = 0;
currentBotType = 0;
spriteIdle = sprTest;
spriteMove = sprTest;
followRadius = 0;
dropScrap = 0;
isDamageBlink = false;

gunId = 0;
shadowObj = 0;