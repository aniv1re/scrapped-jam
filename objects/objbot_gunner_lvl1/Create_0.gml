event_inherited();

moveSpeed = 1.1;
botHealth = 36;
botHealthDefault = botHealth;
botDamage = 4.5;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 95;
currentBotType = botType.gunner;
spriteIdle = sprBotGunnerLVL1_Idle;
spriteMove = sprBotGunnerLVL1_Move;
followRadius = 25;
dropScrap = 3;

gunId = instance_create_layer(x, y + 4, "OBJ_Layer", objBotGunner_Gun_LVL1);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);