import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



float MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight;

PFont textfont;
color blue =  #8C9BE8;
color white = #FFFFFF;
int appWidth, appHeight;
Boolean musicButtons=false;
String Musicbutton = "Music";
// global variables 
//
void setup(){
size(800,500);
setupMusic();
// 
songs[currentSong].loop(0);// channge index manually 
appWidth = width ;
appHeight = height;
MusicButtonX = appWidth*3.99/5;
MusicButtonY = appHeight*7.99/10;
MusicButtonWidth = appWidth*1/5;
MusicButtonHeight = appHeight*2/10;

   textfont = createFont("Harrington", 55);
  population();
//
}// end setup 

void draw(){
  drawMusicButtons();
fill(white);
rect(MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight);
textDraw1();

drawMusic();

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

void textDrawPre(){
  fill(blue);
  textAlign(CENTER,CENTER);
  textFont(textfont,20);
}
void textDraw1(){
textDrawPre();
text(Musicbutton, MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight);
textdrawpost();
}
//
void textdrawpost(){
fill(white);}


//end draw
void keyPressed(){
keyPressedMusic();

}// end keypressed

void mousePressed(){
{ 
if (mouseX >= playX1  && mouseX<=playX3  && mouseY>= playY1  && mouseY<= playY2)
pause=true; 
}
click(1)
 if (mouseX >=  stopX1 && mouseX<=  stopX1+stopWidth && mouseY>= stopY1 && mouseY<=  stopY1+stopHeight)// // stop  
pause=false;


  
}// end mousepressed
//
//End main Program
