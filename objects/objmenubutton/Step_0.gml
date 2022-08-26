
x = owner_id.x + x_offset;
y = owner_id.y + y_offset;

if (owner_id.is_active == true) {
		// Наведение на кнопку и нажатие на неё
	if (position_meeting(mouse_x, mouse_y, id)) {
		image_index = 1;
		if (mouse_check_button(mb_left)) image_index = 2;
		if (mouse_check_button_released(mb_left)) is_pressed = true;
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
				// Опции, лол...
				break;
			}
			case button_menu_type.quit: {
				game_end();
				break;
			}
		}
		is_pressed = false;
	}
}