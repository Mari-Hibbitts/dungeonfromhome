void pause() {
  background(grey);
  imageMode(CORNER);
  image(Pause, 0, 0, 800, 600);
  fill(white);
  strokeWeight(7);
  rect(80, 54, 637, 100);
  textFont(iFont);
  fill(black);
  text("MONEY: "+ money, 125, 130);
  imageMode(CENTER);
  image(coin, 640, 103, 120, 120);
}
