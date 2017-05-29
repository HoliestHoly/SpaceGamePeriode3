// Don't change, to create objects go to the script scr_create_objects_initialize_array

// objectArray

var lengthObjectArray = array_length_1d(objectArray);

for (var i = 0; i < lengthObjectArray; i++) {
    if objectArray[i] != noone {
        instance_create(0, 0, objectArray[i]);
    }
}

// objectPositionedArray

var heightPositionedObjectArray = array_height_2d(objectPositionedArray);

for (var i = 0; i < heightPositionedObjectArray; i++) {
    if objectPositionedArray[i, 0] != noone {
        instance_create(objectPositionedArray[i, 1], objectPositionedArray[i, 2], objectPositionedArray[i, 0]);
    }
}
