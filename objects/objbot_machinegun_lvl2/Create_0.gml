event_inherited();

moveSpeed = 1.1;
botHealth = 105;
botHealthDefault = botHealth;
botDamage = 2;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 135;
currentBotType = botType.machinegun;
spriteIdle = sprBotmachinegunLVL2_Idle;
spriteMove = sprBotmachinegunLVL2_Move;
followRadius = 25;
dropScrap = 5;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotMachinegun_Gun_LVL2);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objMedium_Shadow);