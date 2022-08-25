if (!global.isShield) {
	if (!isDamaged) {
		characterHealth -= 1;
	
		alarm[1] = global.invisibilityFrameTime;
		isDamaged = true;
	}
}
else {
	global.shieldHP -= baseDamage;
}

instance_destroy(other.shadowObj);
instance_destroy(other.id);