if(keyboard_check(ord("W")) && yMoveSpeedCurrent >= -17)
{
     yMoveSpeedCurrent -= moveSpeed;


}
if(keyboard_check(ord("S")) && yMoveSpeedCurrent <= 17)
{
    yMoveSpeedCurrent += moveSpeed;

  
}
if(keyboard_check(ord("A")) && xMoveSpeedCurrent >= -17)
{
    xMoveSpeedCurrent -= moveSpeed;

  
}
if(keyboard_check(ord("D")) && xMoveSpeedCurrent <= 17)
{
    xMoveSpeedCurrent += moveSpeed;

 
}


if (!keyboard_check(ord("D")) && !keyboard_check(ord("A"))) {
    xMoveSpeedCurrent *= moveSpeedDecFactor;
}
      if(!keyboard_check(ord("S")) && !keyboard_check(ord("W"))){
                yMoveSpeedCurrent *= moveSpeedDecFactor
}
      
      
      
      
      
x +=xMoveSpeedCurrent;
y +=yMoveSpeedCurrent;

    //debug
    if(keyboard_check(ord("R"))){
    room_restart();
    }


