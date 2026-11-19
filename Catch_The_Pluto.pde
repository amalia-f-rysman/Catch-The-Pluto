int gameState = 1;

//imports fonts and background
PFont neuropol;
PImage space;
PImage plutoBackground;

//initializing main images of the planets
Earth E1;
Jupiter J1;
Mars M1;
Mercury ME1;
Neptune N1;
Saturn S1;
Uranus U1;
Venus V1;

int startTime;
boolean gameOver;

//intializing for pluto game
Can c1;
Pluto[] plutos;

float points = 0;

void setup() {
  size(500, 500);
  //intializes time
  startTime = millis();

  neuropol = createFont("Neuropol.otf", 40);
  plutoBackground = loadImage("plutos.jpg");
  space = loadImage("space2.jpg");

  E1 = new Earth();
  J1 = new Jupiter();
  M1 = new Mars();
  ME1 = new Mercury();
  N1 = new Neptune();
  S1 = new Saturn();
  U1 = new Uranus();
  V1 = new Venus();

  c1 = new Can();
  
  //object array
  plutos = new Pluto[10];
  for (int i = 0; i < plutos.length; i++) {
    plutos[i] = new Pluto();
  }
}

//holds all interaction with buttons based on state
void mouseClicked() {
  if (mouseX < 35 && mouseX > 5 && mouseY < 275 && mouseY > 225) {
    gameState--;
    if (gameState < 1) {
      gameState = 9;
    }

    if (gameState == 10) {
      gameState = 9;
    }
  }
  if (mouseX > 465 && mouseX < 495 && mouseY < 275 && mouseY > 225) {
    gameState++;
    if (gameState > 9) {
      gameState = 1;
    }

    if (gameState == 10) {
      gameState = 1;
    }
  }

  if (gameState == 9 && mouseX < width/2 + 75 && mouseX > width/2 - 75 && mouseY < height/2 + 35 && mouseY > height/2 - 35) {
    gameState++;
  }

  if (gameState == 10 && mouseX > width/2 - 50 && mouseX < width/2 + 50 && mouseY > height/2 + 75 && mouseY < height/2 + 125) {
    startGame();
  }
}

void draw() {
  background(255);
  image(space, width/2, height/2, width, height);
  //makes sure buttons are drawn visibly in everystate
  buttons();

//the planets are displayed in order from the sun, i was going to do fun facts but that
//ended up being too tedious
  if (gameState == 1) {
    ME1.drawMercury(250, width/2, height/2);
    ME1.titlePageMercury();

    ME1.drawMercury(50, 45, 450);
    V1.drawVenus(30, 105, 450);
    E1.drawEarth(30, 165, 450);
    M1.drawMars(30, 225, 450);
    J1.drawJupiter(30, 285, 450);
    S1.drawSaturn(30, 345, 450);
    U1.drawUranus(30, 405, 450);
    N1.drawNeptune(30, 465, 450);
    ;
  }

  if (gameState == 2) {
    V1.drawVenus(250, width/2, height/2);
    V1.titlePageVenus();

    ME1.drawMercury(30, 45, 450);
    V1.drawVenus(50, 105, 450);
    E1.drawEarth(30, 165, 450);
    M1.drawMars(30, 225, 450);
    J1.drawJupiter(30, 285, 450);
    S1.drawSaturn(30, 345, 450);
    U1.drawUranus(30, 405, 450);
    N1.drawNeptune(30, 465, 450);
  }

  if (gameState == 3) {

    E1.drawEarth(250, width/2, height/2);
    E1.titleEarth();

    ME1.drawMercury(30, 45, 450);
    V1.drawVenus(30, 105, 450);
    E1.drawEarth(50, 165, 450);
    M1.drawMars(30, 225, 450);
    J1.drawJupiter(30, 285, 450);
    S1.drawSaturn(30, 345, 450);
    U1.drawUranus(30, 405, 450);
    N1.drawNeptune(30, 465, 450);
  }

  if (gameState == 4) {

    M1.drawMars(250, width/2, height/2);
    M1.titlePageMars();

    ME1.drawMercury(30, 45, 450);
    V1.drawVenus(30, 105, 450);
    E1.drawEarth(30, 165, 450);
    M1.drawMars(50, 225, 450);
    J1.drawJupiter(30, 285, 450);
    S1.drawSaturn(30, 345, 450);
    U1.drawUranus(30, 405, 450);
    N1.drawNeptune(30, 465, 450);
  }

  if (gameState == 5) {

    J1.drawJupiter(250, width/2, height/2);
    J1.titlePageJupiter();

    ME1.drawMercury(30, 45, 450);
    V1.drawVenus(30, 105, 450);
    E1.drawEarth(30, 165, 450);
    M1.drawMars(30, 225, 450);
    J1.drawJupiter(50, 285, 450);
    S1.drawSaturn(30, 345, 450);
    U1.drawUranus(30, 405, 450);
    N1.drawNeptune(30, 465, 450);
  }

  if (gameState == 6) {
    S1.drawSaturn(300, width/2, height/2);
    S1.titlePageSaturn();

    ME1.drawMercury(30, 45, 450);
    V1.drawVenus(30, 105, 450);
    E1.drawEarth(30, 165, 450);
    M1.drawMars(30, 225, 450);
    J1.drawJupiter(30, 285, 450);
    S1.drawSaturn(50, 345, 450);
    U1.drawUranus(30, 405, 450);
    N1.drawNeptune(30, 465, 450);
  }

  if (gameState == 7) {
    U1.drawUranus(250, width/2, height/2);
    U1.titlePageUranus();

    ME1.drawMercury(30, 45, 450);
    V1.drawVenus(30, 105, 450);
    E1.drawEarth(30, 165, 450);
    M1.drawMars(30, 225, 450);
    J1.drawJupiter(30, 285, 450);
    S1.drawSaturn(30, 345, 450);
    U1.drawUranus(50, 405, 450);
    N1.drawNeptune(30, 465, 450);
  }

  if (gameState == 8) {

    N1.drawNeptune(250, width/2, height/2);
    N1.titlePageNeptune();

    ME1.drawMercury(30, 45, 450);
    V1.drawVenus(30, 105, 450);
    E1.drawEarth(30, 165, 450);
    M1.drawMars(30, 225, 450);
    J1.drawJupiter(30, 285, 450);
    S1.drawSaturn(30, 345, 450);
    U1.drawUranus(30, 405, 450);
    N1.drawNeptune(50, 465, 450);
  }

//gives the user a start button that is the only way to access state 10 which holds the game
  if (gameState == 9) {
    image(plutoBackground, width/2, height/2);
    plutoGameInfo();
    playGame();
    buttons();
  }

//holds/runs the game
  if (gameState == 10) {
    image(plutoBackground, width/2, height/2);
    gameRunning();
  }
}

