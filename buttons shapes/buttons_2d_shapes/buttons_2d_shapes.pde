int appWidth, appHeight;
void setup(){
  size(800, 500);//height & width
  //fullScreen();//display width
  //Error : canvas is bigger then Display
  // Error ; stating display geometrey ( i.e landscape, portrait, square ) 
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
  
  
  pausebuttonX = pauseX1 - (pauseWidth*1/4);
  pausewidth2 = pauseHeight;
  
  playX1 =  pauseX1;
  playY1 =  pauseStartDrawY ;
  playX2 = pauseX1; 
  playY2 =  pauseStartDrawY + pauseHeight;
  playX3 =  pauseX2 + pauseWidth;
  playY3 =   pauseY2 + (appHeight*3/30); 
  
 
  //
  reverseX1 =  pauseStartDrawX  - (appWidth*5.5/30) ; 
  reverseY1 = pauseStartDrawY;
  reverseX2 =  pauseStartDrawX  - (appWidth*5.5/30);
  reverseY2 =  pauseStartDrawY + pauseHeight;
  reverseX3= pauseStartDrawX  - (appWidth*7.5/30);
  reverseY3 = playY3;
//
  reverseX4 =  pauseStartDrawX  - (appWidth*3.7/30) ;
  reverseY4 = pauseStartDrawY;
  reverseX5 =  pauseStartDrawX  - (appWidth*3.7/30) ;
  reverseY5 =  pauseStartDrawY + pauseHeight;  
  reverseX6 = pauseStartDrawX  - (appWidth*5.5/30);
  reverseY6 = playY3;
  
    backButtonWidth = pauseHeight;

  backX1 =   pauseStartDrawX  - (appWidth*12/30);
  backY1 = playY3 ;
  backX2 =  pauseStartDrawX  - (appWidth*9.5/30);
  backY2 = pauseY1 ;
  backX3 =  pauseStartDrawX  - (appWidth*9.5/30);
  backY3 = pauseY1 + pauseHeight;
  //
  
 backRectX = pauseStartDrawX  - (appWidth*13/30);
 backRectY = pauseY1;
 backRectWidth = pauseWidth; 
 backRectHeight = pauseHeight;
 
 
 /* backbuttonX =  pauseStartDrawX  - (appWidth*13.5/30);
  backY = pauseY1;
  backWidth = pauseHeight;
  backHeight = pauseHeight;*/
 //
 forwardX1  =  pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*2/30);
 forwardY1 =  pauseStartDrawY; 
 forwardX2 =   pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*2/30);
 forwardY2 =  pauseStartDrawY + pauseHeight; 
 forwardX3 =  pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*4/30);
 forwardY3 = playY3;
 //
 forwardX4 =  pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*4/30);
 forwardY4 = pauseStartDrawY; 
 forwardX5 =  pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*4/30);
 forwardY5 =  pauseStartDrawY + pauseHeight; 
 forwardX6 =  pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*6/30);
 forwardY6 = playY3;

 nextX1 = pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*8/30) ;
 nextY1 = pauseY1;
 nextX2 = pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*8/30);
 nextY2 = nextY1 + pauseHeight ;
 nextX3 = pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*10.5/30);
 nextY3 = playY3 ;
 
  
 nextrectX = nextX3;
 nextrectY = nextY1;
 nextrectWidth = pauseWidth;
 nextrectheight = pauseHeight;

stopX1 = pausebuttonX; 
stopY1 = pauseY1 + pauseHeight + pauseWidth;
stopWidth = pauseHeight;
stopHeight = pauseHeight;
 
 loopOnceX = backRectX + pauseWidth + pauseWidth ;
loopOnceY = stopY1 + pauseWidth + pauseWidth;
loopOnceWidth = pauseHeight;
loopOnceHeight = pauseHeight;

loopOnceX2 = loopOnceX;
loopOnceY2 = loopOnceY ;
loopOnce2Width = pauseHeight - pauseWidth;
loopOnce2Height = pauseHeight - pauseWidth;

loopOnceTriX1 = loopOnce2Width + pauseWidth + pauseWidth;
 loopOnceTriY1 = loopOnceY;
 loopOnceTriX2 = loopOnceWidth + pauseWidth + pauseWidth;
 loopOnceTriY2 = loopOnceY2;
 loopOnceTriX3 = loopOnceX + pauseWidth;
 loopOnceTriY3 = stopY1 + pauseWidth;

loopInfiniteX =  reverseX3 + pauseWidth + pauseWidth;
loopInfiniteY = loopOnceY;
loopInfiniteWidth = pauseHeight;
loopInfiniteHeight = pauseHeight;

//
 

loopInfiniteX2 =  reverseX3 + pauseWidth + pauseWidth;
loopInfiniteY2 = loopOnceY;
loopInfinitewidth2 = pauseHeight - pauseWidth;
loopInfiniteheight2 = pauseHeight - pauseWidth;

loopinfinTriX1 =  loopInfiniteX  + pauseWidth ;
loopinfinTriY1 = loopInfiniteY;
loopinfinTriX2 =  loopInfiniteX2 + pauseWidth + pauseWidth;
loopinfinTriY2 = loopInfiniteY2;
loopinfinTriX3 = loopInfiniteX + pauseWidth;
loopinfinTriY3 = stopY1 + pauseWidth; 

/*
muteX = pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*8/30);
muteY = pauseY1;
muteWidth = pauseHeight;
muteHeight = pauseHeight;*/


/*
 loopPlaylistX = forwardX1;
 loopPlaylistY = nextY1;
 loopPlaylistWidth = pauseHeight;
 loopPlaylistHeight = pauseHeight;
 */
//

//

}
void draw(){
drawMusicButtons();
if (mouseX >=  pausebuttonX && mouseX<= pausebuttonX + pausewidth2 && mouseY>= pauseY1 && mouseY<= pauseY1+pauseHeight)  // pause
{ 
  println("Hovering over play-pause");
 } else { 
   println("") ; 
 }
 
  if (mouseX >=  backRectX && mouseX<=  backRectX+backButtonWidth && mouseY>= backRectY && mouseY<= backRectY+backRectHeight)
 { 
  println("Hovering over Back");
 } else { 
   println("") ; 
 }
}
void keyPressed(){}
void mousePressed(){}
