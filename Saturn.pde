class Saturn {
  private PVector position;
  private float radius;
  private PImage saturn;
  private PFont neuropol;

  Saturn() {
    neuropol = createFont("Neuropol.otf", 40);
    radius = 0;
    position = new PVector(width/2, height/2);
    saturn = loadImage("saturn.png");
  }

  void drawSaturn(float radius, float x, float y) {
    position.x = x;
    position.y = y;
    imageMode(CENTER);
    image(saturn, position.x, position.y, radius, radius);
  }

  void titlePageSaturn() {
    textAlign(CENTER);
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(50);
    text("SATURN", width/2, 60, 50);
  }
}
