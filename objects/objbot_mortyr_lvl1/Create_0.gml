event_inherited();

moveSpeed = 1.5;
botHealth = 65;
botHealthDefault = botHealth;
botDamage = 9;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 195;
currentBotType = botType.mortyr;
spriteIdle = sprBotMachinegunLVL1_Idle;
spriteMove = sprBotMachinegunLVL1_Move;
followRadius = 25;
dropScrap = 10;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotGrenade_Gun_LVL1);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objMedium_Shadow);