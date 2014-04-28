import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

Menu menu;
Minim minim;
AudioPlayer sou;
AudioPlayer playExplosion;
Map map;
Sprite sprite;
Block[] blocks;
RemoveableWall[] removeableWalls;
Bombs[] bombs;
Header header;
Enemy1 enemies;
PVector spriteHit = new PVector();
PVector blockHit = new PVector();
float px, py;
Boolean moveVerticle = true;
Boolean moveHorizontal = true;
Boolean moveVerticleEnemy = true;
Boolean moveHorizontalEnemy = true;
Boolean plantVerticle = true;
Boolean plantHorizontal = true;
Boolean drop = false;
Boolean explosion = false;
Boolean DrawMe = true;
Boolean checkWall = false;
Boolean stop = false;
int plants = 1;
int walls = 36;
ArrayList wallIndex = new ArrayList();
PImage solids;
PImage wood;
PImage logoMain;
float posy = 100;
float posx;
int modnum = -1;
int score = 0;

void setup()
{
  size(750, 700);
  smooth();
  background(255);
  menu = new Menu();
  menu.setup();
  minim = new Minim(this);
  MainMusic();
  map = new Map();
  map.setup();
  sprite = new Sprite();
  blocks = new Block[6];
  solids = loadImage("solids.jpg");
  removeableWalls = new RemoveableWall[walls];
  for (int i = 0; i < walls; i++) //Layed out an array of 36 blocks which is the the whole main area
  {
    if (i % 6 == 0) //if the modulus of i is = equal to zero increment modnum by 1
    {
      modnum++;
    }
    if (i>5 && i<12 || i>23 && i<30) //if i is within the set of blocks specified then set posx and posy to the co-ordinates specified
    {
      posy = 100 + (100 * modnum);
      posx = 100 + (100 * (i%6));
    }
    else if (i>11 && i<18 || i>29)
    {
      posy = 100 + (100*modnum);
      posx = 50 + (100 * (i%6));
    }
    else
    { 
      posy = 100 + (100*modnum);
      posx = 150 + (100 * (i%6));
    }
    removeableWalls[i] = new RemoveableWall(posx, posy);
    //println(i, posx, i%3, posy, i%6);
  }
  wood = loadImage("wood.jpeg");
  enemies = new Enemy1(455, 455);
  bombs = new Bombs[plants];
  playExplosion = minim.loadFile("explosion.mp3");
  header = new Header();
  header.setup();
}

void draw()
{
  score=0;
  for (int scorechk = 0; scorechk<36; scorechk++)
  {
    if (removeableWalls[scorechk].DrawMe==false) //checking that if a wall is set to false ie. blown up, then update points tally
    {
      score+=100; //was having problems with this will explain below*
    }
  }
  if (menu.game == false)
  {
    menu.logo();
    menu.instructions();
  }

  else if (menu.game == true)
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
    for (int i = 0; i < walls; i++)
    {
      if (removeableWalls[i].DrawMe == true)
      {
        if (drop == true)
        {
          if ((PVector.dist(removeableWalls[i].hitWall, bombs[0].centre) < 100))//check that the distance from the centre of the bomb and centre of the wooden block is less than 100
          {
            wallIndex.add(i);//add the affected wall/walls to the list
            //* i was trying to increment score here as the wall was removed but it would keep going through the loop as drop could not be reset
            // because it is required to re-plant so had to change it to the code at the begining of draw method
          }
        }
        removeableWalls[i].draw();
        removeableWalls[i].detection();
      }
    }

    for (int i = 0; i < plants; i++)
    {
      if (drop == true)
      {
        bombs[i].draw();
        bombs[i].setup();
        bombs[i].explode();
        checkWall = true;
        //println(bombs[i].time, bombs[i].fuse, bombs[i].passedTime, explosion);
        if ( explosion == true)
        {
          for ( int k = 0; k < wallIndex.size(); k++)//traverse through list
          {
            int x = (Integer) wallIndex.get(k);//retrieve the element in the array list at position k and return an integer into the value x
            removeableWalls[x].DrawMe = false;//set the element of the removeableWalls array to false to remove them from screen
          }
          explosion = false;
          drop = false;
          playExplosion.play();
          playExplosion.rewind();
        }
      }
    }
    sprite.draw();
    sprite.checkVerticle();
    sprite.checkHorizontal();
    //for (int i = 0; i < 4; i ++)
    //{
    enemies.draw();
    enemies.checkVerticle();
    enemies.checkHorizontal();
    //enemies.moveLeft();
    //enemies.moveRight();
    //enemies.moveUp();
    //enemies.moveDown();
    //}
    header.draw();
    header.logo();
    header.score();
    header.lives();
    header.time();
  }
}

void keyPressed()
{
  if (keyCode == ENTER)
  {
    menu.game = true;
  }
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
  if (keyCode == 's' || keyCode == 'S')
  {
    for (int i = 0; i < plants; i++)
    {
      bombs[i] = new Bombs(sprite.position.x, sprite.position.y);
      drop = true;
    }
  }
}

void MainMusic()
{
  sou = minim.loadFile("BombermanMain.mp3");
  sou.loop();
}

//© Stefan Burke DT228 Dublin Institute of Technology

