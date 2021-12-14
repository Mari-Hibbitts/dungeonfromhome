class Button {

  int x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text;
  PFont font;

  Button(PFont _font, String t, int _x, int _y, int _w, int _h, color norm, color high) {
   font = _font;
    x = _x;
    y = _y;
    w = _w;
    h = _h;
    text = t;
    highlight = high;
    normal = norm;
    clicked = false;
    
iFont = createFont("OldLondon.ttf", 50);
  yFont = createFont("yFont.otf", 50);

  }

  void show() {
    //rectangle
    rectMode(CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(highlight);
      stroke(normal);
    } else {
      fill(normal);
      stroke(highlight);
    }

    strokeWeight(4);
    rect(x, y, w, h);

    //text label
    textAlign(CENTER, CENTER);
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      fill(normal);
    } else {
      fill(highlight);
    }
    textSize(w);
    textFont(font);
    text(text, x, y-5);

    if (mouseReleased && mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      clicked  = true;
    } else {
      clicked = false;
    }
  }
}
