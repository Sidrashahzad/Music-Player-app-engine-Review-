 
 void population(){

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


  reverseX4 =  pauseStartDrawX  - (appWidth*3.8/30) ;
  reverseY4 = pauseStartDrawY;
  reverseX5 =  pauseStartDrawX  - (appWidth*3.8/30) ;
  reverseY5 =  pauseStartDrawY + pauseHeight;  
  reverseX6 = pauseStartDrawX  - (appWidth*5.5/30);
  reverseY6 = playY3;
  
   reverseRectX = reverseX3;
reverseRectY = reverseY1;
reverseRectWidth = pauseHeight;
  
  
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
 forwardX6 =  pauseStartDrawX  + pauseWidth + pauseWidth +(appWidth*5.7/30);
 forwardY6 = playY3;
 
 forwardrectX = forwardX1;
 forwardrectY = forwardY1;
 forwardrectWidth = pauseHeight;
 
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

nextbuttonrectX = nextX1;
nextbuttonrectY = nextY1;
nextbuttonrectWidth = pauseHeight;

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

looponceRectX = backRectX;
looponceRectY =  stopY1;
looponceRectwidth = pauseHeight ;
looponceRectheight = pauseHeight;



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
loopinfinTriX2 =  loopInfiniteX + pauseWidth + pauseWidth;
loopinfinTriY2 = loopInfiniteY;
loopinfinTriX3 = loopInfiniteX + pauseWidth+(pauseWidth*1/2);
loopinfinTriY3 = stopY1 + pauseWidth; 

 
 loopinfinRectX = reverseX3;
 loopinfinRectY = stopY1;
 loopinfinRectWidth = pauseHeight ;
 loopinfinRectHeight = pauseHeight ;

muteX = forwardX1;
muteY = stopY1;
muteWidth = pauseHeight;
muteHeight = pauseHeight;

 loopPlaylistX = nextX1 ;
 loopPlaylistY = stopY1 ;
 loopPlaylistWidth = pauseHeight;
 loopPlaylistHeight = pauseHeight;
 
 playlistRectX = nextX1 + ( pauseWidth * 1.7/5 );
 playlistRectY = stopY1+ ( pauseWidth *2.5/4);
 playlistRectWidth =  pauseHeight - (pauseHeight*1/5);
 playlistRectHeight = pauseWidth - (pauseWidth*3/6);
 
 playlistRectX2 = playlistRectX;
 playlistRectY2 = playlistRectY + playlistRectHeight + ( pauseWidth *1/4);
//
playlistRectX3 = playlistRectX ; 
playlistRectY3 = playlistRectY2 + playlistRectHeight  + ( pauseWidth *1/4);
playlistRectWidth2 =  pauseHeight*1/2;

playlistTriX = playlistRectX3+ playlistRectWidth2 + ( playlistRectHeight*1/2) ;
playlistTriY = playlistRectY3 ;
playlistTriX2 =playlistTriX ;
playlistTriY2 = playlistRectY3+playlistRectHeight + playlistRectHeight ;
playlistTriX3 = playlistTriX + playlistRectHeight + playlistRectHeight ;
playlistTriY3 = playlistRectY3 + playlistRectHeight;


 }
