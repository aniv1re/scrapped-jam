event_inherited();

moveSpeed = 1.1;
botHealth = 64;
botHealthDefault = botHealth;
botDamage = 6.5;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 195;
currentBotType = botType.mortyr;
spriteIdle = sprBotMachinegun_Idle;
spriteMove = sprBotMachinegun_Move;
followRadius = 25;
dropScrap = 10;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotGrenade_Gun);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objMedium_Shadow);