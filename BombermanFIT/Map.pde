class Map
{
  PImage grass;
  int[][] map;
  int cellWidth = 50;
  int cellHeight = 50;
  int boardWidth;
  int boardHeight;
  
  void setup()
  {
    boardWidth = width/cellWidth;
    boardHeight = height/cellHeight;
    map = new int[boardWidth][boardHeight];
    grass = loadImage("grass.gif");
  }
  
  void border()
  {
    //Top row
    for(int i = 0; i < boardWidth; i++)
    {
        int posx = i*cellHeight;
        int posy = cellWidth;
        fill(70);
        stroke(0);
        rect(posx, posy, cellWidth, cellHeight);
    }
     
    //Left column 
    for(int i = 0; i < boardWidth; i++)
    {
        int posx = 0;
        int posy = i*cellWidth + cellHeight;
        fill(70);
        stroke(0);
        rect(posx, posy, cellWidth, cellHeight);
    }
     
    //Bottom row 
    for(int i = 0; i < boardWidth; i++)
    {
       int posx = i*cellWidth;
       int posy = height-cellHeight;
       fill(70);
       stroke(0);
       rect(posx, posy, cellWidth, cellHeight);
    }
     
    //Right column 
    for(int i = 0; i < boardWidth; i++)
    {
        int posx = width-cellWidth;
        int posy = i*cellHeight + cellWidth;
        fill(70);
        stroke(0);
        rect(posx, posy, cellWidth, cellHeight);
    } 
  }
  
  
  void grass()
  {
    image(grass, cellWidth, cellHeight + 50 , width - 50, height - 50);
  }
  
  void draw()
  {
    for(int i = 0; i < boardWidth; i++)
    {
      for(int j = 0; j < boardHeight; j++)
      {
        int x = i*cellHeight;
        int y = j*cellWidth;
        stroke(0);
        fill(255);
        stroke(0);
        rect(x, y+ 50, cellWidth, cellHeight);
      }
    }
  }
}
