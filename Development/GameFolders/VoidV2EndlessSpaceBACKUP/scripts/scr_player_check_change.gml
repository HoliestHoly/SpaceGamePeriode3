if(changingFirst = 1){
    if(alpha < 1)
    {
            if(imageScaleStart_1 < 1)
        {
            imageScaleStart_1 += imageScaler;
        }

        alpha += alphaReduction;
        draw_sprite_ext(spr_player_2, 0, x, y, imageScaleStart_1, imageScaleStart_1, 0, c_white, alpha);
    } else {
        sprite_index = spr_player_2;
        changingFirst = 0;
        physics_pause_enable(false);
        paused = false;
    }
}
if(changingSecond = 1){
    
    if(alpha < 1)
    {
                if(imageScaleStart_2 < 1)
        {
            imageScaleStart_2 += imageScaler;
        }
        alpha += alphaReduction;
        draw_sprite_ext(spr_player_3, 0, x, y, imageScaleStart_2, imageScaleStart_2, 0, c_white, alpha);
        
    } else {
        sprite_index = spr_player_3;
        changingFirst = 0;
        changingSecond = 0;
        physics_pause_enable(false);
        paused = false;
    }
}
if(changingThird = 1){
    
    if(alpha < 1)
    {
                    if(imageScaleStart_3 < 1)
        {
            imageScaleStart_3 += imageScaler;
        }

        alpha += alphaReduction;
        draw_sprite_ext(spr_player_4, 0, x, y, imageScaleStart_3, imageScaleStart_3, 0, c_white, alpha);
        
    } else {
        sprite_index = spr_player_4;
        changingFirst = 0;
        changingSecond = 0;
        changingThird = 0;
        physics_pause_enable(false);
        paused = false;
    }
}
if(changingFourth = 1){
    
    if(alpha < 1)
    {
        if(imageScaleStart_4 < 1)
         {
            imageScaleStart_4 += imageScaler;
          }
        alpha += alphaReduction;
        draw_sprite_ext(spr_player_5, 0, x, y, imageScaleStart_4, imageScaleStart_4, 0, c_white, alpha);
        
    } else {
        sprite_index = spr_player_5;
        changingFirst = 0;
        changingSecond = 0;
        changingThird = 0;
        changingFourth = 0;
      
        physics_pause_enable(false);
        paused = false;
    }
}
if(changingFifth = 1){
    
    if(alpha < 1)
    {
            if(imageScaleStart_5 < 1)
         {
            imageScaleStart_5 += imageScaler;
          }
        alpha += alphaReduction;
        draw_sprite_ext(spr_player_6, 0, x, y, imageScaleStart_5 , imageScaleStart_5 , 0, c_white, alpha);
        
    } else {
        sprite_index = spr_player_6;
        changingFirst = 0;
        changingSecond = 0;
        changingThird = 0;
        changingFourth = 0;
        changingFifth = 0;
        physics_pause_enable(false);
        paused = false;
    }
}

