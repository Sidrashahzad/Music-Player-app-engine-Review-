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
/*
muteX = pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*8/30);
muteY = pauseY1;
muteWidth = pauseHeight;
muteHeight = pauseHeight;*/


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

stopX1 = pauseX1; 
stopY1 = pauseY1 + pauseHeight + pauseWidth;
stopWidth = pauseHeight;
stopHeight = pauseHeight;
 
/*
 previousX1 =  playX3 - pauseWidth - pauseWidth ;
 previousY1 = nextY1;
 previousX2 =  playX3 - pauseWidth - pauseWidth;
 previousY2 = nextY2;
 previousX3 = previousX1 - pauseWidth - pauseWidth;
 previousY3 = nextY3; 
//
loopOnceX = backX1  + pauseWidth + pauseWidth ;
loopOnceY = nextY1 + pauseWidth + pauseWidth;
loopOnceWidth = pauseHeight;
loopOnceHeight = pauseHeight;
//
loopOnceX2 = loopOnceX;
loopOnceY2 = loopOnceY ;
loopOnce2Width = pauseHeight - pauseWidth;
loopOnce2Height = pauseHeight - pauseWidth;
//
 loopOnceTriX1 = loopOnce2Width + pauseWidth;
 loopOnceTriY1 = loopOnceY;
 loopOnceTriX2 = loopOnceWidth + pauseWidth;
 loopOnceTriY2 = loopOnceY2;
 loopOnceTriX3 = loopOnceX + pauseWidth;
 loopOnceTriY3 =  nextY1 + pauseWidth;
//
loopInfiniteX =  reverseX3;
loopInfiniteY = nextY1;
loopInfiniteWidth = pauseHeight;
loopInfiniteHeight = pauseHeight;
//
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

}
void keyPressed(){}
void mousePressed(){}
