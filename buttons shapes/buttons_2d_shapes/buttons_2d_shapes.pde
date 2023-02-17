
void setup(){
  size(800, 500);//height & width
  //fullScreen();//display width
  float pauseStartDrawX = width * 2/4;
  float pauseStartDrawY= height * 4/10;
  pauseScaleWidth =  1.0/30.0;
  pauseScaleHeight =  1.0/5.0;
  println(pauseScaleWidth);
  pauseWidth = width * pauseScaleWidth;
  pauseX1 = pauseStartDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = pauseStartDrawY ;
  pauseX2 = pauseStartDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = height * pauseScaleHeight;
  
  stopX =  pauseStartDrawX  - (width*14/30);
  stopY = pauseY1;
  stopWidth = pauseHeight;
  stopHeight = pauseHeight;

  playX1 =  pauseX1;
  playY1 =  pauseStartDrawY ;
  playX2 = pauseX1; 
  playY2 =  pauseStartDrawY + pauseHeight;
  playX3 =  pauseX2 + pauseWidth;
  playY3 =   pauseY2 + (height*3/30); 
  
  
  reverseX1 =  pauseStartDrawX  - (width*7/30) ; 
  reverseY1 = pauseStartDrawY;
  reverseX2 =  pauseStartDrawX  - (width*7/30);
  reverseY2 =  pauseStartDrawY + pauseHeight;
  reverseX3= pauseStartDrawX  - (width*9/30);
  reverseY3 = playY3;

  reverseX4 =  pauseStartDrawX  - (width*5/30) ;
  reverseY4 = pauseStartDrawY;
  reverseX5 =  pauseStartDrawX  - (width*5/30) ;
  reverseY5 =  pauseStartDrawY + pauseHeight;  
  reverseX6 = pauseStartDrawX  - (width*7/30);
  reverseY6 = playY3;
 
 forwardX1  =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*3/30);
 forwardY1 =  pauseStartDrawY; 
 forwardX2 =   pauseStartDrawX  + pauseWidth + pauseWidth +(width*3/30);
 forwardY2 =  pauseStartDrawY + pauseHeight; 
 forwardX3 =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*5/30);
 forwardY3 = playY3;
 
 forwardX4 =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*5/30);
 forwardY4 = pauseStartDrawY; 
 forwardX5 =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*5/30);
 forwardY5 =  pauseStartDrawY + pauseHeight; 
 forwardX6 =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*7/30);
 forwardY6 = playY3;

 nextX1 = pauseX2 ;
 nextY1 = pauseHeight + (height * 15/30);
 nextX2 = pauseX2;
 nextY2 = nextY1 + pauseHeight ;
 nextX3 = pauseX2 + pauseWidth + pauseWidth;
 nextY3 = pauseHeight + (height * 17.5/30);



 previousX1 =  playX3 - pauseWidth - pauseWidth ;
 previousY1 = nextY1;
 previousX2 =  playX3 - pauseWidth - pauseWidth;
 previousY2 = nextY2;
 previousX3 = previousX1 - pauseWidth - pauseWidth;
 previousY3 = nextY3;


loopOnceX = stopX;
loopOnceY = nextY1;
loopOnceWidth = pauseHeight;
loopOnceHeight = pauseHeight;

loopInfiniteX =  reverseX3;
loopInfiniteY = nextY1;
loopInfiniteWidth = pauseHeight;
loopInfiniteHeight = pauseHeight;

loopPlaylistX = forwardX1;
loopPlaylistY = nextY1;
loopPlaylistWidth = pauseHeight;
loopPlaylistHeight = pauseHeight;



}
void draw(){
drawMusicButtons();

}
void keyPressed(){}
void mousePressed(){}
