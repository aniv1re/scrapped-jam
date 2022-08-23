//if (mouse_check_button_pressed(mb_left))
//{
//	if (position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id))
//	{
		
//	}
//}

if (position_meeting(mouse_x, mouse_y, id))
{
	isOpen = true;
}
else {
	isOpen = false;
}

switch(object_index) {
	case objCardBotGunner_Icon: {
		x = global.playerPosX - 156;
		y = global.playerPosY - 70;
		break;
	}
	case objCardBotHelicopter_Icon: {
		x = global.playerPosX - 156;
		y = global.playerPosY - 46;
		break;
	}
	case objCardBotMachinegun_Icon: {
		x = global.playerPosX - 156;
		y = global.playerPosY - 22;
		break;
	}
}


