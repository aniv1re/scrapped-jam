depth = -2000;

var dir = point_direction(global.playerPosX, global.playerPosY, beaconX, beaconY);

x = global.playerPosX + lengthdir_x(25, dir);
y = global.playerPosY + lengthdir_y(25, dir) - 4;

image_angle = dir - 45;