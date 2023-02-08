import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// global variables 
String Path = new File("").getAbsolutePath();// exported program
String directory = "//FS-052/studuser$/Gr11/s.shahzad3/My Documents/GitHub/Music-Player-app-engine-Review-/music_player_engine" ; // not exported 
//
Minim minim; //creates object to access all functions
Audio player[] songs = new AudioPlayer[2]; //creates playlist 
//
void setup() 
{
  //
  minim = new Minim (this);// load music data directoy, also from project folder
  //
  File anyDirectory = new File(path);// used if not export 
  println("Exported Directory". anyDirectory);
  File githubDirectory = new File(directory); //used when prototyping 
  File[] FileListAnyDirectory = anyDirectory.listFiles().
  printArray(FileListAnyDirectory);
  println("Items in FileList", FileListAntDirectory.length);
  int i = 0; //songs index
  for(File file : FileListAnyDirectory){
    if( file.isFile()){
      if(file.toString().endsWith(".mp3") ) {
      println("Any Directory is working");
      songs[i] = minim.loaddFile(file.getName());
      i = i+i;
      }
    }
  }
File[] FileListGitHubDir = githubDirectory.listFiles();
if (songs[0] == null) {
  printArray(FileListGitHubDir);
  for(File file : FileListGithubDir){
    if(file.isFile()){
      if(file.toString().endsWith(".mp3")){
        println("file Name.mp3 only", file.getName());
        songs[i] = minim.loadFile(file.getName());
        i+=i;
      }
    }
  }
}
songs[0].loop(0);
}

//
void draw(){}// end draw
//
void keyPressed(){}// end keypressed
//
void mousePressed(){}// end mousepressed
//
//End main Program
