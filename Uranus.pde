class Uranus {
  private PVector position;
  private float radius;
  private PImage uranus;
  private PFont neuropol;

  Uranus() {
    neuropol = createFont("Neuropol.otf", 40);
    radius = 0;
    position = new PVector(width/2, height/2);
    uranus = loadImage("uranus.png");
  }

  void drawUranus(float radius, float x, float y) {
    position.x = x;
    position.y = y;
    imageMode(CENTER);
    image(uranus, position.x, position.y, radius, radius);
  }

  void titlePageUranus() {
    textAlign(CENTER);
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(50);
    text("URANUS", width/2, 60, 50);
  }
}
