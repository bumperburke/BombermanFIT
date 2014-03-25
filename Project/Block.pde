class Block
{
  int blockHeight = 50;
  int blockLenght = 50;
  PVector position;

  Block(int posx, int posy)
  {
    position = new PVector(px, py);
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

