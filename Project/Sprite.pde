class Sprite
{
  PVector position = new PVector(55, 105);
  float speed = 5.0f;

  void draw()
  {
    pushMatrix();
    translate(position.x, position.y);
    //noFill();
    //noStroke();
    //strokeWeight(2);
    //rect(0, 0, 40, 40);
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    rect(15, 20, 10, 10);//Bottom
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    triangle(10, 10, 30, 10, 20, 30);//Body
    fill(0);
    stroke(0);
    strokeWeight(1);
    triangle(15, 23, 24, 23, 20, 30);//Trunks
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(20, 7, 10, 10);//Head
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(8, 13, 12, 6);//Arm L
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(32, 13, 12, 6);//Arm R
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(3, 8, 5, 10);//Forearm L
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(37, 8, 5, 10);//Forearm R
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(8, 11, 8, 3);//Bi L
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(32, 11, 8, 3);//Bi R
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(7, 4, 8, 5);//Hand L
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(33, 4, 8, 5);//Hand R
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(16, 33, 5, 10);//Leg L
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(24, 33, 5, 10);//Leg R
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(27, 39, 8, 5);//Foot L
    fill(255, 178, 102);
    stroke(0);
    strokeWeight(1);
    ellipse(13, 39, 8, 5);//Foot R
    //Face
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(18, 6, 1, 1);//Eye L
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(22, 6, 1, 1);//Eye R
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(20, 8, 1, 1);//Nose
    popMatrix();
  }

  void checkVerticle()
  {
    for (int i = 75; i < 775; i += 100)
    {
      if (sprite.position.x + 20 == i)
      {
        moveVerticle = true;
        return;
      }

      else
      {
        moveVerticle = false;
      }
    }
  }

  void checkHorizontal()
  {
    for (int i = 125; i < 725; i += 100)
    {
      if (sprite.position.y + 20 == i)
      {
        moveHorizontal = true;
        return;
      }

      else
      {
        moveHorizontal = false;
      }
    }
  }


  void moveLeft()
  {
    if (position.x <= map.cellWidth + 5)
    {
    }

    else if (moveHorizontal == true)
    {
      position.x -= speed;
    }
  }

  void moveRight()
  {
    if (position.x > width - 100)
    {
    }
    else if (moveHorizontal == true)
    {
      position.x += speed;
    }
  }

  void moveUp()
  {
    if (position.y < 110)
    {
    }
    else if (moveVerticle == true)
    {
      position.y -= speed;
    }
  }

  void moveDown()
  {
    if (position.y > height - map.cellHeight - 50)
    {
    }
    else if (moveVerticle == true)
    {
      position.y += speed;
    }
  }
}

//© Stefan Burke DT228 Dublin Institute of Technology
