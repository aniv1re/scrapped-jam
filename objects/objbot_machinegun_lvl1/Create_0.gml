event_inherited();

moveSpeed = 1.1;
botHealth = 80;
botHealthDefault = botHealth;
botDamage = 1.4;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 135;
currentBotType = botType.machinegun;
spriteIdle = sprBotMachinegunLVL1_Idle;
spriteMove = sprBotMachinegunLVL1_Move;
followRadius = 25;
dropScrap = 5;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotMachinegun_Gun_LVL1);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objMedium_Shadow);