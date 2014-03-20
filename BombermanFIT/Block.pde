class Block
{
  int blockHeight = 50;
  int blockLenght = 50;
  PVector position = new PVector(100, 150);
 
  void draw()
  {
    pushMatrix();
    translate(position.x, position.y);
    strokeWeight(1);
    fill(70);
    rect(0, 0, blockLenght, blockHeight);
    popMatrix();
  }
}
