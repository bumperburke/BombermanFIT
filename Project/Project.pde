Map map;
Sprite sprite;
Block[] blocks;
PVector spriteHit = new PVector();
PVector blockHit = new PVector();
int px, py;
Boolean moveVerticle = true;
Boolean moveHorizontal = true;
PImage solids;

void setup()
{
  size(750, 700);
  background(255);
  map = new Map();
  map.setup();
  sprite = new Sprite();
  blocks = new Block[6];
  solids = loadImage("solids.jpg");
}

void draw()
{
  map.draw();
  map.grass();
  map.border();
  for (int i = 0; i < 5; i++)
  {
    for (int j = 0; j < 6; j++)
    {
      px = map.cellWidth*2*(j+1);
      py = 50+100*(i+1);
      blocks[j] = new Block(px, py);
      blocks[j].draw();
    }
  }
  sprite.draw();
  println(moveHorizontal, moveVerticle);
  sprite.checkVerticle();
  sprite.checkHorizontal();
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

//© Stefan Burke DT228 Dublin Institute of Technology
