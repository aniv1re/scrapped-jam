instance_create_layer(x, y, "OBJ_Layer", objWeapon_Wrench);

event_inherited();

// Статы персонажа, которые переопределяются от objCharacter_Base
moveSpeed = 2;
baseDamage = 1;
characterHealth = 3;

spriteIdle = sprCharacter_Idle;
spriteMove = sprCharacter_Move;