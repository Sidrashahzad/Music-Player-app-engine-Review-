



float previousX1, previousY1, previousX2, previousY2, previousX3, previousY3;
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
  playY3 = height * 15/30 ;
 
  forwardX1 =  pauseStartDrawX  - (width*6/30) ; 
  forwardY1 = pauseStartDrawY;
  forwardX2 =  pauseStartDrawX  - (width*6/30);
  forwardY2 =  pauseStartDrawY + pauseHeight;
  forwardX3= pauseStartDrawX  - (width*8/30);
  forwardY3 = playY3;

 forwardX4 =  pauseStartDrawX  - (width*4/30) ;
 forwardY4 = pauseStartDrawY;
 forwardX5 =  pauseStartDrawX  - (width*4/30) ;
 forwardY5 =  pauseStartDrawY + pauseHeight;  
 forwardX6 = pauseStartDrawX  - (width*6/30);
 forwardY6 = playY3;
 
 reverseX1  =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*2/30);
 reverseY1 =  pauseStartDrawY; 
 reverseX2 =   pauseStartDrawX  + pauseWidth + pauseWidth +(width*2/30);
 reverseY2 =  pauseStartDrawY + pauseHeight; 
 reverseX3 =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*4/30);
 reverseY3 = playY3;
 
 reverseX4 =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*4/30);
 reverseY4 = pauseStartDrawY; 
 reverseX5 =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*4/30);
 reverseY5 =  pauseStartDrawY + pauseHeight; 
 reverseX6 =  pauseStartDrawX  + pauseWidth + pauseWidth +(width*6/30);
 reverseY6 = playY3;
/*
 nextX1 = ;
 nextY1,
 nextX2 = ;
 nextY2,
 nextX3 = ;
 nextY3 = ;;
 /*
previousX1,
previousY1,
previousX2,
previousY2,
previousX3,
previousY3;
*/
}
void draw(){
drawMusicButtons();
/*




triangle(previousX1, previousY1, previousX2, previousY2, previousX3, previousY3);
*/
}
void keyPressed(){}
void mousePressed(){}
