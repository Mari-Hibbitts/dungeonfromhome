class Enemy extends GameObjects {

  Enemy(int locx, int locy) {
    loc = new PVector (locx, locy);
    vel = new PVector (0, 0 );
    hp = 100;
    roomX = 1;
    roomY = 1;
    size = 45;
  }

  Enemy(int _hp, int s, int x, int y) {
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0 );
    hp = _hp;
    roomX = x;
    roomY = y;
    size = s;
  }

  void show() {

    stroke(0);
    strokeWeight(2);
    fill(red);
    circle(loc.x, loc.y, size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }

  void act() {
    super.act();
    
    //money
    if (hp <=0) money = money + 1;
    if (myHero.immune == false) {
      if (dist(loc.x, loc.y, myHero.loc.x, myHero.loc.y)< size/2+myHero.size/2 && roomX == myHero.roomX && roomY == myHero.roomY) {
        if (vel.mag() > 0) myHero.hp = myHero.hp - int(vel.mag());
        if (vel.mag() <= 0) myHero.hp  = myHero.hp - 1;

        myHero.immune = true;
      }
    }
    int i = 0;
    while (i < myObjects.size()) {
      GameObjects obj = myObjects.get(i);
      if (obj instanceof Bullet && isCollidingWith(obj)) {
        hp = hp - int(obj.vel.mag());
        obj.hp = 0;
      }
      i++;
    }

    
  }
}
