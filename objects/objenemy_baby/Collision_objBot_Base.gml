if (!other.isDamaged) {
	isDamageBlink = true;
	alarm[3] = 8;
	
	alarm[1] = 30;
	isDamaged = true;
	other.botHealth -= mobDamage;
	show_debug_message(other.botHealth);
}

scrSound(sfxEnemy_Death_Small, 1);
instance_destroy(shadowObj);
instance_destroy();