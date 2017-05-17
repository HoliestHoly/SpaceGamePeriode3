if maxEnemies > 0 {
    do {
        var spawnX = random(room_width);
        var spawnY = random(room_height);
        
        
    }
    until((spawnX < view_xview[0]) || (spawnX > view_xview[0] + view_wview[0]) || spawnY < view_yview[0]) || (spawnY > view_yview[0] + view_hview[0])
    
    instance_create(spawnX, spawnY, objectEnemy);
    
    maxEnemies--;
}
