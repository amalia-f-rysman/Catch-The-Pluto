class Jupiter {
  private PVector position;
  private float radius;
  private PImage jupiter;
  private PFont neuropol;

  Jupiter() {
    neuropol = createFont("Neuropol.otf", 40);
    radius = 0;
    position = new PVector(width/2, height/2);
    jupiter = loadImage("jupiter.png");
  }

  void drawJupiter(float radius, float x, float y) {
    position.x = x;
    position.y = y;
    imageMode(CENTER);
    image(jupiter, position.x, position.y, radius, radius);
  }

  void titlePageJupiter() {
    textAlign(CENTER);
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(50);
    text("JUPITER", width/2, 60, 50);
  }

  void info() {
  }
}
