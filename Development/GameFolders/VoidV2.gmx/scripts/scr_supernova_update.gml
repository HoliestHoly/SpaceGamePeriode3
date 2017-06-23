if (image_index >= image_number - 1)
{

  instance_destroy();
  physics_pause_enable(false);
  OBJECT_PLAYER.paused = false;
}


