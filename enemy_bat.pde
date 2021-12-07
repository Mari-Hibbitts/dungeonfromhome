class Bat extends Enemy {

  int darktime = 0;
  Bat(int hp, int x, int y, int locx, int locy) {
    super(hp, 50, x, y);
    loc = new PVector (locx, locy);
  }

  void show() {
    stroke(0);
    strokeWeight(2);
    fill(black);
    circle(loc.x, loc.y, size);
    fill(255);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  void act() {
    super.act();

    if (dist(loc.x, loc.y, myHero.loc.x, myHero.loc.y) < 100) {
      myHero.hp--;
    }
    int i = 0;
    while (i < myObjects.size()) {
      GameObjects obj = myObjects.get(i);
      if (obj instanceof Bullet) {
        float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
        if (d <= size/2 + obj.size/2) {
          hp = hp - int(obj.vel.mag());
          darktime++;
          if (darktime > 0 && hp > 30) {
            fill(0);
            rectMode(CORNER);
            rect(0, 0, 800, 600);
            rectMode(CENTER);
            loc.x = random(113, 688);
            loc.y = random(102, 497);
          }
          if (darktime > 0 && hp <30) {
            fill(0);
            rectMode(CORNER);
            rect(0, 0, 800, 600);
            rectMode(CENTER);
            loc.x = myHero.loc.x + 50;
            loc.y =  myHero.loc.y + 50;
          }


          if (darktime > 100) {
            darktime = 0;
          }
        }
      }

      i++;
    }

    if (hp <=0) {
      myObjects.add(new droppedItem(loc.x, loc.y, roomX, roomY));
    }
  }
}
