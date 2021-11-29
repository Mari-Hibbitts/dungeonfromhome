class AnimatedGif {

  int numFrames;
  PImage[] gif;
  int frame;



  AnimatedGif(int nf, String before, String after) {

    numFrames = nf;
    gif = new PImage [numFrames];
    frame = 0;

    while (frame < numFrames) {
      gif[frame] = loadImage(before +frame+ after);
      frame++;
    }
  }

  void show() {
    if (frame >= numFrames) frame = 0;
    image(gif[frame], 0, 0, width, height);
    frame++;
  }

  void show(float x, float y, float w, float h) {
    if (frame >= numFrames) frame = 0;
    image(gif[frame], x, y, w, h);
    frame++;
  }
}
