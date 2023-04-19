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
loopinfinTriX3 = loopInfiniteX + pauseWidth;
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
 
//

//
}
void draw(){
drawMusicButtons();
println(mouseX, mouseY)  ;

    
if (mouseX >= playX1  && mouseX<=playX3  && mouseY>= playY1  && mouseY<= playY2)  // pause
{ playcolor = blue;
   println("Hovering over play-pause");
 } else { 
   playcolor = blue2;
   println("") ; 
 }
 
 if (mouseX >= pausebuttonX  && mouseX<=pausebuttonX+pausewidth2  && mouseY>=pauseY1   && mouseY<=pauseY1+pauseHeight )
 { pausecolor = blue;
   println("Hovering over play-pause");
 } else { 
   pausecolor = blue2;
   println("") ; 
 }
  if (mouseX >=  backRectX && mouseX<=  backRectX+backButtonWidth && mouseY>= backRectY && mouseY<= backRectY+backRectHeight)//back
 { 
   BackColor=blue;
  println("Hovering over Back");
 } else { 
   BackColor=blue2;
   println("") ; 
 }
 
  
  if (mouseX >=  reverseRectX && mouseX<=  reverseRectX+reverseRectWidth && mouseY>= reverseRectY && mouseY<= reverseRectY+pauseHeight) // revers
 { 
   reverseColor = blue;
  println("Hovering over rewind");
 } else { 
   reverseColor= blue2;
   println("") ; 
 }
 
  if (mouseX >=  forwardrectX && mouseX<=  forwardrectX+forwardrectWidth && mouseY>= forwardrectY && mouseY<=  forwardrectY+pauseHeight) 
 { 
   forwardColor= blue;
  println("Hovering over forward");
 } else { 
   forwardColor= blue2;
   println("") ; 
 }
 
 if (mouseX >=  nextbuttonrectX && mouseX<=  nextbuttonrectX+nextbuttonrectWidth && mouseY>= nextbuttonrectY && mouseY<=  nextbuttonrectY+pauseHeight)// next
 { 
   nextColor = blue;
  println("Hovering over next");
 } else { 
   nextColor= blue2;
   println("") ; 
 }
 
  
 if (mouseX >=  stopX1 && mouseX<=  stopX1+stopWidth && mouseY>= stopY1 && mouseY<=  stopY1+stopHeight)// // stop  
 { 
   stopColor = blue;
 println("Hovering over stop");

 } else { 
    stopColor = blue2;
  println("") ; 

 }
 
if (mouseX >=  looponceRectX && mouseX<=  looponceRectX+looponceRectwidth && mouseY>= looponceRectY && mouseY<=  looponceRectY+looponceRectheight)// // looponce  
 { 
   loop1color = blue;
  println("Hovering over loop once");
 } else { 
    loop1color = blue2;
   println("") ; 
 } 
 
 if (mouseX >=  loopinfinRectX && mouseX<=  loopinfinRectX+loopinfinRectWidth && mouseY>= loopinfinRectY && mouseY<=  loopinfinRectY+loopinfinRectHeight)// // loop infinite  
 { loopIncolor = blue;
  println("Hovering over loop infinite");
 } else { 
   loopIncolor = blue2;
   println("") ; 
 } 
 
  if (mouseX >= loopPlaylistX  && mouseX<= loopPlaylistX+loopPlaylistWidth  && mouseY>= loopPlaylistY && mouseY<=  loopPlaylistY+loopPlaylistHeight)
{
  playlistcolor = blue;
  println("Hovering over loop Playlist");
 } else { 
   playlistcolor= blue2;
   println("") ; 
 }
 
 
  if (mouseX >= muteX  && mouseX<= muteX+muteWidth  && mouseY>= muteY && mouseY<=  muteY+muteHeight)
{  
  mutecolor= blue;
  println("Hovering over mute");
 } else { 
   mutecolor= blue2;
   println("") ; 
 }
 
 
}

void keyPressed(){
}

void mousePressed(){
{ 
if (mouseX >= playX1  && mouseX<=playX3  && mouseY>= playY1  && mouseY<= playY2)
pause=true; 
else{
  if (mouseX >= playX1  && mouseX<=playX3  && mouseY>= playY1  && mouseY<= playY2) 

pause=false; 
triangle = true;
}
}
 if (mouseX >=  stopX1 && mouseX<=  stopX1+stopWidth && mouseY>= stopY1 && mouseY<=  stopY1+stopHeight)// // stop  
pause=false;
triangle = true;


}
  
