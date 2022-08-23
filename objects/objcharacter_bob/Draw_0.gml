draw_self();

if (isDamaged) {
	alarm[2] = 8;
	draw_sprite(sprBubble, 0, x, y - 6);
}
//if (isDamageBlink) {
//	gpu_set_fog(true, c_white, 0, 1000)
//	draw_self()
//	gpu_set_fog(false, c_white,0,1000)
	
//}
//else {
	
	
//	draw_self();
//}