// Global Variable
String title = "Wahoo!";
float titleX, titleY, titleWidth, titleHeight;
PFont titleFont;
color black=#000000, resetDefaultInk=#000000; //nightmode friendly
int titleSize;
//
void setup() {
  //CANVAS
  size (500,600); //Portrait Mode, fits on my display
  //Population
  titleX = width*1/5;
  titleY = height*1/10;
  titleWidth = width*3/5;
  titleHeight = height*1/10;
  //
  //Single Executed Code
  //Fonts from OS (Operating System)
  String [] fontList = PFont.list(); //To list all fonts availiable on OS
  printArray(fontList);//For Listing all possible fonts fo choose from, then createFont
  titleFont = createFont("AR BONNIE", 48);//Verify the font exists in Processing.JAVA
  // Tools / Create Font / Find Font in list to verify / Do Not press "OK", known bug
  //
  //Layout our text space and typographical features
  rect(titleX, titleY, titleWidth, titleHeight);
  //
}//End setup
//
void draw() {
//
fill(black); //Ink, hexidecimal copied from Color Selector
textAlign(CENTER, CENTER); //Align X*Y, see Processing.org/Reference
//Values: [LEFT | CENTER| RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
titleSize = 48;//Change this number until it fits
textFont(titleFont, titleSize);
text(title, titleX, titleY, titleWidth, titleHeight);
fill(resetDefaultInk);
} //End draw
//
//void keyPressed() {}//End keyPressed
//
//void mousePressed() {}//End mousePressed
//
//End MAIN Program
