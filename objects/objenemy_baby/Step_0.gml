event_inherited();

var nearestBot = instance_nearest(x, y, objBot_Base);

if (collision_circle(x, y, 5, nearestBot, 0, 0)) {
	with (nearestBot) {
		if (!isDamaged) {
		isDamageBlink = true;
		alarm[3] = 8;
	
		alarm[1] = 30;
		isDamaged = true;
		botHealth -= other.mobDamage;
		}
	}

	scrSound(sfxEnemy_Death_Small, 1);
	instance_destroy(shadowObj);
	instance_destroy(id);
}