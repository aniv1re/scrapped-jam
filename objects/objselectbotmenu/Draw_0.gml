draw_self();

if (unlockState) {
	draw_text(x + 7, y + 15, upgradeState + 1);
}

//draw_text(x, y - 10, isOpen);
if (isSelected) {
	draw_sprite(sprTipInfo_Build_1, 0, global.playerPosX, global.playerPosY - 78);
	draw_sprite_ext(sprCard_Ext, 2, x + 19, y, 1, 1, 0, -1, 1);
	
	if (isColliding) {
		//draw_sprite_ext(sprTipInfo_AreaBuild, 0, mouse_x, mouse_y, 1, 1, 0, -1, 1);
		cursor_sprite = s_cursor_build_no;
	}
	else {
		//draw_sprite_ext(sprTipInfo_AreaBuild, 1, mouse_x, mouse_y, 1, 1, 0, -1, 1);
		cursor_sprite = s_cursor_build_yes;
	}
}
else {
	if (!isOpen) {
		draw_sprite_ext(sprCard_Ext, 0, x + 19, y, 1, 1, 0, -1, 1);
	}
	else {
		draw_sprite_ext(sprCard_Ext, 1, x + 19, y, 1, 1, 0, -1, 1);
		
		// Materials status
		if (global.scrap >= botBuildPriceScrap) {
			draw_set_font(global.materialsWhite);
			draw_sprite(sprWhiteMaterialIcons, 0, x + 21, y + 2)
			
			draw_text(x + 22, y + 13, string(botBuildPriceScrap mod 100 div 10));
			draw_text(x + 27, y + 13, string(botBuildPriceScrap mod 10));
			
			draw_set_font(global.statsFont);
		}
		else {
			draw_set_font(global.materialsBlack);
			
			draw_text(x + 22, y + 13, string(botBuildPriceScrap mod 100 div 10));
			draw_text(x + 27, y + 13, string(botBuildPriceScrap mod 10));
			
			draw_set_font(global.statsFont);
		}
		
		if (global.wires >= botBuildPriceWires) {
			draw_set_font(global.materialsWhite);
			draw_sprite(sprWhiteMaterialIcons, 1, x + 34, y + 2)
			
			draw_text(x + 35, y + 13, string(botBuildPriceWires mod 100 div 10));
			draw_text(x + 40, y + 13, string(botBuildPriceWires mod 10));
			
			draw_set_font(global.statsFont);
		}
		else {
			draw_set_font(global.materialsBlack);
			
			draw_text(x + 35, y + 13, string(botBuildPriceWires mod 100 div 10));
			draw_text(x + 40, y + 13, string(botBuildPriceWires mod 10));
			
			draw_set_font(global.statsFont);
		}
		
		if (global.batterys >= botBuildPriceBatterys) {
			draw_set_font(global.materialsWhite);
			draw_sprite(sprWhiteMaterialIcons, 2, x + 47, y + 2)
			
			draw_text(x + 48, y + 13, string(botBuildPriceBatterys mod 100 div 10));
			draw_text(x + 53, y + 13, string(botBuildPriceBatterys mod 10));
			
			draw_set_font(global.statsFont);
		}
		else {
			draw_set_font(global.materialsBlack);
			
			draw_text(x + 48, y + 13, string(botBuildPriceBatterys mod 100 div 10));
			draw_text(x + 53, y + 13, string(botBuildPriceBatterys mod 10));
			
			draw_set_font(global.statsFont);
		}
	}
}