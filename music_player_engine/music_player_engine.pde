import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global variables 
//
void setup(){
//
setupMusic();
// 
songs[currentSong ].loop(0);// channge index manually 
//
}// end setup 

//
void draw(){
println("current Song Position:", songs[currentSong ].position());
println("\tEnd of Song:",songs[currentSong ].length() );
}// end draw
//
void keyPressed(){
keyPressedMusic();

}// end keypressed

void mousePressed(){}// end mousepressed
//
//End main Program
