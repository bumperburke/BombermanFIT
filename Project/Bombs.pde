class Bombs
{
  PVector position;
  PVector centre;
  int cellWidth = 50;
  int cellHeight = 50;
  int fuse = 3000;
  int time = millis();
  int passedTime;

  Bombs(float posx, float posy)
  {
    position = new PVector(posx, posy);
    centre = new PVector(posx + 20, posy + 20);
  }

  void setup()
  {
    //time = millis();
  }

  void draw()
  {
    pushMatrix();
    translate(position.x, position.y);
    //noFill();
    //stroke(0);
    //strokeWeight(2);
    //rect(0, 0, 40, 40);
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(1);
    rect(12, 3, 5, 7);//Mouth Piece
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(1);
    ellipse(20, 10, 13, 10);//cap
    fill(220);
    stroke(0);
    strokeWeight(1);
    rect(12, 13, 14, 23);//Base
    fill(255, 0, 0);
    stroke(0);
    strokeWeight(1);
    rect(10, 10, 18, 5);//
    popMatrix();
  }
//Was planning on only allowing plants at the centre of each square
//  void allowPlantVerticle()
//  {
//    for (int i = 75; i < 775; i += 50)
//    {
//      if (px + 20 == i)
//      {
//        plantVerticle = true;
//        return;
//      }
//
//      else
//      {
//        plantVerticle = false;
//        println(px, py);
//      }
//    }
//  }
//
//  void allowPlantHorizontal()
//  {
//    for (int i = 125; i < 725; i += 50)
//    {
//      if (py + 20 == i)
//      {
//        plantHorizontal = true;
//        return;
//      }
//
//      else
//      {
//        plantHorizontal = false;
//      }
//    }
//  }

  void explode()
  {
    passedTime = millis();
    if (drop == true && passedTime - fuse > time)//check that the bomb is dropped and then check that the timer is passed before allowing explosion
    {
      explosion = true;
    }
  }
}

//© Stefan Burke DT228 Dublin Institute of Technology

