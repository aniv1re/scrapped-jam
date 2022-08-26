global.volume = 50;
global.scale = 4;
global.audio_group_id = audio_group_load(sgSounds);
audio_group_set_gain(global.audio_group_id, global.volume / 100, 0);

x = 0;
y = 0;
y_offset = 0;

bg_x = 0;
bg_y = 0;
bg_x_speed = -0.5;
bg_y_speed = 0.25;

is_active = true;
cursor_sprite = sprCursor_Menu;

enum button_menu_type {
	start,
	options,
	quit,
	back,
	volumeup,
	volumedown,
	scaleup,
	scaledown
}

button_start_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprButton_Start,
	owner_id : id,
	type : button_menu_type.start,
	x_offset : 120,
	y_offset : 82
});
button_options_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprButton_Options,
	owner_id : id,
	type : button_menu_type.options,
	x_offset : 120,
	y_offset : 98
});
button_quit_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprButton_Quit,
	owner_id : id,
	type : button_menu_type.quit,
	x_offset : 120,
	y_offset : 114
});
button_back_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprButton_Back,
	owner_id : id,
	type : button_menu_type.back,
	x_offset : 160,
	y_offset : 66 + 180
});
button_volumeup_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprButton_Right,
	owner_id : id,
	type : button_menu_type.volumeup,
	x_offset : 196,
	y_offset : 82 + 180
});
button_volumedown_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprButton_Left,
	owner_id : id,
	type : button_menu_type.volumedown,
	x_offset : 104,
	y_offset : 82 + 180
});
button_scaleup_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprButton_Right,
	owner_id : id,
	type : button_menu_type.scaleup,
	x_offset : 196,
	y_offset : 98 + 180
});
button_scaledown_id = instance_create_layer(x, y, "OBJ_Menu", objMenuButton, {
	sprite_index : sprButton_Left,
	owner_id : id,
	type : button_menu_type.scaledown,
	x_offset : 104,
	y_offset : 98 + 180
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