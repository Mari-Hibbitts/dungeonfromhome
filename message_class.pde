class Message extends GameObjects {
  int coins;
  int lifetime;
  Message (float locx, float locy, int _coins) {
    loc = new PVector(locx, locy);
    coins = _coins;
 lifetime = 0;
    hp = 10;
    roomX = myHero.roomX;
    roomY = myHero.roomY;
  }

  void show() {
    fill(white);
   // textSize(20);
 //textFont(iFont);
    text("+5", loc.x, loc.y);
  }
  void act() {
    lifetime++;
    loc.y--;
    if (lifetime > 150) hp = 0;
  }
}
