if (!global.isShield) {
	if (!isDamaged) {
		characterHealth -= 1;
	
		alarm[1] = global.invisibilityFrameTime;
		isDamaged = true;
	}
}
else {
	global.shieldHP--;
}

instance_destroy(other.id);