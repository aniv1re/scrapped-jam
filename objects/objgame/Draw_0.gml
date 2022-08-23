draw_self();

// Health
var sepator = 0;
for (var i = 0; i < 3; i++) {
	draw_sprite_ext(sprHealth, 1, global.playerPosX - 20 + sepator, global.playerPosY + 77, 1, 1, 0, -1, 1);
	sepator += 14;
}

var sepator = 0;
for (var i = 0; i < objCharacter_Bob.characterHealth; i++) {
	draw_sprite_ext(sprHealth, 0, global.playerPosX - 20 + sepator, global.playerPosY + 77, 1, 1, 0, -1, 1);
	sepator += 14;
}

// Resources
draw_sprite_ext(sprResources, 0, global.playerPosX - 159, global.playerPosY - 90, 1, 1, 0, -1, 1);
draw_sprite_ext(sprResources, 1, global.playerPosX - 159 + 25, global.playerPosY - 90, 1, 1, 0, -1, 1);
draw_sprite_ext(sprResources, 2, global.playerPosX - 159 + 50, global.playerPosY - 90, 1, 1, 0, -1, 1);

draw_set_font(global.statsFont);

// scrap
if (global.scrap <= 9) {
	draw_text(global.playerPosX - 145, global.playerPosY - 85, "0" + string(global.scrap));
}
else if (global.scrap <= 99) {
	draw_text(global.playerPosX - 145, global.playerPosY - 85, global.scrap);
}

// wires
if (global.wires <= 9) {
	draw_text(global.playerPosX - 145 + 26, global.playerPosY - 85, "0" + string(global.wires));
}
else if (global.scrap <= 99) {
	draw_text(global.playerPosX - 145 + 26, global.playerPosY - 85, global.wires);
}

// batterys
if (global.batterys <= 9) {
	draw_text(global.playerPosX - 145 + 50, global.playerPosY - 85, "0" + string(global.batterys));
}
else if (global.scrap <= 99) {
	draw_text(global.playerPosX - 145 + 50, global.playerPosY - 85, global.batterys);
}


