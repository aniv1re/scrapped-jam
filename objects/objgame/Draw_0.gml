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
draw_sprite_ext(sprResources, 1, global.playerPosX - 159 + 29, global.playerPosY - 90, 1, 1, 0, -1, 1);
draw_sprite_ext(sprResources, 2, global.playerPosX - 159 + 58, global.playerPosY - 90, 1, 1, 0, -1, 1);

draw_set_font(global.statsFont);

// scrap
if (global.scrap <= 9) {
	draw_text(global.playerPosX - 145, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 140, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 135, global.playerPosY - 85, string(global.scrap));
}
else if (global.scrap <= 99) {
	draw_text(global.playerPosX - 145, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 140, global.playerPosY - 85, string(global.scrap mod 100 div 10));
	draw_text(global.playerPosX - 135, global.playerPosY - 85, string(global.scrap mod 10));
}
else {
	draw_text(global.playerPosX - 145, global.playerPosY - 85, string(global.scrap mod 1000 div 100));
	draw_text(global.playerPosX - 140, global.playerPosY - 85, string(global.scrap mod 100 div 10));
	draw_text(global.playerPosX - 135, global.playerPosY - 85, string(global.scrap mod 10));
}

// wires
if (global.wires <= 9) {
	draw_text(global.playerPosX - 145 + 30, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 140 + 30, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 135 + 30, global.playerPosY - 85, string(global.wires));
}
else if (global.scrap <= 99) {
	draw_text(global.playerPosX - 145 + 30, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 140 + 30, global.playerPosY - 85, string(global.wires mod 100 div 10));
	draw_text(global.playerPosX - 135 + 30, global.playerPosY - 85, string(global.wires mod 10));
}
else {
	draw_text(global.playerPosX - 145 + 30, global.playerPosY - 85, string(global.wires mod 1000 div 100));
	draw_text(global.playerPosX - 140 + 30, global.playerPosY - 85, string(global.wires mod 100 div 10));
	draw_text(global.playerPosX - 135 + 30, global.playerPosY - 85, string(global.wires mod 10));
}

// batterys
if (global.batterys <= 9) {
	draw_text(global.playerPosX - 145 + 59, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 140 + 59, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 135 + 59, global.playerPosY - 85, string(global.batterys));
}																		  
else if (global.batterys <= 99) {					 
	draw_text(global.playerPosX - 145 + 59, global.playerPosY - 85, "0");
	draw_text(global.playerPosX - 140 + 59, global.playerPosY - 85, string(global.batterys mod 100 div 10));
	draw_text(global.playerPosX - 135 + 59, global.playerPosY - 85, string(global.batterys mod 10));
}																		  
else {																  
	draw_text(global.playerPosX - 145 + 59, global.playerPosY - 85, string(global.batterys mod 1000 div 100));
	draw_text(global.playerPosX - 140 + 59, global.playerPosY - 85, string(global.batterys mod 100 div 10));
	draw_text(global.playerPosX - 135 + 59, global.playerPosY - 85, string(global.batterys mod 10));
}

if (global.isShield) {
	draw_sprite(sprShield, 0, global.playerPosX, global.playerPosY);
	
	draw_sprite(sprShieldBack, 0, global.playerPosX - 22, global.playerPosY + 67);
	draw_sprite_part(sprShieldBar, 0, 0, 0, global.shieldHP / global.shieldHPDefault * 40, 3, global.playerPosX - 20, global.playerPosY + 69);
}
