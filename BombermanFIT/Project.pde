Map map;
Sprite sprite;
Block[] blocksR1 = new Block[6];
Block[] blocksR2 = new Block[6];
Block[] blocksR3 = new Block[6];
Block[] blocksR4 = new Block[6];
Block[] blocksR5 = new Block[6];

void setup()
{
  size(750, 700);
  background(255);
  map = new Map();
  map.setup();
  sprite = new Sprite();
  //Unbreakable Blocks 
  //First Row
  for(int i = 0; i < 6; i++)
  {
    blocksR1[i] = new Block();
  }
  for(int i = 0; i < 6; i++)
  {
    blocksR1[i].position.x = map.cellWidth*2*(i+1);
    blocksR1[i].position.y = 150;
  }

  //Second Row
  for(int i = 0; i < 6; i++)
  {
    blocksR2[i] = new Block();
  }
  for(int i = 0; i < 6; i++)
  {
    blocksR2[i].position.x = map.cellWidth*2*(i+1);
    blocksR2[i].position.y += map.cellHeight*2;
  }
  
  //Third Row
  for(int i = 0; i < 6; i++)
  {
    blocksR3[i] = new Block();
  }
  for(int i = 0; i < 6; i++)
  {
    blocksR3[i].position.x = map.cellWidth*2*(i+1);
    blocksR3[i].position.y += map.cellHeight*4;
  }
  
  //Fourth Row
  for(int i = 0; i < 6; i++)
  {
    blocksR4[i] = new Block();
  }
  for(int i = 0; i < 6; i++)
  {
    blocksR4[i].position.x = map.cellWidth*2*(i+1);
    blocksR4[i].position.y += map.cellHeight*6;
  }
  
  //Fifth Row
  for(int i = 0; i < 6; i++)
  {
    blocksR5[i] = new Block();
  }
  for(int i = 0; i < 6; i++)
  {
    blocksR5[i].position.x = map.cellWidth*2*(i+1);
    blocksR5[i].position.y += map.cellHeight*8;
  }
  
}

void draw()
{
  map.draw();
  map.grass();
  map.border();
  //map.fillBounds();
  sprite.draw();
  for(int i = 0; i < 6; i++)
  {
    blocksR1[i].draw();
    blocksR2[i].draw();
    blocksR3[i].draw();
    blocksR4[i].draw();
    blocksR5[i].draw();
  }
}

void keyPressed()
{
  if (keyCode == LEFT)
  {
    sprite.moveLeft();
  }
  if (keyCode == RIGHT)
  {
    sprite.moveRight();
  }
  if (keyCode == UP)
  {
    sprite.moveUp();
  }
  if (keyCode == DOWN)
  {
    sprite.moveDown();
  }
}
