if (!isDamaged) {
	characterHealth -= 1;
	alarm[1] = 60;
	isDamaged = true;
}
instance_destroy(other.id);