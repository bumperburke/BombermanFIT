class Menu
{
  boolean game = false;
  PImage logoMain;
  PFont font;

  void setup()
  {
    background(70);
    logoMain = loadImage("headPic.jpg");
    font = loadFont("ComicSansMS-Bold-48.vlw");
  }

  void logo()
  {
    image(logoMain, 180, 10, 400, 400);
  }

  void instructions()
  {
    fill(255);
    textFont(font, 20);
    text("Welcome to Bomberman FIT. The re-creation of a classic.", 100, 420);
    text("Instructions are as follows:", 10, 450);
    text("The aim is to blow up the wooden walls and the enemies.", 10, 480); 
    text("You will gain points for enemies killed.", 10, 510);
    text("When all enemies are killed you will move onto the next level.", 10, 540);
    text("- Use the arrow keys to move Bomberman.", 10, 580);
    text("- Press S to plant a bomb.", 10, 620);
    text("- Press Enter to play. Enjoy :)", 10, 660);
    text("©Stefan Burke DT228 Dublin Institute of Technology", 240, 695);
  }
}

//© Stefan Burke DT228 Dublin Institute of Technology

