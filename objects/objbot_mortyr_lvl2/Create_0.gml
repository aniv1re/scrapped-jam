event_inherited();

moveSpeed = 1.5;
botHealth = 80;
botHealthDefault = botHealth;
botDamage = 14;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 195;
currentBotType = botType.mortyr;
spriteIdle = sprBotmachinegunLVL2_Idle;
spriteMove = sprBotmachinegunLVL2_Move;
followRadius = 25;
dropScrap = 10;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotGrenade_Gun_LVL2);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objMedium_Shadow);