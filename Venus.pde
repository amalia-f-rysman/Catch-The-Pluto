class Venus {
  private PVector position;
  private float radius;
  private PImage venus;

  Venus() {
    radius = 0;
    position = new PVector(width/2, height/2);
    venus = loadImage("venus.png");
  }

  void drawVenus(float radius, float x, float y) {
    position.x = x;
    position.y = y;
    imageMode(CENTER);
    image(venus, position.x, position.y, radius, radius);
  }

  void titlePageVenus() {
    textAlign(CENTER);
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(50);
    text("VENUS", width/2, 60, 50);
  }
}
