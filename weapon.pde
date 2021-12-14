class Weapon {

  int shotTimer;
  int threshold;
  int bulletSpeed;

  Weapon() {
    shotTimer = 0;
    threshold = 30;
    bulletSpeed = 5;
  }

  Weapon (int _threshold, int _bulletSpeed) {
    shotTimer = 0;
    threshold = _threshold;
    bulletSpeed = _bulletSpeed;
  }

  void update() {
    shotTimer++;
  }

  void shoot() {
    if (shotTimer >= threshold) {
      PVector aimVector = new PVector (mouseX-myHero.loc.x, mouseY-myHero.loc.y);
      aimVector.setMag(bulletSpeed);
      myObjects.add(new Bullet(aimVector, red, 40, rock));
      shotTimer = 0;
    }
  }
}
