draw_self();

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