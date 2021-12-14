class Bullet extends GameObjects {
  color c;

  PVector aim;
  int timer;
  PImage weaponType;

  Bullet(PVector _aim, color _c, int _s, PImage _weapon) {
    super();
    timer = 90;
    c = _c;
    aim = _aim;
    size = _s;
    loc = new PVector (myHero.loc.x + 15, myHero.loc.y);
    vel = _aim;
    vel.setMag(5);
    roomX = myHero.roomX;
    roomY = myHero.roomY;
    weaponType = _weapon;
  }

  void show() {
    fill(c);
    image(weaponType, loc.x, loc.y, size, size);
  }

  void act() {
    loc.add(vel);  
    timer--;
    if (timer == 0) {
      hp = 0;
    }

    if (weaponType == stake) myHero.damage = 10;
    //collision (different from gameobject)
    if (loc.x > 700) hp = 0;
    if (loc.x < 103)hp= 0;
    if (loc.y > 513) hp = 0;
    if (loc.y < 85)hp = 0;
  }
}