//dispays using the array
void makePlutos() {
  for (int i = 0; i < plutos.length; i++) {
    plutos[i].drawPluto(20);
    plutos[i].dropPluto();
    plutos[i].update();
  }
}

//controls interaction between can and the plutos
void collectPultos() {
  for (int i = 0; i < plutos.length; i++) {
    if (c1.getPos(plutos[i].getPosx(), plutos[i].getPosy()) == true) {
      plutos[i].setPos(random(10, width - 10), random(-100, 0));
      points++;
    }
  }
}

//changes the state
void buttons() {
  fill(250);
  stroke(20);
  stroke(168, 176, 222);
  rectMode(CENTER);
  rect(20, 250, 30, 50);
  rect(480, 250, 30, 50);
  fill(168, 176, 222);
  triangle(10, 250, 30, 260, 30, 240);
  triangle(490, 250, 470, 260, 470, 240);
}

//start button for the pluto game
void playGame() {
  textFont(neuropol);
  textAlign(CENTER);
  fill(168, 176, 222);
  text("PLAY", width/2, height/2 + 15);
  noFill();
  stroke(168, 176, 222);
  rectMode(CENTER);
  rect(width/2, height/2, 150, 70);
}

//keeps trach of time from the start of the game and runs it then ends the game at 30 seconds
void gameRunning() {
  if (millis() - startTime >= 30000) {
    gameOver = true;
  }

  if (!gameOver) {
    makePlutos();
    c1.drawCan();
    collectPultos();
    println(points);
  } else {
    textFont(neuropol);
    fill(168, 176, 222);
    textSize(40);
    text("Time's Up!", width/2, height/2);
    text("Score: " + points, width/2, height/2 + 50);
    noFill();
    rect(width/2, height/2 + 100, 100, 50);
    textSize(20);
    text("RETRY", width/2, height/2 + 110);
    buttons();
  }
//displays time left
  int timeLeft = max(0, 30 - (millis() - startTime) / 1000);
  fill(255, 0, 0);
  textSize(20);
  text("Time left: " + timeLeft + " seconds", width/2, 30);
}

//allows the game to be restarted and sets time to 30 seconds
void startGame() {
  startTime = millis();
  points = 0;
  gameOver = false;
}

//general game info for pluto game
void plutoGameInfo() {
  textAlign(CENTER);
  textFont(neuropol);
  fill(168, 176, 222);
  textSize(16);
  text("Collect all the Plutos you can in 30 seconds!", width/2, 130);
  text("Pluto was once considered a planet", width/2, 50);
  text("but it's now considered a dwarf planet", width/2, 70);
  textSize(12);
  text("Move the can with your mouse to collect the Plutos", width/2, 350);
}
