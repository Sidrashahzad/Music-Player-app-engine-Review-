//global variable
float pausebuttonX, pausewidth2;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float  backX1, backY1, backX2, backY2, backX3, backY3;
float  backRectX, backRectY, backRectWidth, backRectHeight;
float backButtonWidth;
float playX1, playY1, playX2, playY2,playX3, playY3;
float forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3;
float forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6;
float forwardrectX, forwardrectY, forwardrectWidth;
float reverseX1, reverseY1, reverseX2, reverseY2,reverseX3, reverseY3;
float reverseX4, reverseY4, reverseX5, reverseY5,reverseX6, reverseY6;
Float reverseRectX, reverseRectY, reverseRectWidth;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3;
float nextbuttonrectX, nextbuttonrectY, nextbuttonrectWidth;
float nextrectX, nextrectY, nextrectWidth, nextrectheight;
float stopX1, stopY1, stopWidth, stopHeight;
float looponceRectX, looponceRectY, looponceRectwidth, looponceRectheight;
float loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight;
float loopOnceX2, loopOnceY2, loopOnce2Width, loopOnce2Height;
float loopOnceTriX1, loopOnceTriY1, loopOnceTriX2, loopOnceTriY2, loopOnceTriX3, loopOnceTriY3;
float loopinfinRectX,loopinfinRectY, loopinfinRectWidth, loopinfinRectHeight;
float loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight;
float loopInfiniteX2,loopInfiniteY2, loopInfinitewidth2, loopInfiniteheight2;
float loopinfinTriX1, loopinfinTriY1, loopinfinTriX2, loopinfinTriY2, loopinfinTriX3, loopinfinTriY3;
float loopPlaylistX, loopPlaylistY, loopPlaylistWidth, loopPlaylistHeight;
float muteX, muteY, muteWidth, muteHeight;
color grey = #CECECE;

color skyblue = #B9F4FF, blue =  #8C9BE8;;
color stopColor, playcolor, BackColor,  reverseColor, forwardColor, nextColor,loop1color,loopIncolor, pausecolor,blue2 = #8CAAE8;
color playlistcolor, mutecolor;
//color reset Nightmodecolour = #FFF94B , black = #000000;// night mode 
color resetcolourDaymode = #FFFFFF ;// day mode 
color resetStroke = #000000;
Boolean triangle = true ;
Boolean pause =false;
 void drawMusicButtons(){
    
   drawPauseButton();
   drawPlayButton();
   drawBackButton();
   drawForwardButton();
   drawReverseButton();
   drawNextButton();
   drawStopButton();
   drawlooponceButton();
   drawLoopInfinite();
   drawloopPlaylist();
   drawMuteButton();
}
 //
 // end music buttons
 
//
 void drawPauseButton(){
   fill(grey);
  noStroke();
  
if(pause==true ) rect(pausebuttonX, pauseY1, pausewidth2, pauseHeight);// button
 fill(resetcolourDaymode );
 stroke(resetStroke);
fill( pausecolor);
if(pause==true  ) rect(pauseX1, pauseY1,pauseWidth, pauseHeight );
if(pause==true) rect(pauseX2, pauseY2,pauseWidth, pauseHeight);
}// end pause 

void drawPlayButton(){
     fill(grey);
    noStroke();
  if (triangle==true && pause==false)rect(pausebuttonX, pauseY1, pausewidth2, pauseHeight);
   fill(resetcolourDaymode );
 stroke(resetStroke);
  fill(playcolor);
if (triangle==true && pause==false) triangle(playX1, playY1, playX2, playY2,playX3, playY3);
 fill( resetcolourDaymode );
}// end play 
//
void drawBackButton(){
  fill(grey);// ternary operator 
 noStroke();
rect( backRectX, backRectY, backButtonWidth, backRectHeight);
 stroke(resetStroke);
fill( resetcolourDaymode );
fill(BackColor);
triangle(backX1, backY1, backX2, backY2, backX3, backY3);
rect( backRectX, backRectY, backRectWidth, backRectHeight);
fill( resetcolourDaymode );
} // void stop
//

void drawForwardButton(){
    fill(grey);// ternary operator 
      noStroke();
  rect(forwardrectX, forwardrectY, forwardrectWidth, pauseHeight);
  stroke(resetStroke);
  fill( resetcolourDaymode );
  fill(forwardColor);
triangle(forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3);
triangle(forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6);
fill( resetcolourDaymode );
}// end forward 
//
void drawReverseButton(){
  fill(grey);// ternary operator 
  noStroke();
  rect(reverseRectX, reverseRectY, reverseRectWidth, pauseHeight );
   stroke(resetStroke);
fill( resetcolourDaymode );
fill(reverseColor);
triangle(reverseX1, reverseY1, reverseX2, reverseY2,reverseX3, reverseY3);
triangle(reverseX4, reverseY4, reverseX5, reverseY5,reverseX6, reverseY6);
fill( resetcolourDaymode );
}// end reverse 
//
void drawNextButton(){
  fill(grey);// ternary operator 
 noStroke();
  rect(nextbuttonrectX, nextbuttonrectY, nextbuttonrectWidth, pauseHeight);
   stroke(resetStroke);
fill( resetcolourDaymode );
  fill(nextColor);
triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
rect(nextrectX, nextrectY, nextrectWidth, nextrectheight);
fill( resetcolourDaymode );
}// end next 
//
void drawStopButton(){//end stopButton
fill(stopColor);
rect(stopX1, stopY1, stopWidth, stopHeight);
fill( resetcolourDaymode );
}
//
void drawlooponceButton(){
  fill(grey);// ternary operator 
 noStroke();
rect(looponceRectX, looponceRectY, looponceRectwidth, looponceRectheight);
stroke(resetStroke);
fill( resetcolourDaymode );
fill(loop1color);
ellipse(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
fill(grey);
ellipse(loopOnceX2, loopOnceY2, loopOnce2Width, loopOnce2Height);
fill(resetcolourDaymode);
fill(loop1color);
triangle(loopOnceTriX1, loopOnceTriY1, loopOnceTriX2, loopOnceTriY2, loopOnceTriX3, loopOnceTriY3);
}// end loop once 
//
void drawLoopInfinite() {
   fill(grey);// ternary operator 
 noStroke();
rect( loopinfinRectX,loopinfinRectY, loopinfinRectWidth, loopinfinRectHeight);
stroke(resetStroke);
fill( resetcolourDaymode );
fill(loopIncolor);
ellipse(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
fill(grey);
ellipse(loopInfiniteX2,loopInfiniteY2, loopInfinitewidth2, loopInfiniteheight2);
fill(resetcolourDaymode);
fill(loopIncolor);
triangle(loopinfinTriX1, loopinfinTriY1, loopinfinTriX2, loopinfinTriY2, loopinfinTriX3, loopinfinTriY3);
fill(resetcolourDaymode);
}// end loop infinite 
//
void drawloopPlaylist(){
fill(playlistcolor);
rect(loopPlaylistX, loopPlaylistY, loopPlaylistWidth, loopPlaylistHeight);
fill(resetcolourDaymode);
}// end loop playlist 
//
void drawMuteButton(){
  fill(mutecolor);
rect(muteX, muteY, muteWidth, muteHeight);
}// end mute 
//
