class RemoveableWall extends Block
{
  Boolean DrawMe = true;
  PVector hitWall;

  RemoveableWall(float posx, float posy)
  {
    super(posx, posy);
    position = new PVector(posx, posy);
    DrawMe = true;
    hitWall = new PVector(posx + 25, posy + 25);
  }

  void draw()
  {
    image(wood, position.x, position.y, blockLenght, blockHeight);
  }

  void detection()
  {
    //println(sprite.position.x);
    if (sprite.position.x + 20 > position.x + 25)// && sprite.position.x + 20 < position.x + 25 && sprite.position.y + 20 > position.y + 25)// && sprite.position.y + 20 < position.y + 25)
    {
      //println("HIT");
    }
  }
}

//© Stefan Burke DT228 Dublin Institute of Technology

