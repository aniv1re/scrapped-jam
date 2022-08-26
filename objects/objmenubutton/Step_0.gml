
x = owner_id.x + x_offset;
y = owner_id.y + y_offset;

if (owner_id.is_active == true) {
		// Наведение на кнопку и нажатие на неё
	if (position_meeting(mouse_x, mouse_y, id)) {
		image_index = 1;
		if (mouse_check_button(mb_left)) image_index = 2;
		if (mouse_check_button_released(mb_left)) {
			is_pressed = true;
			scrSound(sfxButton, 0.75 + random_range(0, 0.5));
		}
	}
	else image_index = 0;
	
		// Действия нажатой кнопки
	if (is_pressed == true) {
		switch (type) {
			case button_menu_type.start: {
				room_goto(roomTest);
				break;
			}
			case button_menu_type.options: {
				owner_id.y_offset = -180;
				break;
			}
			case button_menu_type.quit: {
				game_end();
				break;
			}
			case button_menu_type.back: {
				owner_id.y_offset = 0;
				break;
			}
			case button_menu_type.volumeup: {
				global.volume = clamp(global.volume + 10, 0, 100);
				audio_group_set_gain(global.audio_group_id, global.volume / 100, 0);
				break;
			}
			case button_menu_type.volumedown: {
				global.volume = clamp(global.volume - 10, 0, 100);
				audio_group_set_gain(global.audio_group_id, global.volume / 100, 0);
				break;
			}
			case button_menu_type.scaleup: {
				// Кнопку сломали :C
				instance_create_depth(owner_id.x + random(3) - 1, owner_id.y + random(3) - 1 + 180, depth - 1, objMenu_Spark);
				break;
			}
		}
		is_pressed = false;
	}
}