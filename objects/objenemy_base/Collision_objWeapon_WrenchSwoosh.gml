if (ds_list_find_index(global.hitByAttack, id) == -1) {
	ds_list_add(global.hitByAttack, id);
	
	mobHealth -= global.baseDamage;
	currentState = stateEnemy.hurt;
}