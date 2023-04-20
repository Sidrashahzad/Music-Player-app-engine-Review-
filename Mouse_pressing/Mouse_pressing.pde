/* prototyping program for logical button pressing*/
//global variables 
//float rectX, rectY, rectWidth, rectHeight;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float backX, backY, backWidth, backHeight;
float playlistRectX, playlistRectY, playlistRectWidth, playlistRectHeight;
float pausewidth2;
float reverseX3;
float forwardX1;
float nextX1;
float looponceY1;
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
  backX =  pauseStartDrawX  - (appWidth*13.5/30);
  backY = pauseY1;
  backWidth = pauseHeight;
  backHeight = pauseHeight;
   //
  pausewidth2 = pauseHeight  ;
 //
  reverseX3 = pauseStartDrawX  - (appWidth*7.5/30);
  //
  forwardX1  =  pauseStartDrawX + (appWidth*4.5/30);
//
  nextX1 =   pauseStartDrawX + (appWidth*10.5/30);
  //
 looponceY1 = backY + backWidth + pauseWidth + pauseWidth;
//

 playlistRectX = nextX1 + (1/4* pauseWidth);
 playlistRectY = looponceY1 + (1/4* pauseWidth);
 playlistRectWidth = 1/4* pauseWidth;
 playlistRectHeight = 1/4* pauseWidth;

// 
}// end setup 
//
void draw(){
  //
 
 if (mouseX >=  backX && mouseX<= backX+backWidth && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight)
 { 
  println("Hovering over Back");
 } else { 
   println("") ; 
 }
 //
 if (mouseX >=  reverseX3 && mouseX<= reverseX3+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight)
 { 
  println("Hovering over reverse");
 } else { 
   println("") ; 
 }// reverse 
//
if (mouseX >=  pauseX1 && mouseX<= pauseX1+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight)  // pause
{ 
  println("Hovering over play-pause");
 } else { 
   println("") ; 
 }
//
if (mouseX >=  forwardX1 && mouseX<= forwardX1+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight)   // forward 
{ 
  println("Hovering over forward");
 } else { 
   println("") ; 
 }
//
if (mouseX >=  nextX1 && mouseX<= nextX1+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight)    // next
{ 
  println("Hovering over next");
 } else { 
   println("") ; 
 }
//
//
if (mouseX >=  backX && mouseX<= backX+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight)   // loop once

  {
  println("Hovering over looponce");
 } else { 
   println("") ; 
 }
//
if (mouseX >=  reverseX3 && mouseX<= reverseX3+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight)  // loop infinite 
{ 
  println("Hovering over loopinfinite");
 } else { 
   println("") ; 
 }
//
if (mouseX >=  pauseX1 && mouseX<= pauseX1+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight)    // stop
{ 
  println("Hovering over stop");
 } else { 
   println("") ; 
 }
//
if (mouseX >=  forwardX1 && mouseX<= forwardX1+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight)    //  autoplay 
{ 
  println("Hovering over autoplay");
 } else { 
   println("") ; 
 }
//
if (mouseX >=  nextX1 && mouseX<= nextX1+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight)   //mute
{ 
  println("Hovering over mute");
 } else { 
   println("") ; 
 }

 
//rect(rectX, rectY, rectWidth, rectHeight);
  rect( backX, pauseY1, pausewidth2, pauseHeight );//back
 rect( reverseX3, pauseY1,pausewidth2, pauseHeight);//reverse
  rect(pauseX1, pauseY1, pausewidth2 , pauseHeight );// play-pause
 rect(forwardX1, pauseY1,pausewidth2, pauseHeight);// forward
 rect(nextX1, pauseY1, pausewidth2, pauseHeight);// next
 //
 rect( backX, looponceY1, pausewidth2, pauseHeight );// loop once
 rect(reverseX3, looponceY1, pausewidth2, pauseHeight );// loop infinite
 rect(pauseX1, looponceY1, pausewidth2 , pauseHeight);// stop
rect(forwardX1,looponceY1,pausewidth2, pauseHeight);// autoplay
 
rect( playlistRectX, playlistRectY, playlistRectWidth, playlistRectHeight);
 rect(nextX1,looponceY1,pausewidth2, pauseHeight);// mute
//
}// end draw
//
void keyPressed(){} // end mousePressed
//
void mousePressed(){
  
if (mouseX >=  backX && mouseX<= backX+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight) println("Back Pressed"); //back  
//
if (mouseX >=  reverseX3 && mouseX<= reverseX3+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight) println("reverse Pressed");  // reverse 
//
if (mouseX >=  pauseX1 && mouseX<= pauseX1+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight) println("play-pause Pressed");   // pause
//
if (mouseX >=  forwardX1 && mouseX<= forwardX1+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight) println("forward Pressed");   // forward 
//
if (mouseX >=  nextX1 && mouseX<= nextX1+pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight) println("next Pressed");   // next
//
//
if (mouseX >=  backX && mouseX<= backX+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight) println("looponce Pressed");   // loop once
//
if (mouseX >=  reverseX3 && mouseX<= reverseX3+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight) println("loopinfinite ");   // loop infinite 
//
if (mouseX >=  pauseX1 && mouseX<= pauseX1+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight) println("stop Pressed");   // stop
//
if (mouseX >=  forwardX1 && mouseX<= forwardX1+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight) println("autoplay Pressed");   //  autoplay 
//
if (mouseX >=  nextX1 && mouseX<= nextX1+pausewidth2 && mouseY>= looponceY1 && mouseY<= looponceY1+pauseHeight) println("mutePressed");   //mute

}// end mousePressed 

// end main program 
