int b;

void setup(){
  size(1000,500);
  rectMode(CENTER);
  color b = color(20,75,200);

}

void draw(){
  background(155);
  stroke(50);
  // Lower Chassis
  fill(b);
  rect(mouseX,mouseY,350,50);
  // Tyres
  fill(b);
  ellipse(mouseX+100,mouseY+25,100,100);
  ellipse(mouseX-100,mouseY+25,100,100);
  // Wheels
  fill(100,100,100);
  ellipse(mouseX+100,mouseY+25,70,70);
  ellipse(mouseX-100,mouseY+25,70,70);
  fill(0,255,0);
  // Random Colour Display
  strokeWeight(random(1, 7));
  stroke(random(255), 155, 255);
  // Upper chassis & bumpers
  rect(mouseX,mouseY-37,375,25);
  rect(mouseX-175,mouseY+13,25,75);
  rect(mouseX+175,mouseY+13,25,75);
  fill(0,0,100);
  rect(mouseX,mouseY-75,200,50);
  // Car roof
  fill(b);
  rect(mouseX,mouseY-95,200,25);
  rect(mouseX+100,mouseY-87,25,75);
}
  
