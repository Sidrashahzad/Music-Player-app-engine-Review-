
float playX1, playY1, playX2, playY2,playX3, playY3;
float forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3;
float forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6;
float reverseX1, reverseY1, reverseX2, reverseY2,reverseX3, reverseY3;
float reverseX4, reverseY4, reverseX5, reverseY5,reverseX6, reverseY6;
float nextX1, nextY1, nextX2, nextY2, nextX3, nextY3;
float previousX1, previousY1, previousX2, previousY2, previousX3, previousY3;
void setup(){
  size(800, 500);//height & width
  //fullScreen();//display width
  float pauseStartDrawX = width * 2/4;
  float pauseStartDrawY= height * 4/10;
  pauseScaleWidth =  1.0/30.0;
  pauseScaleHeight =  1.0/4.0;
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
/*

 
  playX1 = pauseX1  ;
  playY1 = pauseY1 + ;
  playX2 =  pauseX1; 
  playY2 = pauseY1;
  playX3 =  pauseWidth;
  playY3 = pauseHeight*1/2;
 /* 
  forwardX1 = width 
  forwardY1, 
  forwardX2,
  forwardY2,
  forwardX3,
  forwardY3;

 forwardX4,
 forwardY4,
 forwardX5,
 forwardY5, 
 forwardX6,
 forwardY6;
 
 reverseX1,
 reverseY1, 
 reverseX2,
 reverseY2,
 reverseX3,
 reverseY3;
 
 reverseX4,
 reverseY4, 
 reverseX5, 
 reverseY5,
 reverseX6,
 reverseY6;
 
 nextX1, 
 nextY1,
 nextX2,
 nextY2,
 nextX3, 
 nextY3;
 
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
triangle(playX1, playY1, playX2, playY2,playX3, playY3);
triangle(forwardX1, forwardY1, forwardX2, forwardY2, forwardX3, forwardY3);
triangle(forwardX4, forwardY4, forwardX5, forwardY5, forwardX6, forwardY6);
triangle(reverseX1, reverseY1, reverseX2, reverseY2,reverseX3, reverseY3);
triangle(reverseX4, reverseY4, reverseX5, reverseY5,reverseX6, reverseY6);
triangle(nextX1, nextY1, nextX2, nextY2, nextX3, nextY3);
triangle(previousX1, previousY1, previousX2, previousY2, previousX3, previousY3);
*/
}
void keyPressed(){}
void mousePressed(){}
