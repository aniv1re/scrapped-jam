event_inherited();

moveSpeed = 1.1;
botHealth = 48;
botHealthDefault = botHealth;
botDamage = 5.5;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 95;
currentBotType = botType.gunner;
spriteIdle = sprBotGunnerLVL2_Idle;
spriteMove = sprBotGunnerLVL2_Move;
followRadius = 25;
dropScrap = 3;

gunId = instance_create_layer(x, y + 4, "OBJ_Layer", objBotGunner_Gun_LVL2);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);