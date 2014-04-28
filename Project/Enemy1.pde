class Enemy1
{
  PVector position;
  float speed = 2.0f;

  Enemy1(float posx, float posy)
  {
    position = new PVector(posx, posy);
  }

  void draw()
  {
    pushMatrix();
    translate(position.x, position.y);
    noFill();
    stroke(0);
    strokeWeight(1);
    rect(0, 0, 40, 40);
    fill(255);
    stroke(0);
    strokeWeight(1);
    rect(18, 10, 5, 30); //Body
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(1);
    ellipse(20, 10, 20, 20); //Head
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(15, 10, 8, 5); //L eye
    fill(0);
    stroke(0);
    strokeWeight(1);
    ellipse(25, 10, 8, 5); //R eye
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(1);
    ellipse(15, 10, 4, 4); //L eye colour
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(1);
    ellipse(25, 10, 4, 4); //R eye colour
    popMatrix();
  }

  void checkVerticle()
  {
    for (int i = 425; i < 775; i += 100)
    {
      if (enemies.position.x + 20 == i)
      {
        moveVerticleEnemy = true;
        return;
      }

      else
      {
        moveVerticleEnemy = false;
      }
    }
  }

  void checkHorizontal()
  {
    for (int i = 425; i < 725; i += 100)
    {
      if (enemies.position.y + 20 == i)
      {
        moveHorizontalEnemy = true;
        return;
      }

      else
      {
        moveHorizontalEnemy = false;
      }
    }
  }

  void moveLeft()
  {
    if (position.x <= map.cellWidth + 5)
    {
      moveUp();
    }

    else //if (moveHorizontal == true)
    {
      position.x -= speed;
    }
  }
  void moveRight()
  {
    if (position.x > width - 100)
    {
      moveDown();
    }
    else //if (moveHorizontal == true)
    {
      position.x += speed;
    }
  }

  void moveUp()
  {
    if (position.y < 108)
    {
      moveRight();
    }
    else //if (moveVerticle == true)
    {
      position.y -= speed;
    }
  }

  void moveDown()
  {
    if (position.y > height - map.cellHeight - 50)
    {
      moveLeft();
    }
    else //if (moveVerticle == true)
    {
      position.y += speed;
    }
  }
}

//© Stefan Burke DT228 Dublin Institute of Technology

