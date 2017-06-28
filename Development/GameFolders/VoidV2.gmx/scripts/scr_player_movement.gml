if(keyboard_check(MOVEMENT_UP) && yMoveSpeedCurrent >= -MoveSpeedMax)
{
     yMoveSpeedCurrent -= moveSpeed;


}
if(keyboard_check(MOVEMENT_DOWN) && yMoveSpeedCurrent <= MoveSpeedMax)
{
    yMoveSpeedCurrent += moveSpeed;

  
}
if(keyboard_check(MOVEMENT_LEFT) && xMoveSpeedCurrent >= -MoveSpeedMax)
{
    xMoveSpeedCurrent -= moveSpeed;

  
}
if(keyboard_check(MOVEMENT_RIGHT) && xMoveSpeedCurrent <= MoveSpeedMax)
{
    xMoveSpeedCurrent += moveSpeed;

 
}


if (!keyboard_check(MOVEMENT_LEFT) && !keyboard_check(MOVEMENT_RIGHT)) {
    xMoveSpeedCurrent *= moveSpeedDecFactor;
}
if(!keyboard_check(MOVEMENT_UP) && !keyboard_check(MOVEMENT_DOWN)){
    yMoveSpeedCurrent *= moveSpeedDecFactor;
}
    
    
    
    
if !blackhole {
    phy_position_x += xMoveSpeedCurrent;
    phy_position_y += yMoveSpeedCurrent;
} else {
    x += xMoveSpeedCurrent;
    y += yMoveSpeedCurrent;
}

if phy_speed_x > 1 || phy_speed_x < -1 {
    phy_speed_x *= 0.95;
} else {
    phy_speed_x = 0
}

if phy_speed_y > 1 || phy_speed_y < -1 {
    phy_speed_y *= 0.95;
} else {
    phy_speed_y = 0
}

/*if phy_position_x < playerOffsetX { phy_position_x = playerOffsetX; }
if phy_position_x > room_width - playerOffsetX { phy_position_x = room_width - playerOffsetX; }
if phy_position_y < playerOffsetY { phy_position_y = playerOffsetY; }
if phy_position_y > room_height - playerOffsetY { phy_position_y = room_height - playerOffsetY; }
