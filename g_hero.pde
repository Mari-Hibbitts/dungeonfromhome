class Hero extends GameObjects {

  Weapon myWeapon;
  AnimatedGif currentAction;
  boolean immune;
  int immunetime = 0;
  color c;

  Hero() {
    super();
    hpMAX = hp = 100;
    loc = new PVector (50, 50);
    speed = 5;
    damage = 5;
    roomX = 1;
    roomY = 3;
    size = 40;
    c = green;
    immune = false;
    myWeapon = new AutoPistol();
    currentAction = spriteDown;
  }

  void show() {

    currentAction.show(loc.x, loc.y, size/1.5*1.5, size*1.5);
    //healthbar
    rectMode(CENTER);
    fill(brightRed);
    stroke(0);
    strokeWeight(2);
    float lifemeter = map(hp, 0, 100, 0, 70);
    rect(loc.x, loc.y + -35, 70, 10);
    fill(green);
    noStroke();
    rect(loc.x, loc.y - 35, lifemeter, 10);
  }

  void act() {
    super.act();

    if (immune) {
      immunetime++;
      c = red;
    }
    if (immunetime > 100) { 
      immune = false;
      immunetime = 0;
      c = green;
    }

    if (wkey) vel.y = -speed;
    if (skey) vel.y = speed;
    if (akey) vel.x = -speed;
    if (dkey) vel.x = speed;

    if (vel.mag() > speed) vel.setMag(speed);

    if (!wkey && !skey) vel.y = vel.y*0.9;
    if (!akey && !dkey) vel.x = vel.x*0.9;

    //currrrrent action
    if (abs(vel.y) > abs(vel.x)) {
      if (vel.y >= 0) currentAction = spriteDown;
      else currentAction = spriteUp;
    } else {
      if (vel.x > 0) currentAction = spriteRight;
      else currentAction = spriteLeft;
    }

    //moving around rooms

    if (northRoom!=#FFFFFF && loc.x > 371 && loc.x < 428 && loc.y == 103) {
      roomY--;
      loc = new PVector (width/2, 497);
      cleanUp();
    }

    if (eastRoom!=#FFFFFF && loc.y > 262 && loc.y < 327 && loc.x == 687) {

      roomX++;
      loc = new PVector (113, height/2);
      cleanUp();
    }

    if (southRoom!=#FFFFFF && loc.x > 375 && loc.x < 432 && loc.y == 496) {
      roomY++;
      loc = new PVector (width/2, 103);
      cleanUp();
    }

    if (westRoom!=#FFFFFF && loc.y > 270 && loc.y < 328 && loc.x == 112) {
      roomX--;
      loc = new PVector (687, height/2);
      cleanUp();
    }
    myWeapon.update();
    if (spacekey) myWeapon.shoot();

    if (hp <=0) {
      mode = GAMEOVER;
    }
    if (hp > hpMAX) hp = hpMAX;
  }

  void cleanUp() {
    int i = 0;
    while (i < myObjects.size()) {
      GameObjects obj =  myObjects.get(i);
      if ( obj instanceof Bullet || obj instanceof Message) {
        if (!inRoomWith(obj)) {
          myObjects.remove(i);
          i--;
        }
      }
      i++;
    }
  }
}
