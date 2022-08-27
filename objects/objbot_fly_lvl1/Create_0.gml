event_inherited();

moveSpeed = 1.5;
botHealth = 45;
botHealthDefault = botHealth;
botDamage = 9;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 200;
currentBotType = botType.fly;
spriteIdle = sprBotFlyLVL1_Move;
spriteMove = sprBotFlyLVL1_Move;
followRadius = 25;
dropScrap = 5;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotFly_Gun_LVL1);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);