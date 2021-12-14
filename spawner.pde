class Spawner extends Enemy {
  int timer;
  Spawner(int x, int y) {
    super(300, 50, x, y);
    timer = 0;
  }

  void show() {
    super.show();
    fill(red);
    square(loc.x, loc.y, size);
  }

  void act() {
    timer++;
    super.act();
    if (timer == 350) {
      myObjects.add(new Follower(40, roomX, roomY, int(loc.x), int(loc.y)));  
      timer = 0;
    }
    if (hp<=0) {
      myObjects.add(new droppedItem(loc.x, loc.y, roomX, roomY));
        myObjects.add(new Message(loc.x, loc.y, 5));
    }
  }
}
