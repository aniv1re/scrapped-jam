x = 0;
y = 0;
bg_x = 0;
bg_y = 0;
bg_x_speed = -0.5;
bg_y_speed = 0.25;

is_active = true;
cursor_sprite = sprCursor_Menu;

enum button_menu_type {
	start,
	options,
	quit
}

button_start_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprMenu_Start,
	owner_id : id,
	type : button_menu_type.start,
	x_offset : 160,
	y_offset : 82
});
button_options_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprMenu_Options,
	owner_id : id,
	type : button_menu_type.options,
	x_offset : 160,
	y_offset : 98
});
button_quit_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprMenu_Quit,
	owner_id : id,
	type : button_menu_type.quit,
	x_offset : 160,
	y_offset : 114
});

/*
button_start_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton_Start, {
	x : other.x + other.button_start_x_offset,
	y : other.y + other.button_start_y_offset
});
button_options_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton_Options, {
	x : other.x + other.button_options_x_offset,
	y : other.y + other.button_options_y_offset
});
button_quit_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton_Quit, {
	x : other.x + other.button_quit_x_offset,
	y : other.y + other.button_quit_y_offset
});
*/