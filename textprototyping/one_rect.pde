//text is put here
void onerectDraw(){
float pausebuttonX, pausewidth2;
float pauseX1, pauseY1, pauseX2, pauseY2, pauseWidth, pauseHeight;
float pauseScaleWidth, pauseScaleHeight;
//float playX1, playY1, playX2, playY2,playX3, playY3;
int appWidth, appHeight;



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
 pauseWidth = appWidth * pauseScaleWidth;
  pauseX1 = pauseStartDrawX - pauseWidth - pauseWidth*1/2;
  pauseY1 = pauseStartDrawY ;
  pauseX2 = pauseStartDrawX + pauseWidth*1/2;
  pauseY2 = pauseY1;
  pauseHeight = appHeight * pauseScaleHeight;
    pausebuttonX = pauseX1 - (pauseWidth*1/4);
  pausewidth2 = pauseHeight;
  /*
   playX1 =  pauseX1;
  playY1 =  pauseStartDrawY ;
  playX2 = pauseX1; 
  playY2 =  pauseStartDrawY + pauseHeight;
  playX3 =  pauseX2 + pauseWidth;
  playY3 =   pauseY2 + (appHeight*3/30); 
*/
 rect(pausebuttonX, pauseY1, pausewidth2, pauseHeight);// button
// triangle(playX1, playY1, playX2, playY2,playX3, playY3);
/* rect(pauseX1, pauseY1,pauseWidth, pauseHeight );
 rect(pauseX2, pauseY2,pauseWidth, pauseHeight);*/}
