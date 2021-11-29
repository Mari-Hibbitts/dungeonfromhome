void keyPressed() {

  if (key == 'w' || key == 'W')  wkey = true;
  if (key == 's' || key == 'S')  skey = true;
  if (key == 'a' || key == 'A')  akey = true;
  if (key == 'd' || key == 'D')  dkey = true;
  if (keyCode == ' ')    spacekey = true;
  if (key == 'p' || key == 'P') pause = true;
  if (key == 'a' || key == 'A') select = true;
  if (key == 'm' || key == 'M') mapkey =  true;
}

void keyReleased() {

  if (key == 'w' || key == 'W')  wkey = false;
  if (key == 's' || key == 'S')  skey = false;
  if (key == 'a' || key == 'A')  akey = false;
  if (key == 'd' || key == 'D')  dkey = false;
  if (keyCode == ' ')    spacekey = false;
  if (key == 'p' || key == 'P') pause = false;
  if (key == 'a' || key == 'A') select = false;
  if (key == 'M' || key == 'm') mapkey =  false;
}
