//global variable
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
float stopX, stopY, stopWidth, stopHeight;
float playX1, playY1, playX2, playY2,playX3, playY3;
float forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3;
float forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6;
float reverseX1, reverseY1, reverseX2, reverseY2,reverseX3, reverseY3;
float reverseX4, reverseY4, reverseX5, reverseY5,reverseX6, reverseY6;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3;
float nextrectX1, nextrectY1, nextrectWidth, nextrectheight;
float previousX1, previousY1, previousX2, previousY2, previousX3, previousY3;
float loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight;
float loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight;
float loopPlaylistX, loopPlaylistY, loopPlaylistWidth, loopPlaylistHeight;
float muteX, muteY, muteWidth, muteHeight;

//color reset Nightmodecolour = #FFF94B , black = #000000;// night mode 
color resetcolourDaymode = #FFFFFF, black = #000000; // day mode 

 void drawMusicButtons(){
   drawPauseButton();
   drawStopButton();
    drawPlayButton();
    drawForwardButton();
    drawReverseButton();
    drawNextButton();
    drawpreviousButton();
    drawlooponceButton();
    drawLoopInfinite();
    drawloopPlaylist();
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
void drawPlayButton(){
 triangle(playX1, playY1, playX2, playY2,playX3, playY3);
}
void drawForwardButton(){
triangle(forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3);
triangle(forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6);
}

void drawReverseButton(){
triangle(reverseX1, reverseY1, reverseX2, reverseY2,reverseX3, reverseY3);
triangle(reverseX4, reverseY4, reverseX5, reverseY5,reverseX6, reverseY6);
}

void drawNextButton(){
triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
//rect(nextrectX1, nextrectY1, nextrectWidth, nextrectheight);

}
void drawpreviousButton(){
triangle(previousX1, previousY1, previousX2, previousY2, previousX3, previousY3);}

void drawlooponceButton(){
rect(loopOnceX, loopOnceY, loopOnceWidth, loopOnceHeight);
}

void drawLoopInfinite() {
rect(loopInfiniteX, loopInfiniteY, loopInfiniteWidth, loopInfiniteHeight);
}

void drawloopPlaylist(){
rect(loopPlaylistX, loopPlaylistY, loopPlaylistWidth, loopPlaylistHeight);
}

void drawMuteButton(){
rect(muteX, muteY, muteWidth, muteHeight);
}
