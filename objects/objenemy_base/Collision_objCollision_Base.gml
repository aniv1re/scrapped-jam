/// @description Avoid mob stacking
// Предотвращение стака врагов
// https://forum.yoyogames.com/index.php?threads/stop-objects-from-stacking-inside-of-each-other-solved.20773/

//Move out of collision
while (place_meeting(x, y, other))
{
    x -= xoff * om; //Move the instance out of collision
    y -= yoff * om;
    other.x += xoff * mm; //Move the other instance out of the collision
    other.y += yoff * mm;
}