event_inherited();

moveSpeed = 1.5;
botHealth = 40;
botHealthDefault = botHealth;
botDamage = 6;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 95;
currentBotType = botType.gunner;
spriteIdle = sprBotGunner_Idle;
spriteMove = sprBotGunner_Move;
followRadius = 25;
dropScrap = 3;

gunId = instance_create_layer(x, y + 4, "OBJ_Layer", objBotGunner_Gun);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);