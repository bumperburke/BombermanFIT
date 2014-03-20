class Sprite
{
  PVector position = new PVector(55, 105);
  float speed = 5.0f;
  
  void draw()
  {
    pushMatrix();
    translate(position.x, position.y);
    noFill();
    strokeWeight(2);
    rect(0, 0, 40, 40);
    fill(255,178,102);
    strokeWeight(1);
    rect(15,20,10,10);//Bottom
    fill(255,178,102);
    strokeWeight(1);
    triangle(10,10,30,10,20,30);//Body
    fill(0);
    strokeWeight(1);
    triangle(15,23,24,23,20,30);//Trunks
    fill(255,178,102);
    strokeWeight(1);
    ellipse(20, 7, 10, 10);//Head
    
    fill(255,178,102);
    strokeWeight(1);
    ellipse(8,13,12,6);//Arm L
    fill(255,178,102);
    strokeWeight(1);
    ellipse(32,13,12,6);//Arm R
    fill(255,178,102);
    strokeWeight(1);
    ellipse(3,8,5,10);//Forearm L
    fill(255,178,102);
    strokeWeight(1);
    ellipse(37,8,5,10);//Forearm R
    fill(255,178,102);
    strokeWeight(1);
    ellipse(8,11,8,3);//Bi L
    fill(255,178,102);
    strokeWeight(1);
    ellipse(32,11,8,3);//Bi R
    fill(255,178,102);
    strokeWeight(1);
    ellipse(7,4,8,5);//Hand L
    fill(255,178,102);
    strokeWeight(1);
    ellipse(33,4,8,5);//Hand R
    fill(255,178,102);
    strokeWeight(1);
    ellipse(16,33,5,10);//Leg L
    fill(255,178,102);
    strokeWeight(1);
    ellipse(24,33,5,10);//Leg R
    popMatrix();
  }
  
  void moveLeft()
  {
    if(position.x <= map.cellWidth + 5)
    {
      
    }
    else
    {
      position.x -= speed;
    }
  }
  void moveRight()
  {
    if(position.x > width - 100)
    {
      
    }
    else
    {
      position.x += speed;
    }
  }
  void moveUp()
  {
    if(position.y < 110)
    {
      
    }
    else
    {
      position.y -= speed;
    }
  }
  void moveDown()
  {
    if(position.y > height - map.cellHeight - 50)
    {
      
    }
    else
    {
      position.y += speed;
    }
  }
}
