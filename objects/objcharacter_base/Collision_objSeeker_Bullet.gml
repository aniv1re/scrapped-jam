if (!isDamaged) {
	characterHealth -= 1;
	alarm[1] = global.invisibilityFrameTime;
	isDamaged = true;
}
instance_destroy(other.id);