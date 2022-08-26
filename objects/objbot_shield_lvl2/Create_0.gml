scrSound(sfxBot_Shield_Build, 1);

botHealth = 1;
isDamaged = false;
isDamageBlink = false;
dropScrap = 5;
global.isShield = true;

global.shieldObj = object_index;

global.shieldHP = 38;
global.shieldHPDefault = global.shieldHP;

if (instance_exists(objBot_Shield)) {
	instance_destroy(objBot_Shield)
}

if (instance_exists(objBot_Shield_LVL1)) {
	instance_destroy(objBot_Shield_LVL1)
}