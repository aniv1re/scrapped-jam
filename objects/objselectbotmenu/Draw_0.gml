draw_self();

//draw_text(x, y - 10, isOpen);
if (isSelected) {
	draw_sprite(sprTipInfo_Build_1, 0, global.playerPosX, global.playerPosY - 78);
	draw_sprite_ext(sprCard_Ext, 2, x + 22, y, 1, 1, 0, -1, 1);
	
	if (isColliding) {
		draw_sprite_ext(sprTipInfo_AreaBuild, 0, mouse_x, mouse_y, 1, 1, 0, -1, 1);
	}
	else {
		draw_sprite_ext(sprTipInfo_AreaBuild, 1, mouse_x, mouse_y, 1, 1, 0, -1, 1);
	}
}
else {
	if (!isOpen) {
		draw_sprite_ext(sprCard_Ext, 0, x + 22, y, 1, 1, 0, -1, 1);
	}
	else {
		draw_sprite_ext(sprCard_Ext, 1, x + 22, y, 1, 1, 0, -1, 1);
		
		// Materials status
		if (global.scrap >= botBuildPriceScrap) {
			draw_set_font(global.materialsWhite);
			draw_sprite(sprWhiteMaterialIcons, 0, x + 24, y + 3)
			
			draw_text(x + 25, y + 14, string(botBuildPriceScrap mod 100 div 10));
			draw_text(x + 30, y + 14, string(botBuildPriceScrap mod 10));
			
			draw_set_font(global.statsFont);
		}
		else {
			draw_set_font(global.materialsBlack);
			
			draw_text(x + 25, y + 14, string(botBuildPriceScrap mod 100 div 10));
			draw_text(x + 30, y + 14, string(botBuildPriceScrap mod 10));
			
			draw_set_font(global.statsFont);
		}
		
		if (global.wires >= botBuildPriceWires) {
			draw_set_font(global.materialsWhite);
			draw_sprite(sprWhiteMaterialIcons, 1, x + 37, y + 3)
			
			draw_text(x + 38, y + 14, string(botBuildPriceWires mod 100 div 10));
			draw_text(x + 43, y + 14, string(botBuildPriceWires mod 10));
			
			draw_set_font(global.statsFont);
		}
		else {
			draw_set_font(global.materialsBlack);
			
			draw_text(x + 38, y + 14, string(botBuildPriceWires mod 100 div 10));
			draw_text(x + 43, y + 14, string(botBuildPriceWires mod 10));
			
			draw_set_font(global.statsFont);
		}
		
		if (global.batterys >= botBuildPriceBatterys) {
			draw_set_font(global.materialsWhite);
			draw_sprite(sprWhiteMaterialIcons, 2, x + 50, y + 3)
			
			draw_text(x + 51, y + 14, string(botBuildPriceBatterys mod 100 div 10));
			draw_text(x + 56, y + 14, string(botBuildPriceBatterys mod 10));
			
			draw_set_font(global.statsFont);
		}
		else {
			draw_set_font(global.materialsBlack);
			
			draw_text(x + 51, y + 14, string(botBuildPriceBatterys mod 100 div 10));
			draw_text(x + 56, y + 14, string(botBuildPriceBatterys mod 10));
			
			draw_set_font(global.statsFont);
		}
	}
}