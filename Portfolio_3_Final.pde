int numRows;
int rowLength;
int rowHeight;
int rectWidth;
int rectHeight;
int startX;
int startY;
int colore;
int colore2;
int colore3;
boolean colourFill;
//-------------------
void setup() {
size(900, 400);
stroke(0) ;
numRows = 1;
rowLength = 10;
rowHeight = 10;
startX = 50;
startY = 350;
rectWidth = 75;
rectHeight = 25;
colourFill = false;
}
//--------------------
void draw() { 
  background(255);
  int updateX = startX; //Local Variable to hold x coordinate of each rectangle
  int updateY = startY; //Local variable to control Y coordinate of each row
  rowLength = 10; //Hold the length of the first row
  
  for (int x = 0; x < numRows; x = x + 1) { //Add one more row
    updateX = startX + rectWidth/2*x; //After adding row, divide width of rect and multiply by int x
    for (int y = 0; y < rowLength; y = y + 1) {
      rect(updateX,updateY,rectWidth,rectHeight); //Draw the first row of rectangles
      updateX = updateX + rectWidth; }
    rowLength = rowLength - 1;  // Decrease the amount of rectangles on each row
    updateY = updateY - rectHeight; }
if (colourFill) { fill(colore, colore2, colore3); } else { fill(255); } } // If colourFill is true, fill rectangles with random colours, if false, fill rectangles white
//--------------------
void mousePressed() { 
  if(numRows!=10) { numRows = numRows + 1; } else { numRows = 0; //If numRows is not 10, keep adding rows. Else set number of rows to 0
    colourFill = !colourFill;
    colore = int(random(255));
    colore2 = int(random(255));
    colore3 = int(random(255)); 
  }// Colour randomiser after Pyramid is built
}
