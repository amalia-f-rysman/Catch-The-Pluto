//catch the plutos in the given time limit

class Pluto {
  private PVector position;
  private PVector velocity;
  private float radius;
  private PImage pluto;
  private float rotation;

  
  Pluto() {
    rotation = 0;
    radius = 0;
    position = new PVector(random(10, width-10), random(-100, 0));
    pluto = loadImage("pluto.png");
    velocity = new PVector(0, 0);
  }

//drops pluto and spins it!
  void dropPluto() {
    velocity.y = 4;
    position.add(velocity);
    
    rotation += 0.05;
    //assert rotation < 10;
  }

//draws plutos
  void drawPluto(float radius) {

    imageMode(CENTER);
    pushMatrix();

    translate(position.x, position.y);
    rotate(rotation);

    image(pluto, 0, 0, radius, radius);

    popMatrix();
  }

  void update() {
    if (position.y > height) {
      position.y = random(-100, 0);
    }
    //assert position.y > -101;
    //assert position.y < 1;
  }
//getters and setters
  float getPosx() {
    return position.x;
  }
  float getPosy() {
    return position.y;
  }
  
//sets x,y for can interaction
  void setPos(float x, float y) {
    if (position.x > 0 && position.y > 0) {
      position.x = x;
      position.y = y;
    }
  }
}
