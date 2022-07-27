//Global Variables
float b1x, b1y, b1w, b1h, b2x, b2y, b2w, b2h, b3x, b3y, b3w, b3h, b4x, b4y, b4w, b4h, b5x, b5y, b5w, b5h, b6x, b6y, b6w, b6h, b7x, b7y, b7w, b7h, b8x, b8y, b8w, b8h, b9x, b9y, b9w, b9h;
float quitX, quitY, quitWidth, quitHeight, resetY, startY, startWidth, startHeight;
color buttonFill, blue=#BCE5FF, darkb=#4099D3, wh=#FFFFFF, red=#;
//
void setup() {
  size(1000, 800);
  int appWidth = width;
  int appHeight = height;
  if ( width > displayWidth || height > displayHeight ) {
    appWidth = displayWidth;
    appHeight = displayHeight;
  } else {
  }
    //
    //Population
    b1w = b2w = b3w = b4w = b5w = b6w = b7w = b8w = b9w = width*1/3;
    b1h = b2h = b3h = b4h = b5h = b6h = b7h = b8h = b9h = height*1/3;
    b1x = b2x = b3x = 0;
    b4x = b5x = b6x = width*1/3;
    b7x = b8x = b9x = width*2/3;
    b1y = b4y = b7y = 0;
    b2y = b5y = b8y = height*1/3;
    b3y = b6y = b9y = height*2/3;
    quitX = b4x + width*1/23;
    quitY = height*1/20;
    quitWidth = width*1/4;
    quitHeight = height*1/10;
    resetY = height*4/20;
    startY = b5y+width*1/30;
    startWidth = width*1/4;
    startHeight = height*1/4;

    /* order
    1  4  7 
    2  5  8
    3  6  9
    */
    rect(b1x, b1y, b1w, b1h);
    rect(b2x, b2y, b2w, b2h);
    rect(b3x, b3y, b3w, b3h);
    rect(b4x, b4y, b4w, b4h);
    rect(b5x, b5y, b5w, b5h);
    rect(b6x, b6y, b6w, b6h);
    rect(b7x, b7y, b7w, b7h);
    rect(b8x, b8y, b8w, b8h);
    rect(b9x, b9y, b9w, b9h);

    rect(quitX, quitY, quitWidth, quitHeight);
    rect(quitX, resetY, quitWidth, quitHeight);
    rect(quitX, startY, startWidth, startHeight);



} //End setup
//
void draw() {
  
  //Hoverover
  //Hover over
  if ( mouseX>quitX && mouseX<quitX+quitWidth && mouseY>quitY && mouseY<startY+quitHeight ) {
    buttonFill = darkb;
  } else {
    buttonFill = blue;
  } //End Hover over
  fill(buttonFill);
    rect(quitX, quitY, quitWidth, quitHeight);
  fill(wh);
} //End draw
//
void keyPressed() {
} //End keyPressed
//
void mousePressed() {
} //End mousePressed
//
//End MAIN Program
