var inst = instance_create_layer(x, y, "OBJ_FX", objBulletDestroy_Large_Player);
scrSound(sfxBot_Mortyr_Explode, 1);

with (inst) {
	bulletDamage = other.bulletDamage;
}