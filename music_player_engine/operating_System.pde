/* caution code not finished 
also see Music Subprogram
*/
// GLoabal variables
String Path = new File("").getAbsolutePath();// exported program
String directory = "//FS-052/studuser$/Gr11/s.shahzad3/My Documents/GitHub/Music-Player-app-engine-Review-/music_player_engine" ; // not exported 
//
void setupOS_level(){
  File anyDirectory = new File(Path);// used if not export 
  println("Exported Directory", anyDirectory);
  File githubDirectory = new File(directory); //used when prototyping 
  File[] FileListAnyDirectory = anyDirectory.listFiles();
  printArray(FileListAnyDirectory);
  println("Items in FileList", FileListAnyDirectory.length);
  int i = 0; //songs index
  for(File file : FileListAnyDirectory){
    if( file.isFile()){
      if(file.toString().endsWith(".mp3") ) {
      println("Any Directory is working");
      songs[i] = minim.loadFile(file.getName());
      i = i + i;
      }
    }
  }
File[] FileListGitHubDir = githubDirectory.listFiles();
if (songs[0] == null) {
  printArray(FileListGitHubDir);
  for(File file : FileListGitHubDir){
    if(file.isFile()){
      if(file.toString().endsWith(".mp3")){
        println("file Name.mp3 only", file.getName());
        songs[i] = minim.loadFile(file.getName());
        i+=i;
      }
    }
  }
} // end setupOS_level
}
//
// End Operating System Subprogram
