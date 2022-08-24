x = global.playerPosX;
y = global.playerPosY - 20;

x = clamp(x, 168, room_width - 168);
y = clamp(y, 98, room_height - 98);

if (botHealth <= 0) {
	instance_destroy();
}