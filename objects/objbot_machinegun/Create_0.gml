event_inherited();

moveSpeed = 1.5;
botHealth = 50;
botHealthDefault = botHealth;
botDamage = 1;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 135;
currentBotType = botType.machinegun;
spriteIdle = sprBotMachinegun_Idle;
spriteMove = sprBotMachinegun_Move;
followRadius = 25;
dropScrap = 5;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotMachinegun_Gun);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objMedium_Shadow);