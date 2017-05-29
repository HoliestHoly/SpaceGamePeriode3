// Array of objects that will get created at the start

// Example:
// objectArray[10] = OBJECT_NAME;
// This will create OBJECT_NAME that is the 10th object in this list starting from 0
// noone means that this object will not get created

objectArray[0] = OBJECT_SPAWNER;
objectArray[1] = OBJECT_CAMERA;
objectArray[2] = noone; //OBJECT_TIMER;
objectArray[3] = OBJECT_PARTICLES;

// This is an array within objects that needs a position to be specified

// Example:
// objectPositionedArray[10, 0] = OBJECT_NAME;
// objectPositionedArray[10, 1] = x;
// objectPositionedArray[10, 2] = y;
// The number 10 is the 10th object in this list starting from 0
// The number 1 is an x position and 2 is an y position

objectPositionedArray[0, 0] = OBJECT_PLAYER;
objectPositionedArray[0, 1] = room_width/2;
objectPositionedArray[0, 2] = room_height/2;
