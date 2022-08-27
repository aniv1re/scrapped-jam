if (!isDead) {
	if (!global.isShield) {
		if (!isDamaged) {
			characterHealth -= 1;
			if (characterHealth != 0) scrSound(sfxCharacter_Hit, 1);
		
			alarm[1] = global.invisibilityFrameTime;
			isDamaged = true;
		}
	}
	else {
		global.shieldHP -= baseDamage;
	
		if (!global.isShield) {
			alarm[1] = global.invisibilityFrameTime;
			isDamaged = true;
		}

		if (characterHealth != 0) {
			scrSound(sfxBot_Shield_Break, 1);
		}
		else scrSound(sfxBot_Shield_Hit, 1);
	}

	scrSound(sfxEnemy_Death_Small, 1);
	instance_destroy(other.shadowObj);
	instance_destroy(other.id);
}
else {
	instance_destroy(other.shadowObj);
	instance_destroy(other.id);
}