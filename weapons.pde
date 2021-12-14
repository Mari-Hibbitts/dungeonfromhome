class Rifle extends Weapon {

  Rifle() {
    super(100, 365);
  }
}

class AutoPistol extends Weapon {

  AutoPistol() {
    super(10, 10);
  }
}

class ShotGun extends Weapon {

  ShotGun() {
    super(SHOTGUN_THRESHOLD, SHOTGUN_BULLETSPEED);
  }
  void shoot() {
    if (shotTimer >= threshold) {
      for (int i = 0; i < 30; i++) {
        PVector aimVector =new PVector (mouseX - myHero.loc.x, mouseY-myHero.loc.y);
        aimVector.rotate (random(-PI, PI));
        aimVector.setMag(bulletSpeed);
        myObjects.add(new Bullet (aimVector, black, 10, rock));
      }
      shotTimer = 0;
    }
  }
}
