class Mars {
  private PVector position;
  private float radius;
  private PImage mars;
  private PFont neuropol;

  Mars() {
    neuropol = createFont("Neuropol.otf", 40);
    radius = 0;
    position = new PVector(width/2, height/2);
    mars = loadImage("mars.png");
  }

  void drawMars(float radius, float x, float y) {
    position.x = x;
    position.y = y;
    imageMode(CENTER);
    image(mars, position.x, position.y, radius, radius);
  }

  void titlePageMars() {
    textAlign(CENTER);
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(50);
    text("MARS", width/2, 60, 50);
  }
}
