// global variables
Minim minim; //creates object to access all functions
Audio player[] songs = new AudioPlayer[2]; //creates playlist 
//Audio player[] soundeffects = new AudioPlayer[2]; 
String path, Bonfire, Caramalized;
int currentSong = 0;

void setupMusic(){
  
minim = new Minim (this);// load music data directoy, also from project folder
// set directory or pathway to the music 
// pathway: data / music or sound effect files
//
// Reminder Fininsh OS_level to auto read pathway nd files (see operating system )
//
concatenationofMusicFiles(); 
songs[0] = minim.loadFile( path + Bonfire) ;
songs[1] = minim.loadFile( path + Caramalized) ;
//soundEffects[0] = minim.LoadFile( path + soundEffectFile)
//soundEffects[0] = minim.LoadFile( path + soundEffectFile)

}// end setupMusic

void drawMusic(){}//  end drawMusic

void mousePressedMusic(){
  if ( key == 'm' || key == 'M'){//mute button continue working on it 
if (songs[currentSong ].isMuted ()) {
song[currentSong ].unmute();
 } else if ( songs[currentSong ].position() >= songs[currentSong ]. length()*4/5 ) {}// I finish smart muteButton 
 /* ERROR music player breaks if song finishes if rewind */
 
 else {
song[currentSong].mute(); }
}// End Mute Button}// end  mousePressedMusic

void keyPressedMusic(){ //<>//
// music key board shorcut 
}// end keyPressedMusic
void concatenationofMusicFiles(){
path = "data/"; 
Bonfire = "Bonfire - An Jone.mp3";
Caramalized = "Carmelized - Craig MacArthur.mp3" ;

} // end  concatenation
// end music subprogram
