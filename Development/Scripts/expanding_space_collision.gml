#define scr_collision
enemy = obj_enemy;
massReduction = mass / 100;
massReductionEnemy = enemy.mass / 100;
if(mass > enemy.mass){
mass += massReductionEnemy;
enemy.mass -= massReductionEnemy;
}

else if(enemy.mass > mass){

mass -= massReduction;
enemy.mass += massReduction;
}

