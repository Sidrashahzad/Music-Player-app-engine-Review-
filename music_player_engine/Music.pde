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
 
}// End Mute Button}// end  mousePressedMusic

void keyPressedMusic(){ //<>//
// music key board shorcut  
if ( key == 'm' || key == 'M'){//mute button continue working on it \
  //Error this only work when music is playing
  // Error Fix: unmute or rewind when song is not playing (i.e unmute nextsong)
if (songs[currentSong ].isMuted ()) {
song[currentSong ].unmute();
 } else if ( songs[currentSong ].position() >= songs[currentSong ].length()*4/5 ) {
 // I finish smart muteButton 
 /* ERROR music player breaks if song finishes if rewind */
 songs[currentSong].rewind();
 } else {
song[currentSong].mute(); 
   }
 }// end mute button
 
// forward / reverse buttons
if ( key == 'f' || key == 'F'){
 songs[currentSong].skip(3000);// 1000 = 1sec
} else if(songs[currentSong ].position() >= songs[currentSong ]. length()*4/5 ) { 
// i finish 
} if else (){// i finish 
}// end forward 
  if(key == 'r' || key == 'R') {
 songs[currentSong].skip(-3000);
  }// end reverse 
  // single loop
  if ( key == '1' )  {
  delay( songs[currentSong].length() - songs[currentSong ].position() );// Error: delay stops all player functions computer doesnt recognize if song is playing 
   songs[currentSong].loop(1);
   
  }//end single loop 
  //loop infinite
   if ( key <= '9' && key ! = 1)  {
  delay( songs[currentSong ].length() - songs[currentSong ].position() );// Error: delay stops all player functions computer doesnt recognize if song is playing 
   songs[currentSong].loop(-1);
   }// end loop infinite 
  //STOP
  if ( songs[currentSong ].isPlaying() ) {.pause ; .rewind;}
   else {.rewind();} 
 // play-pause
//  if (key == 'p' || key =='P')
  //{
    
  }
}// end keyPressedMusic
void concatenationofMusicFiles(){
path = "data/"; 
Bonfire = "Bonfire - An Jone.mp3";
Caramalized = "Carmelized - Craig MacArthur.mp3" ;

} // end  concatenation
// end music subprogram
