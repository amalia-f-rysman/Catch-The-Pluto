class Can {
  private PVector position;

  Can() {
    position = new PVector(mouseX, height - 50);
  }

//draws can
  void drawCan() {
    fill(100);
    noStroke();
    rectMode(CENTER);
    rect(mouseX, position.y + 15, 50, 50);

    fill(150);
    noStroke();
    ellipseMode(CENTER);
    ellipse(mouseX, position.y - 10, 50, 10);
    fill(100);
    ellipse(mouseX, position.y + 40, 50, 10);
  }
  
//returns true if the inputs can fit the equation
  boolean getPos(float posx, float posy) {
    if (posx < mouseX + 25 && posx > mouseX - 25 && posy < position.y + 65 && posy > position.y) {
      return true;
    } else {
      return false;
    }
  }
}
