void gameover() {
  background(white);
  fill(0);
  textSize(100);
  textFont(iFont);
  text("GAMEOVER", 200, 250);
  
  //NAME SELECTIONS
  if (name == 1)  image(YGOR, 150, 100, 600, 600);
  if (name == 2)  image(MARY, 150, 100, 600, 600);
  if (name == 3)  image(KARL, 150, 100, 600, 600);
  if (name == 4)  image(VERA, 150, 100, 600, 600);
  
  fill(black);
   grass.show();
  
}
