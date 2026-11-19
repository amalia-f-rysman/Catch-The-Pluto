class Mercury {
  private PVector position;
  private float radius;
  private PImage mercury;
  private PFont neuropol;

  Mercury() {
    neuropol = createFont("Neuropol.otf", 40);
    radius = 0;
    position = new PVector(width/2, height/2);
    mercury = loadImage("mercury.png");
  }

  void drawMercury(float radius, float x, float y) {
    position.x = x;
    position.y = y;
    imageMode(CENTER);
    image(mercury, position.x, position.y, radius, radius);
  }

  void titlePageMercury() {
    textAlign(CENTER);
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(50);
    text("MERCURY", width/2, 60, 50);
  }
}
