bg_x = bg_x + bg_x_speed;
bg_y = bg_y + bg_y_speed;

y = scrApproach(y, y_offset, 10);

layer_x("BG_Menu", bg_x);
layer_y("BG_Menu", bg_y);