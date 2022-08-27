event_inherited();

moveSpeed = 1.5;
botHealth = 60;
botHealthDefault = botHealth;
botDamage = 14;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 200;
currentBotType = botType.fly;
spriteIdle = sprBotFlyLVL2_Move;
spriteMove = sprBotFlyLVL2_Move;
followRadius = 25;
dropScrap = 5;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotFly_Gun_LVL2);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);