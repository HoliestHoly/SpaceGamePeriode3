randomize();

smallMass = random(10);

if smallMass <= 5 {
    mass = random_range(10, 200);
} else {
    mass = random_range(300, mass_goal-200);
}
massImageScaler = mass / 1000;
image_xscale = massImageScaler;
image_yscale = massImageScaler;
