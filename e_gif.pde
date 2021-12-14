class AnimatedGif {

  int numFrames;
  PImage[] gif;
  int frame;
  int rate;


  AnimatedGif(int nf, int r,  String before, String after) {

    numFrames = nf;
    gif = new PImage [numFrames];
    frame = 0;
    rate = r;

    while (frame < numFrames) {
      gif[frame] = loadImage(before +frame+ after);
   
     frame++;
    }
  }

  void show() {
    if (frame >= numFrames) frame = 0;
    image(gif[frame], 0, 0, width, height);
     if (frameCount % rate == 0) frame++;
 //   frame++;
  }

  void show(float x, float y, float w, float h) {
    if (frame >= numFrames) frame = 0;
    image(gif[frame], x, y, w, h);
    if (frameCount % rate == 0) frame++;
   // frame++;
  }
}
