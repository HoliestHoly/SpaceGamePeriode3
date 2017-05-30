view_xview[0] = view_xview[0] + ((OBJECT_PLAYER.x-(view_wview[0]/2)) - view_xview[0]) * 0.1;
view_yview[0] = view_yview[0] + ((OBJECT_PLAYER.y-(view_hview[0]/2)) - view_yview[0]) * 0.1;
var maxWidth = (1920 + OBJECT_PLAYER.mass * 2);
var maxHeight = (1080 + OBJECT_PLAYER.mass * 2 * 0.5625);

if view_wview[0] < maxWidth {
    view_wview[0] += OBJECT_PLAYER.mass;
} else {
    view_wview[0] = maxWidth;
}

if view_hview[0] < maxHeight {
    view_hview[0] += OBJECT_PLAYER.mass * 0.5625;
} else {
    view_hview[0] = maxHeight;
}
