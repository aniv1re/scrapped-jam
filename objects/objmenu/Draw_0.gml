draw_sprite(sprMenu_Base, 0, x, y);
draw_sprite(sprMenu_Options, 0, x, y + 180);

draw_set_font(global.statsFont);

	// Volume
var volume = global.volume;
if (volume >= 100) draw_text(x + 174, y + 86 + 180, volume mod 1000 div 100);
if (volume >= 10) draw_text(x + 179, y + 86 + 180, volume mod 100 div 10);
draw_text(x + 184, y + 86 + 180, volume mod 10);

	// Scale
//draw_text(x + 184, y + 102 + 180, global.scale);