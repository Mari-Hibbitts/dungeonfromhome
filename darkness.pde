class Darkness {
  float opacity;
  float x, y, s;
  float distance;

  Darkness(float _x, float _y, float _s) {
    s = _s;
    x = _x;
    y = _y;
    opacity = 255;
  }

  void show() {
    distance = dist(x, y, myHero.loc.x, myHero.loc.y);
    opacity = map(distance, 0, 600, 0, 255);
    noStroke();
    fill(0, opacity);
    square(x, y, s);
  }
}
