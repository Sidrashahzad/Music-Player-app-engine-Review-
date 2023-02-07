import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global variables 
String Path = new File("").getAbsolutePath();// exported
String directory = " " ; // not exported 
void setup() 
{
  File dir = new File(Path);//null if not export 
  if( dir== null){ 
    dir = new File(directory):
    Filelist = dir.listFiles();
    for (File file: FIlelist){
      if(file.isFile()){
        if (file.toString().endsWith("mp3")){ 
          songs = minim.loadFile(file.getName());
  }else {}
  File[] FileList = dir.listFiles();//exported folder
}// end setup
//
void draw(){}// end draw
//
void keyPressed(){}// end keypressed
//
void mousePressed(){}// end mousepressed
//
//End main Program
