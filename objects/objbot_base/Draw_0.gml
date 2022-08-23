if (isDamageBlink) {
	gpu_set_fog(true, c_white, 0, 1000)
	draw_self()
	gpu_set_fog(false, c_white,0,1000)
}
else {
	draw_self();
}
//draw_text(x, y - 5, botHealth)
//draw_circle(x, y, aggroRadius, true);
//draw_circle(x, y, attackRadius, true);