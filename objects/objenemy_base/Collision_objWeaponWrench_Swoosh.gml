if (ds_list_find_index(global.hitByAttack, id) == -1) {
	ds_list_add(global.hitByAttack, id);
	
	mobHealth -= other.bulletDamage;
	scrSound(sfxEnemy_Hit, 1);
	currentState = stateEnemy.hurt;
}