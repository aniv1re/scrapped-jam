if (!other.isDamaged) {
	isDamageBlink = true;
	alarm[3] = 8;
	
	alarm[1] = 30;
	isDamaged = true;
	other.botHealth -= bulletDamage;
	scrSound(sfxBot_Hit, 1);
}

instance_destroy();