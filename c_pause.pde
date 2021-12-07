void pause() {
  background(grey);
  imageMode(CORNER);
  image(Pause, 0, 0, 800, 600);
  fill(white);
  stroke(0);
  strokeWeight(7);
  rect(80, 54, 637, 100);
  textFont(iFont);
  fill(black);
  text("MONEY: "+ money, 125, 130);
  imageMode(CENTER);
  image(coin, 640, 103, 120, 120);
  PressDAMAGE.show();
  PressSPEED.show();
  PressHP.show();
  PressEXIT.show();
  //reset modes after button
  imageMode(CORNER);
  rectMode(CORNER);
  textAlign(CORNER, CORNER);
  stroke(0);
  strokeWeight(7);
  textSize(55);
  fill(white);
  text("Health Points: "+myHero.hpMAX, 140, 455 );
  text("Speed: "+ myHero.speed, 140, 355 );
  text("Damage Done: "+myHero.damage, 140, 255 );
  
  //if statements for buttons =============================
   if (PressDAMAGE.clicked && money >= 5) {
   myHero.damage = myHero.damage + 5;
    money = money - 5;
  }
    if (PressSPEED.clicked && money >= 5) {
    myHero.speed = myHero.speed+ 2;
        money = money - 5;
         if (myHero.speed > 9) myHero.speed = 9;
     }
   
    if (PressHP.clicked && money >= 5) {
    myHero.hpMAX  = myHero.hpMAX+ 10;
    money = money - 5;
  }
  
  if (PressEXIT.clicked) {
mode = GAME;
  }
}
