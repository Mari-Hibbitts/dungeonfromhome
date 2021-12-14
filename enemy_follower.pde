class Follower extends Enemy {
  int pickType;
  int dropTr;
  Follower(int hp, int x, int y, int locx, int locy) {
    super(hp, 50, x, y);
    loc = new PVector (locx, locy);
    dropTr = 0;
  }

  void show() {
    stroke(0);
    strokeWeight(2);
    fill(white);
    circle(loc.x, loc.y, size);
    fill(black);
    textSize(20);
    text(hp, loc.x, loc.y);
  }
  void act() {
    dropTr++;
    super.act();
    if (dropTr == 100) {
      myObjects.add(new droppedItempoison(loc.x, loc.y, roomX, roomY));
      dropTr = 0;
    }
    pickType = int(random( 1, 3));

    if (hp <=0 && pickType == 1) {
      myObjects.add(new droppedItemshield(loc.x, loc.y, roomX, roomY));
      money = money + 3;
        myObjects.add(new Message(loc.x, loc.y, 5));
    }

    if (hp <=0 && pickType == 2) {
      myObjects.add(new droppedItempoison(loc.x, loc.y, roomX, roomY));
      money = money + 3;
        myObjects.add(new Message(400, 300, 5));
    }

    vel = new PVector(myHero.loc.x - loc.x, myHero.loc.y - loc.y);
    vel.setMag(1);
  }
}
