class Block
{
  int blockHeight = 50;
  int blockLenght = 50;
  PVector position;

  Block(float posx, float posy)
  {
    position = new PVector(posx, posy);
  }

  void draw()
  {
    //translate(posx, posy);
    strokeWeight(1);
    fill(70);
    rect(position.x, position.y, blockLenght, blockHeight);
    image(solids, position.x, position.y, blockLenght, blockHeight);
  }
}

//© Stefan Burke DT228 Dublin Institute of Technology

