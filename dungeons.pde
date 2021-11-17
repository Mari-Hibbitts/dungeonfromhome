//Marika H

//buttons
boolean mouseReleased;
boolean hadPressed;
Button introButton;
Button storyButton;
Button returnButton;


// ====================== colors 
color green  = #31710D;
color red    = #BF1D1D;
color black  = #000000;
color white  = #FFFFFF;
color northRoom, eastRoom, southRoom, westRoom;

//======================================= mode framework and controls

int mode;
final int INTRO = 0;
final int STORYINTRO = 1;
final int MOUSE = 2;
final int GAME = 3;
final int PAUSE = 4;
final int GAMEOVER = 5;
boolean wkey, skey, akey, dkey, spacekey, select, pause, mapkey;

// =============================== objects
ArrayList<GameObjects> myObjects;
Hero myHero;
ArrayList<Darkness> darkness;


//========================= gifs and images
AnimatedGif Giff;
PImage room;
PImage floor;
PImage card1;
PImage card2;
PImage card3;
PImage card4;
int cardTime = 0;
PImage map;
PImage doorN;
PImage doorE; 
PImage doorS;
PImage doorW;

//fonts ================
PFont iFont;


void setup() {
  mode = GAME;
  size(800, 600, FX2D);
  Giff = new AnimatedGif(247, "gif1/frame_", "_delay-0.04s.png" );

  //============================= buttons
  introButton  = new Button(iFont, "Begin", 400, 530, 300, 100, black, white);
  storyButton  = new Button(iFont, "Enter", 400, 530, 300, 100, black, white);
  returnButton  = new Button(iFont, "RETURN", 400, 530, 300, 100, black, white);

  // ==================== fonts and images
  iFont = createFont("OldLondon.ttf", 100);
  room = loadImage("room.png");
  floor = loadImage("floor.png");
  card1 = loadImage("card1.png");
  card2 = loadImage("card2.png");
  card3 = loadImage("card3.png");
  card4 = loadImage("card4.png");
  map = loadImage("map.png");
  doorN = loadImage("doorN.png");
  doorE = loadImage("doorE.png");
  doorS = loadImage("doorS.png");
  doorW = loadImage("doorW.png");


  //================= objects
  myHero = new Hero();
  myObjects = new ArrayList<GameObjects>();
  myObjects.add(myHero);
  myObjects.add (new Enemy(20, 420));
  myObjects.add(new Follower (150, 1, 2, width/2, height/2));
  myObjects.add(new Lurker(2, 1, width/2, height/2));
  myObjects.add(new Spawner(1, 3));

  //darkness
  darkness = new ArrayList<Darkness>();
  int s = 5;
  int x = 0, y = 0;
  while (y < height) {
    darkness.add(new Darkness(x, y, s));
    x = x + 5;
    if (x >= width) {
      x = 0;
      y = y + 5;
    }
  }
}

void draw() {

  //button

  if (mousePressed) hadPressed = true;
  else if (hadPressed && !mousePressed) {
    mouseReleased = true;
    hadPressed = false;
  } else if (mouseReleased) mouseReleased = false;

  if (introButton.clicked) {
    mode = STORYINTRO;
  }
  if (storyButton.clicked) {
    mode = GAME;
  }




  //============================================= mode framework
  if (mode == INTRO) {
    intro();
  } else if (mode == MOUSE) {
    mousePressed();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == STORYINTRO) {
    storyIntro();
  } else {
    println("Error: Mode = " + mode);
  }
}
