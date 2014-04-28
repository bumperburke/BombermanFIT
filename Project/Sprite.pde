class Sprite
{
  PVector position;
  PVector centre;
  float speed = 5.0f;
  
  Sprite()
  {
     position = new PVector(55, 105); 
     centre = new PVector(position.x + 20, position.y + 20);
  }

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

  void checkVerticle()//this helped me overcome a huge obstacle
  {
    for (int i = 75; i < 775; i += 100)//this makes sure the sprite is on a track and can only move down if it is at a gap where it can move verticle
    {
      if (sprite.position.x + 20 == i) //change the position from the top corner to the centre. should have used RECTMODE(CENTER) from start
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

  void checkHorizontal()//same principle as moveVerticle
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
    if (position.x <= map.cellWidth + 5)//if the sprite hits the very left wall do nothing. thus stopping him from leaving map
    {
    }

    else if (moveHorizontal == true)
    {
      position.x -= speed;
    }
  }

  void moveRight()
  {
    if (position.x > width - 100)//same as move left first if except for far right wall
    {
    }
    
    else if (moveHorizontal == true)
    {
      position.x += speed;
    }
  }

  void moveUp()
  {
    if (position.y < 110)//detection for top wall
    {
    }
    else if (moveVerticle == true)
    {
      position.y -= speed;
    }
  }

  void moveDown()
  {
    if (position.y > height - map.cellHeight - 50)//detection for bottom wall
    {
    }
    else if (moveVerticle == true)
    {
      position.y += speed;
    }
  }
}

//© Stefan Burke DT228 Dublin Institute of Technology

