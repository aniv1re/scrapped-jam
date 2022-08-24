event_inherited();

moveSpeed = 1.5;
botHealth = 36;
botHealthDefault = botHealth;
botDamage = 2;
knockbackReduce = 1.5;
aggroRadius = 350;
attackRadius = 200;
currentBotType = botType.fly;
spriteIdle = sprBotFly_Idle;
spriteMove = sprBotFly_Idle;
followRadius = 25;
dropScrap = 5;

gunId = instance_create_layer(x, y, "OBJ_Guns", objBotFly_Gun);
shadowObj = instance_create_layer(x, y, "OBJ_Shadows", objShadow);