class Header
{
  PImage logo;
  PFont font;
  int livesLeft = 5;
  int time;
  int mins;
  int secs;
  int timeLimit = 5; 

  void setup()
  {
    logo = loadImage("headPic.jpg");
    font = loadFont("ForteMT-48.vlw");
  }

  void logo()
  {
    image(logo, width/2-80, 0, 150, 50);
  }

  void score()
  {
    fill(255);
    textFont(font, 30);
    //textSize(20);
    text("Score: " + score, 10, 35);
  }

  void lives()
  {
    fill(255);
    textFont(font, 30);
    //textSize(20);
    text("Lives: " + livesLeft, 450, 35);
  }

  void time()
  {
    fill(255);
    textFont(font, 30);
    //textSize(20);
    time = (timeLimit*60*1000) - millis();
    mins = (time / (60 * 1000));
    secs = (time / (1000));
    text("Time: " + mins + ":" + secs, 600, 35);
  }

  void draw()
  {
    fill(70);
    rect(0, 0, width, 50);
  }
}

//© Stefan Burke DT228 Dublin Institute of Technology

