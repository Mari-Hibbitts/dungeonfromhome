class AnimatedGif{

  int numFrames;
  PImage[] gif;
  int frame;

  
AnimatedGif(int nf, String before, String after){

numFrames = nf;
gif = new PImage [numFrames];
frame = 0;
while (frame < numFrames){
gif[frame] = loadImage(before +frame+ after);
frame = frame + 1;
}


}

void show(){
  if (frame == numFrames) frame = 0;
image(gif[frame], 0, 0, width, height);
frame = frame + 1;

  
  
}


}
