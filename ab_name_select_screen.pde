void name() {
  background(black);
  textFont(iFont);
  textSize(70);
  fill(white);
  text("Pick a Name", 400, 80);
  Ygor.show();
  Mary.show();
  Karl.show();
  Vera.show();

  //clicked

  if (Ygor.clicked) name = 1;

  if (Mary.clicked) name = 2;
  
  if (Karl.clicked) name = 3;
  
  if (Vera.clicked) name = 4;  
  
  if (BEGIN.clicked) mode = GAME;
  
  BEGIN.show();
}
