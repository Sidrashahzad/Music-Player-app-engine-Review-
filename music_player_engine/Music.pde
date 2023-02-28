// global variables
Minim minim; //creates object to access all functions
Audio player[] songs = new AudioPlayer[2]; //creates playlist 

void setupMusic(){
  
minim = new Minim (this);// load music data directoy, also from project folder
// set directory or pathway to the music 
// pathway: data / music or sound effect files
//
// Reminder Fininsh OS_level to auto read pathway nd files (see operating system )
//
concatenationofMusicFiles(); 
songs[] = minim.loadFile( path + musicFile) ;
soundEffects[] = minim.LoadFile( path + soundEffectFile)
//
}// end setupMusic

void drawMusic(){}//  end drawMusic

void mousePressedMusic(){}// end  mousePressedMusic

void keyPressedMusic (){}// end keyPressedMusic //<>//
void concatenationofMusicFiles(){
path = "data/"; 
firstSong = ""
} // end  concatenation
// end music subprogram
