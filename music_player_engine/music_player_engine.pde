import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

float MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight;


int appWidth, appHeight;
Boolean musicButtons=false;

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

//
}// end setup 
void draw(){
drawMusic();
rect(MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight);
}
//end draw
//
void keyPressed(){
keyPressedMusic();

}// end keypressed

void mousePressed(){
if ( mouseX >= MusicButtonX && mouseX<=MusicButtonX+MusicButtonWidth && mouseY>= MusicButtonY && mouseY<= MusicButtonY+MusicButtonHeight);
musicButtons=true;
}// end mousepressed
//
//End main Program
