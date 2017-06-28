if
(
    x >= OBJECT_PLAYER.x - 50 &&
    x <= OBJECT_PLAYER.x + 50 &&
    y >= OBJECT_PLAYER.y - 50 &&
    y <= OBJECT_PLAYER.y + 50
)

{
    instance_destroy();
}
