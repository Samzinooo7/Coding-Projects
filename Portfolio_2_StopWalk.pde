boolean command;
String Stop;
String Walk;

void setup() {
  size(400,400);
  Stop="STOP!";
  command=false;
  Walk="Walk";
}
void draw() {
  if (command) {
    background(0,200,0); //Green Background
    textSize(100);
    textAlign(CENTER);
    fill(0);
    text(Walk,200,200);
  }else{
    background(255,0,0); //Red Background
    textSize(100);
    textAlign(CENTER);
    fill(0);
    text(Stop,200,200);
  }
}

void mousePressed(){
  command=!command;
}
