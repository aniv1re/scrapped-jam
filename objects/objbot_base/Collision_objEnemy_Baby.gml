if (!isDamaged) {
	isDamageBlink = true;
	alarm[3] = 8;
	
	alarm[1] = 30;
	isDamaged = true;
	botHealth -= other.mobDamage;
}

scrSound(sfxEnemy_Death_Small, 1);
instance_destroy(other.shadowObj);
instance_destroy(other.id);