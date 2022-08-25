if (!other.isDamaged) {
	isDamageBlink = true;
	alarm[3] = 8;
	
	alarm[1] = 30;
	isDamaged = true;
	other.botHealth -= bulletDamage;
	show_debug_message(other.botHealth);
}

instance_destroy();