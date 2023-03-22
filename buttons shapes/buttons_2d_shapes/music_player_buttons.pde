//global variable
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float  backX1, backY1, backX2, backY2, backX3, backY3;
float playX1, playY1, playX2, playY2,playX3, playY3;
float forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3;
float forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6;
float reverseX1, reverseY1, reverseX2, reverseY2,reverseX3, reverseY3;
float reverseX4, reverseY4, reverseX5, reverseY5,reverseX6, reverseY6;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3;
float nextrectX1, nextrectY1, nextrectWidth, nextrectheight;
float previousX1, previousY1, previousX2, previousY2, previousX3, previousY3;
float looponceRectX, looponceRectY, looponceRectwidth, looponceRectheight;
float loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight;
float loopOnceX2, loopOnceY2, loopOnce2Width, loopOnce2Height;
float loopOnceTriX1, loopOnceTriY1, loopOnceTriX2, loopOnceTriY2, loopOnceTriX3, loopOnceTriY3;
float loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight;
float loopPlaylistX, loopPlaylistY, loopPlaylistWidth, loopPlaylistHeight;
float muteX, muteY, muteWidth, muteHeight;
color grey = #CECECE;

color skyblue = #B9F4FF;
color blue2 = #8C9BE8;

//color reset Nightmodecolour = #FFF94B , black = #000000;// night mode 
color resetcolourDaymode = #FFFFFF, blue =  #8CAAE8; // day mode 

 void drawMusicButtons(){
   drawPauseButton();
    drawBackButton();
    drawPlayButton();
    drawForwardButton();
    drawReverseButton();
    drawNextButton();
    drawpreviousButton();
    drawlooponceButton();
    drawLoopInfinite();
    drawloopPlaylist();
    drawMuteButton();
}
 //
 // end music buttons
 void drawPauseButton(){
 rect(pauseX1, pauseY1,pauseWidth ,pauseHeight );
 rect(pauseX2, pauseY2,pauseWidth ,pauseHeight);
}// end pause 
//
void drawBackButton(){
  fill(blue2);// ternary operator 
//rect( backX, backY, backWidth, backHeight );
triangle(backX1, backY1, backX2, backY2, backX3, backY3);
fill( resetcolourDaymode );
} // void stop
//
void drawPlayButton(){
 triangle(playX1, playY1, playX2, playY2,playX3, playY3);
}// end play 
//
void drawForwardButton(){
  fill(blue);
triangle(forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3);
triangle(forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6);
fill( resetcolourDaymode );
}// end forward 
//
void drawReverseButton(){
fill(blue);
triangle(reverseX1, reverseY1, reverseX2, reverseY2,reverseX3, reverseY3);
triangle(reverseX4, reverseY4, reverseX5, reverseY5,reverseX6, reverseY6);
fill( resetcolourDaymode );
}// end reverse 
//
void drawNextButton(){
triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
//rect(nextrectX1, nextrectY1, nextrectWidth, nextrectheight);
}// end next 
//
void drawpreviousButton(){
triangle(previousX1, previousY1, previousX2, previousY2, previousX3, previousY3);
}// end previous button
//
void drawlooponceButton(){
rect(looponceRectX, looponceRectY, looponceRectwidth, looponceRectheight);
ellipse(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
fill(grey);
ellipse(loopOnceX2, loopOnceY2, loopOnce2Width, loopOnce2Height);
fill(resetcolourDaymode);
triangle(loopOnceTriX1, loopOnceTriY1, loopOnceTriX2, loopOnceTriY2, loopOnceTriX3, loopOnceTriY3);
}// end loop once 
//
void drawLoopInfinite() {
rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
}// end loop infinite 
//
void drawloopPlaylist(){
rect(loopPlaylistX, loopPlaylistY, loopPlaylistWidth, loopPlaylistHeight);
}// end loop playlist 
//
void drawMuteButton(){
rect(muteX, muteY, muteWidth, muteHeight);
}// end mute 
//
