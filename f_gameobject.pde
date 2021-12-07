class GameObjects {
  PVector loc;
  PVector vel;
  int hp;
  int roomX, roomY;
  int size;
  int damage;
  int hpMAX;
  int speed;
  GameObjects() {
    hp = 10;
    loc = new PVector (width/2, height/2);
    vel = new PVector (0, 0);
  }

  void show() {
  }

  void act() {
    loc.add(vel);  

    if (loc.x > 688) loc.x = 687;
    if (loc.x < 111) loc.x = 112;
    if (loc.y > 497) loc.y = 496;
    if (loc.y < 102) loc.y = 103;
  }

  boolean inRoomWith(GameObjects obj) {
    if (roomX == obj.roomX && roomY == obj.roomY)
      return true;
    else
      return false;
  }

  boolean isCollidingWith(GameObjects obj) {
    float d = dist(obj.loc.x, obj.loc.y, loc.x, loc.y);
    if (inRoomWith(obj) && d < size/2 + obj.size/2)
      return true;
    else
      return false;
  }
}
