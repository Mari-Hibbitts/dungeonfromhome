void storyIntro() {

  cardTime++;

  if (cardTime == 1) {
    image(card1, 0, 0, width, height);
    fill(255);
    textSize(50);
    textAlign(CORNER, CORNER);
    text("In a faraway castle,\n down in the dungeons...", 50, 100);
  }

  if (cardTime == 400) {
    image(card2, 0, 0, width, height);
    text("Rats and bugs make their homes", 200, 500);
  }

  if (cardTime == 800) {
    image(card4, 0, 0, 800, 800);
    text("You've been hired to exterminate them.", 50, 100);
  }

  if (cardTime > 1200) {
    image(card3, 0, 0, 800, 800);
    textSize(50);
    textAlign(CORNER, CORNER);
    fill(255);
    text("Oh, and by the way, \nyour employers arent exactly...\n\n\n average.", 50, 100);
    storyButton.show();
  }
}
