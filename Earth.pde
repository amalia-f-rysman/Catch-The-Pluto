class Earth {
  
  //all the planets are created in the same way except for pluto so im only commenting this one
  private PVector position;
  private float radius;
  private PImage earth;
  private PFont neuropol;
  
  Earth() {
    neuropol = createFont("Neuropol.otf", 40);
    radius = 0;
    position = new PVector(width/2, height/2);
    earth = loadImage("earth.png");
  }

//draws the earth with a input for a radius, and x, y
  void drawEarth(float radius, float x, float y) {
    position.x = x;
    position.y = y;

    imageMode(CENTER);
    image(earth, position.x, position.y, radius, radius);
  }

//displays the title
  void titleEarth() {
    textAlign(CENTER);
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(50);
    text("EARTH", width/2, 60, 50);
  }
}
