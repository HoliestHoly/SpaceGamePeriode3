/*if(x > OBJECT_PLAYER.x){
    if(distance_to_object(OBJECT_PLAYER) > 990)
    {
        phy_speed_x -= 0.5;
    }
    if(distance_to_object(OBJECT_PLAYER) < 990)
    {
        phy_speed_x -= 2;
    }
} else if(x < OBJECT_PLAYER.x){
    if(distance_to_object(OBJECT_PLAYER) > 990)
    {
        phy_speed_x += 0.5;
    }
    if(distance_to_object(OBJECT_PLAYER) < 990)
    {
        phy_speed_x += 2;
    }
}

if(y > OBJECT_PLAYER.y){
    if(distance_to_object(OBJECT_PLAYER) > 540)
    {
        phy_speed_y -= 0.5;
    }
    if(distance_to_object(OBJECT_PLAYER) < 540)
    {
        phy_speed_y -= 2;
    }
} else if(y < OBJECT_PLAYER.y){
    if(distance_to_object(OBJECT_PLAYER) > 540)
    {
        phy_speed_y += 0.5;
    }
    if(distance_to_object(OBJECT_PLAYER) < 540)
    {
        phy_speed_y += 2;
    }
}*/

distx = OBJECT_PLAYER.x - x;
disty = OBJECT_PLAYER.y - y;

powx = power(abs(distx), 2);
powy = power(abs(disty), 2);

len = sqrt(powx + powy);
ys = disty/len;
xs = distx/len;



x += xs / (point_distance(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y) / 5000);
y += ys / (point_distance(x, y, OBJECT_PLAYER.x, OBJECT_PLAYER.y) / 5000);
