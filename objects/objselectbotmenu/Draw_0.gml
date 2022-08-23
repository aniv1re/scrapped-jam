draw_self();

//draw_text(x, y - 10, isOpen);
if (!isOpen) {
	draw_sprite_ext(sprCard_Ext, 0, x + 22, y, 1, 1, 0, -1, 1);
}
else {
	draw_sprite_ext(sprCard_Ext, 1, x + 22, y, 1, 1, 0, -1, 1);
}