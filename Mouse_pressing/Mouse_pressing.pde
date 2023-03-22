/* prototyping program for logical button pressing*/
//global variables 
//float rectX, rectY, rectWidth, rectHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float backX, backY, backWidth, backHeight;
float pausewidth2;
float reverseX3;
int appWidth, appHeight;
boolean rectHoverOver=false; 
//
void setup(){
size(800, 500);
// population before moving ot VOID in subprogram 
/*float startingX = width *1/2;
float startingY = height * 1/2;
float ButtonReferentMeasure = width * 1/9;// 7 buttons 
float ButtonSide = ButtonReferentMeasure;// All buttons are squares 

rectX = startingX - 4.5 * (ButtonReferentMeasure)  ;
rectY = startingY; 
rectWidth = ButtonSide;
rectHeight = ButtonSide;*/
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
  //
  stopX =  pauseStartDrawX  - (appWidth*14/30);
  stopY = pauseY1;
  stopWidth = pauseHeight;
  stopHeight = pauseHeight;
  
    
  pausewidth2 = pauseHeight  ;
  
 
  reverseX3= pauseStartDrawX  - (appWidth*8/30);

//
}// end setup 
//
void draw(){
  //
 /*
 if (mouseX >= rectX && mouseX<= rectX+rectWidth && mouseY>= rectY && mouseY<= rectY+rectHeight)
 { 
  println("Hovering over button");
 } else { 
   println("") ; 
 }*/
//rect(rectX, rectY, rectWidth, rectHeight);
  rect( stopX, pauseY1, stopWidth, pauseHeight );
 rect(pauseX1, pauseY1, pausewidth2 , pauseHeight );
 rect( reverseX3, pauseY1,pausewidth2, pauseHeight);
 rect(
//
}// end draw
//
void keyPressed(){} // end mousePressed
//
void mousePressed(){
  
//if (mouseX >= rectX && mouseX<= rectX+rectWidth && mouseY>= rectY && mouseY<= rectY+rectHeight) println("Button Pressed");   



}// end mousePressed 

// end main program 
