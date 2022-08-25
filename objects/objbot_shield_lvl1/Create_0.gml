botHealth = 1;
isDamaged = false;
isDamageBlink = false;
dropScrap = 5;
global.isShield = true;

global.shieldObj = object_index;

global.shieldHP = 30;
global.shieldHPDefault = global.shieldHP;

if (instance_exists(objBot_Shield)) {
	instance_destroy(objBot_Shield)
}