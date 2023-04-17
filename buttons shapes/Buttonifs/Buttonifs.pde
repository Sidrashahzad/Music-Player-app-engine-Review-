//button if's
//global variables
float backX, pauseY1, pausewidth2, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float  backY, backWidth, backHeight;
float pauseX1, pauseWidth, pauseX2,pauseY2;
float rectX,rectY,rectWidth,rectHeight;
float rectX2;
int appWidth, appHeight;
PFont textfont;
color blue = #1A5EED;
color white = #FFFFFF;
String button1 = "Click me ";
String button2 = "click me";
Boolean rect1= false;
Boolean rect2= false ;
void setup() {
  size(800,500);
  println(width,height,displayWidth,displayHeight);
 // ERROR CATCH IF canvas is bigger than display, send feedback to user
  if (width >= displayWidth || height >= displayHeight){
  }
  appWidth = width ;
  appHeight = height;
  //
  float pauseStartDrawX = appWidth * 2/4;
  float pauseStartDrawY=  appHeight * 4/10;
  pauseScaleWidth =  1.0/30.0;
  pauseScaleHeight =  1.0/5.0;
  println(pauseScaleWidth);
  //
  pauseWidth = appWidth * pauseScaleWidth;
  pauseX1 = pauseStartDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = pauseStartDrawY ;
  pauseX2 = pauseStartDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = appHeight * pauseScaleHeight;
  
  backX =  pauseStartDrawX  - (appWidth*13.5/30);
  backY = pauseY1;
  backWidth = pauseHeight;
  backHeight = pauseHeight;
    
    pausewidth2 = pauseHeight  ;
   textfont = createFont("Harrington", 55);
   
   rectX = backX;
   rectY = appHeight* 1/10;
   rectWidth=backWidth + backWidth;
   rectHeight= backHeight;
 
 rectX2 = appWidth*5/10;
}//end setup
void textDrawPre(){
  fill(blue);
  textAlign(CENTER,CENTER);
  textFont(textfont,20);
}



void textDraw1(){
textDrawPre();
text(button1,backX, pauseY1, pausewidth2, pauseHeight);
textdrawpost();
}
void textDraw2(){
textDrawPre();
text(button2, pauseX1, pauseY1, pausewidth2,pauseHeight );
textdrawpost();
}
void textdrawpost(){
fill(white);}

void draw() {
  
  rect( backX, pauseY1, pausewidth2, pauseHeight );//back
  textDraw1();
 if(rect1==true) rect(rectX,rectY,rectWidth,rectHeight);
 rect(pauseX1, pauseY1, pausewidth2 , pauseHeight);// play-pause
 textDraw2();
if(rect2==true) rect(rectX2,rectY,rectWidth,rectHeight);
}//end draw

void mousePressed() {
 rect1=false;
  rect2=false;
  if (mouseX>=backX && mouseX<=backX+pausewidth2 && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight)rect1=true;
if(mouseX>=pauseX1 && mouseX<=pauseX1+pausewidth2 && mouseY>=pauseY1 && mouseY<=pauseY1+pauseHeight)rect2=true;


}// end mousePressed

void keyPressed() {
}// end keyPressed
