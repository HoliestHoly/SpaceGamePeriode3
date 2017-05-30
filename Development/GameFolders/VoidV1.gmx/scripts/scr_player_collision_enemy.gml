var spdx = xMoveSpeedCurrent;
var spdy = yMoveSpeedCurrent;
var massReduction = mass / 100;
var massReductionEnemy = other.mass / 100;
enemyColliding = other;

with other {
    if mass >= OBJECT_PLAYER.mass - OBJECT_PLAYER.massRange {
        phy_speed_x = spdx/5;
        phy_speed_y = spdy/5;
        if phy_speed_x = 0 && phy_speed_y = 0 {
            phy_speed_x = random_range(-20, 20);
            phy_speed_y = random_range(-20, 20);
        }
    }
    if OBJECT_PLAYER.mass > mass {
        if mass <= OBJECT_PLAYER.massRangeInstaKill {
            OBJECT_PLAYER.mass += mass / 5;
            OBJECT_PLAYER.massRangeInstaKill = OBJECT_PLAYER.mass / 3;
            part_particles_create(obj_particles.partSys[1], x, y, obj_particles.partType[2], 25);
            instance_destroy();
        } else {
            mass -= massReductionEnemy;
            OBJECT_PLAYER.mass += massReductionEnemy;
        }
    } else if(mass > OBJECT_PLAYER.mass){
        mass += massReduction;
        OBJECT_PLAYER.mass -= massReduction;
    }
}

if other.mass >= mass - massRange {
    phy_speed_x = -spdx/5;
    phy_speed_y = -spdy/5;
    xMoveSpeedCurrent = -xMoveSpeedCurrent/5;
    yMoveSpeedCurrent = -yMoveSpeedCurrent/5;
}

if alarm[0] <= 0 {
    alarm[0] = 3;
}
