


if timer <= 0 {
    //if maxEnemies > 0 {
        do {
            var spawnX = random_range(view_xview[0] - offset, view_xview[0]+view_wview[0] + offset);
            var spawnY = random_range(view_yview[0] - offset, view_yview[0]+view_hview[0] + offset);



        }
        until((spawnX < view_xview[0] - offset_small) || (spawnX > view_xview[0] + view_wview[0] + offset_small) || spawnY < view_yview[0] - offset_small) || (spawnY > view_yview[0] + view_hview[0] + offset_small)

        var obj = instance_create(spawnX, spawnY, OBJECT_ENEMY);
        

        //maxEnemies--;
        timer = room_speed*2;
    //}
}

timer--;
