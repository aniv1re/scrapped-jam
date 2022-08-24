if (isDamageBlink) {
	gpu_set_fog(true, c_white, 0, 1000)
	draw_self()
	gpu_set_fog(false, c_white,0,1000)
}
else {
	draw_self();
}

if (position_meeting(mouse_x, mouse_y, id)){
	//var center = abs(id.sprite_width / 2) - 1;
	var center = 9;
	draw_sprite(sprHealthBack, 0, x - center, y + 2);
	draw_sprite_part(sprHealthBar, 0, 0, 0, botHealth / botHealthDefault * 16, 1, x - center + 1, y + 3);
}