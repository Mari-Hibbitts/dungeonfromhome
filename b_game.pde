void game() {


  background(0);
  drawRoom();
  drawGameObjects();
  darknessDraw();
  if (mapkey == true) drawMap();


  //pause
  if (pause == true) {
    mode = PAUSE;
  }
}

void drawRoom() {

  image(room, -5, -5, width+5, height+5);

  //draw exits
  northRoom = map.get(myHero.roomX, myHero.roomY-1);
  eastRoom = map.get(myHero.roomX + 1, myHero.roomY);
  southRoom = map.get(myHero.roomX, myHero.roomY+1);
  westRoom = map.get(myHero.roomX-1, myHero.roomY);

  //draw doors at exits
  noStroke();
  fill(black);
  if (northRoom != #FFFFFF) {
    image(doorN, 337, 32);
  }

  if (eastRoom != #FFFFFF) {
    image(doorE, 702, 235);
  }

  if (southRoom != #FFFFFF) {
    image(doorS, 337, 518);
  }

  if (westRoom != #FFFFFF) {
    image(doorW, 50, 235);
  }

  image(floor, 93, 80, 610, 440);
}

void drawGameObjects() {
 
  for (int i = 0; i < myObjects.size(); i++) {
    GameObjects myObj = myObjects.get(i);
 if(myObj.roomX == myHero.roomX && myObj.roomY == myHero.roomY){
    myObj.show();
    myObj.act();
    if (myObj.hp <= 0) {
      myObjects.remove(i);
         i--;
    }  
    
  }
  }
}

void darknessDraw() {
  rectMode(CORNER);
  int i = 0;
  while (i < darkness.size()) {
    darkness.get(i).show();
    i++;
  }
  rectMode (CENTER);
}

void drawMap() {
  int s = 10;
  int x = 0, y = 0;
  while (y < map.height) {
    color c = map.get(x, y);
    fill(c);
    square(x*s, y*s, s);
    x =  x+1;
    if (x >= map.width) {
      x = 0;
      y = y + 1;
    }
  }
  fill(255, 0, 0);
  square(myHero.roomX * s, myHero.roomY * s, s);
}
