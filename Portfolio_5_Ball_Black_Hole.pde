float ballX; // X coordinate of the ball
float ballY; // Y coordinate of the ball
float bucoNeroX; // X coordinate of black hole
float bucoNeroY; // Y coordinate of black hole
float bucoNeroWidth; // Diameter of black hole
float ballWidth; // Diameter of the ball
float speedX; // Speed of movement in X direction
float speedY; // Speed of movement in Y direction

void setup() {
  size(600, 600); // reset ball parameters, position and size
  ballX = width/2;
  ballY = height/2;
  ballWidth = 60;
  initializeSpeed(); // initialize the speed to random values
  initializeHole(); // initialize black hole
}

void draw() {
  background(127);
  // draw the ball
  drawColourCircle(ballX, ballY, ballWidth, color(255, 0, 0));
  drawColourCircle(bucoNeroX, bucoNeroY, bucoNeroWidth, color(0));
  moveBall();
  if (checkCollide(ballX, ballY, ballWidth, bucoNeroX, bucoNeroY, bucoNeroWidth)) {
    initializeHole();
    initializeSpeed();
  }
  bounceBall();
}

void drawColourCircle (float ballX, float ballY, float ballWidth, color red) {
  fill(red);
  circle(ballX, ballY, ballWidth);
}
// Initialize speed and move the ball
void initializeSpeed() {
  speedX = random(5, 10);
  speedY = random(5, 10);
}
void moveBall() {
  ballX = ballX + speedX;
  ballY = ballY + speedY;
}

// The ball must bounce on the side of the walls
void bounceBall() {
  if ((ballX+(ballWidth/2) > width) || (ballX-((ballWidth/2)) < 0)) {
    speedX = speedX * -1;
  }
  if ((ballY+(ballWidth/2) > height) || (ballY-(ballWidth/2) < 0)) {
    speedY = speedY * -1;
  }
}

void keyPressed() {
  if (key == 'x');
  speedX = random(5, 10);
  if (key == 'y');
  speedY = random(5, 10);
}
// Black hole
void initializeHole() {
  bucoNeroX = random (0, width);
  bucoNeroY = random (0, height);
  bucoNeroWidth = random (100, 300);
}

float distance (float x1, float x2, float y1, float y2) {
  float side1 = x1-x2;
  float side2 = y1-y2;
  float result = sqrt((side1*side1) + (side2*side2));
  return result;
}

boolean checkCollide (float checkX1, float checkY1, float D1, float checkX2, float checkY2, float D2) {
  float radiiResult = ((D1/2) + (D2/2));
  float distance = distance (checkX1, checkX2, checkY1, checkY2);
  if (distance <= radiiResult) {
    return true;
  } else {
    return false;
  }
}
