var inst = instance_create_layer(x, y, "OBJ_FX", objBulletDestroy_Large_Player);

with (inst) {
	bulletDamage = other.bulletDamage;
}