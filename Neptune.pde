class Neptune {
  private PVector position;
  private float radius;
  private PImage neptune;
  private PFont neuropol;

  Neptune() {
    neuropol = createFont("Neuropol.otf", 40);
    radius = 0;
    position = new PVector(width/2, height/2);
    neptune = loadImage("neptune.png");
  }

  void drawNeptune(float radius, float x, float y) {
    position.x = x;
    position.y = y;
    imageMode(CENTER);
    image(neptune, position.x, position.y, radius, radius);
  }

  void titlePageNeptune() {
    textAlign(CENTER);
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(50);
    text("NEPTUNE", width/2, 60, 50);
  }
}
