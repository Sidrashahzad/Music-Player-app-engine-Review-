//global variable
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
//color reset Nightmodecolour = #FFF94B , black = #000000;// night mode 
color resetcolourDaymode = #FFFFFF, black = #000000; // day mode 

 void drawMusicButtons(){
   drawPauseButton();
   drawStopButton();
}
 //
 // end music buttons
 void drawPauseButton(){
 rect(pauseX1, pauseY1,pauseWidth ,pauseHeight );
 rect(pauseX2, pauseY2,pauseWidth ,pauseHeight);
}
void drawStopButton(){
  fill( black );// ternary operator 
rect( stopX, stopY, stopWidth, stopHeight );
fill( resetcolourDaymode );
}
