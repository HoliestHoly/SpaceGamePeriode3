if maxEnemies > 0 {
    do {
        var spawnX = random_range(-offset, room_width + offset);
        var spawnY = random_range(-offset, room_height + offset);
        
        
    }
    until((spawnX < view_xview[0]) || (spawnX > view_xview[0] + view_wview[0]) || spawnY < view_yview[0]) || (spawnY > view_yview[0] + view_hview[0])
    
    /*if maxEnemies <= 100 {
        var obj = instance_create(spawnX, spawnY, objectEnemy);
        obj.depth = 5;
        obj.alpha = 1;
    } else if maxEnemies <= 200 {
        var obj = instance_create(spawnX, spawnY, objectEnemy);
        obj.depth = 4;
        obj.alpha = 0.9;
    } else if maxEnemies <= 300 {
        var obj = instance_create(spawnX, spawnY, objectEnemy);
        obj.depth = 3;
        obj.alpha = 0.8;
    } else if maxEnemies <= 400 {
        var obj = instance_create(spawnX, spawnY, objectEnemy);
        obj.depth = 2;
        obj.alpha = 0.7;
    } else if maxEnemies <= 500 {
        var obj = instance_create(spawnX, spawnY, objectEnemy);
        obj.depth = 1;
        obj.alpha = 0;
    }*/
    
    var obj = instance_create(spawnX, spawnY, OBJECT_ENEMY);
    
    maxEnemies--;
}
