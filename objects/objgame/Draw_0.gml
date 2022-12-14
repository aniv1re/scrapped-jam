draw_self();

//draw_text(global.playerPosX, global.playerPosY, global.shieldHP);

if (objCharacter_Base.isDead) {
	draw_sprite(sprGameOver, 0, global.playerPosX - 160, global.playerPosY -  90);
}

// Health
if (!objCharacter_Base.isDead) {
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
}

// Resources
if (!objCharacter_Base.isDead) {
	draw_sprite_ext(sprResources, 0, global.playerPosX - 159, global.playerPosY + 74, 1, 1, 0, -1, 1);
	draw_sprite_ext(sprResources, 1, global.playerPosX - 159 + 29, global.playerPosY + 74, 1, 1, 0, -1, 1);
	draw_sprite_ext(sprResources, 2, global.playerPosX - 159 + 58, global.playerPosY + 74, 1, 1, 0, -1, 1);

	draw_set_font(global.statsFont);


	// scrap
	if (global.scrap <= 9) {
		draw_text(global.playerPosX - 145, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 140, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 135, global.playerPosY + 79, string(global.scrap));
	}
	else if (global.scrap <= 99) {
		draw_text(global.playerPosX - 145, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 140, global.playerPosY + 79, string(global.scrap mod 100 div 10));
		draw_text(global.playerPosX - 135, global.playerPosY + 79, string(global.scrap mod 10));
	}
	else {
		draw_text(global.playerPosX - 145, global.playerPosY + 79, string(global.scrap mod 1000 div 100));
		draw_text(global.playerPosX - 140, global.playerPosY + 79, string(global.scrap mod 100 div 10));
		draw_text(global.playerPosX - 135, global.playerPosY + 79, string(global.scrap mod 10));
	}

	// wires
	if (global.wires <= 9) {
		draw_text(global.playerPosX - 145 + 30, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 140 + 30, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 135 + 30, global.playerPosY + 79, string(global.wires));
	}
	else if (global.scrap <= 99) {
		draw_text(global.playerPosX - 145 + 30, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 140 + 30, global.playerPosY + 79, string(global.wires mod 100 div 10));
		draw_text(global.playerPosX - 135 + 30, global.playerPosY + 79, string(global.wires mod 10));
	}
	else {
		draw_text(global.playerPosX - 145 + 30, global.playerPosY + 79, string(global.wires mod 1000 div 100));
		draw_text(global.playerPosX - 140 + 30, global.playerPosY + 79, string(global.wires mod 100 div 10));
		draw_text(global.playerPosX - 135 + 30, global.playerPosY + 79, string(global.wires mod 10));
	}

	// batterys
	if (global.batterys <= 9) {
		draw_text(global.playerPosX - 145 + 59, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 140 + 59, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 135 + 59, global.playerPosY + 79, string(global.batterys));
	}																		  
	else if (global.batterys <= 99) {					 
		draw_text(global.playerPosX - 145 + 59, global.playerPosY + 79, "0");
		draw_text(global.playerPosX - 140 + 59, global.playerPosY + 79, string(global.batterys mod 100 div 10));
		draw_text(global.playerPosX - 135 + 59, global.playerPosY + 79, string(global.batterys mod 10));
	}																		  
	else {																  
		draw_text(global.playerPosX - 145 + 59, global.playerPosY + 79, string(global.batterys mod 1000 div 100));
		draw_text(global.playerPosX - 140 + 59, global.playerPosY + 79, string(global.batterys mod 100 div 10));
		draw_text(global.playerPosX - 135 + 59, global.playerPosY + 79, string(global.batterys mod 10));
	}
}

// shield
if (!objCharacter_Base.isDead) {
	if (global.isShield) {
		draw_sprite(sprShield, 0, global.playerPosX, global.playerPosY);
	
		draw_sprite(sprShieldBack, 0, global.playerPosX - 22, global.playerPosY + 67);
		draw_sprite_part(sprShieldBar, 0, 0, 0, global.shieldHP / global.shieldHPDefault * 40, 3, global.playerPosX - 20, global.playerPosY + 69);
	}
}

// difficulty
if (!objCharacter_Base.isDead) {
	var diffSeparator = 0;

	for (var i = 0; i < 5; i++) {
		draw_sprite(sprDifficulty_Icon, 1, global.playerPosX + diffSeparator + 113, global.playerPosY + 69);
		diffSeparator += 8;
	}

	var diffSeparator = 0;

	for (var i = 0; i < global.currentLevelDifficulty; i++) {
		draw_sprite(sprDifficulty_Icon, 0, global.playerPosX + diffSeparator + 113, global.playerPosY + 69);
		diffSeparator += 8;
	}

	// diff timer
	draw_text(global.playerPosX + 121, global.playerPosY + 82, global.difficultyTimerSeconds div 600);
	draw_text(global.playerPosX + 126, global.playerPosY + 82, ceil(global.difficultyTimerSeconds div 60 mod 10));

	draw_sprite(sprDifficulty_Timer, 0, global.playerPosX + 121, global.playerPosY + 82);

	draw_text(global.playerPosX + 135, global.playerPosY + 82, global.difficultyTimerSeconds mod 60 div 10);
	draw_text(global.playerPosX + 140, global.playerPosY + 82, global.difficultyTimerSeconds mod 10);
}

// global timer
if (!objCharacter_Base.isDead) {
	draw_set_font(global.fontTimer);
	draw_text(global.playerPosX + 105, global.playerPosY - 83, global.minutes mod 100 div 10);
	draw_text(global.playerPosX + 115, global.playerPosY - 83, global.minutes mod 10);

	draw_sprite(sprTimer_Separator, 0, global.playerPosX + 96, global.playerPosY - 90);

	draw_text(global.playerPosX + 131, global.playerPosY - 83, global.seconds mod 60 div 10);
	draw_text(global.playerPosX + 141, global.playerPosY - 83, global.seconds mod 10);
	draw_set_font(global.statsFont);
}
else  {
	draw_set_font(global.fontTimer);
	draw_text(global.playerPosX - 21, global.playerPosY + 8, global.minutes mod 100 div 10);
	draw_text(global.playerPosX - 11, global.playerPosY + 8, global.minutes mod 10);

	draw_sprite(sprTimer_Separator, 0, global.playerPosX - 30, global.playerPosY + 1);

	draw_text(global.playerPosX + 5, global.playerPosY + 8, global.seconds mod 60 div 10);
	draw_text(global.playerPosX + 15, global.playerPosY + 8, global.seconds mod 10);
	draw_set_font(global.statsFont);
}