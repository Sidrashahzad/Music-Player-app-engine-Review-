// global variables
Minim minim; //creates object to access all functions
Audio player[] songs = new AudioPlayer[3]; //creates playlist 
//Audio player[] soundeffects = new AudioPlayer[2]; 
String path, Bonfire, Caramalized;
int currentSong = 0;
Boolean autoPlayOn=false; 
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
//
void drawMusic(){
  //
  println("current Song Position:", songs[currentSong ].position());
println("\tEnd of Song:",songs[currentSong ].length() );
//
autoPlayMusic();
//
}//  end drawMusic

void mousePressedMusic(){
 
}// End Mute Button}// end  mousePressedMusic

void keyPressedMusic(){ //<>//
// music key board shorcut  
if ( key == 'm' || key == 'M'){
  mute();
 }
 
// forward / reverse buttons
if ( key == 'f' || key == 'F'){
 void forward();
}// end forward 
  if(key == 'r' || key == 'R') {
    Reverse();
  }// end reverse 
  
  // single loop
  if ( key == '1' )  {
    singleloop();
  }//end single loop 
  
  //loop infinite
   if ( key <= '9' && key ! = 1)  {
   infiniteloop();
   }// end loop infinite 
  //STOP
  if ( key == 's' || key == 'S'){ 
     Stop();
  }
  //end stop 
 // play-pause
    if (key == 'p' || key =='P'){  
   play-pause();
}//end play-pause Button

// Autoplay button 
if (key == 'o'|| key == 'O') {
 Autoplay();
} // end Autoplay 


 //next            
  if (key == 'n' || key == 'N'){
 next();
  }//end next button
  
  
  // previous button  
   if ( key == 'b' || key == 'B'){
   previous();
   }// end previous button 
}// end keyPressedMusic

void concatenationofMusicFiles(){
path = "data/"; 
Bonfire = "Bonfire - An Jone.mp3";
Caramalized = "Carmelized - Craig MacArthur.mp3" ;
Heat Wave =  "Heat Wave - John Deley and the 41 Players.mp3";

} // end  concatenation
void autoPlayMusic(){
// Auto play Section, see subprogam 
if ( autoPlayOn )  {
//if (){} if else () {} else {}
// Ex .position() >= .length(), then rewind(), currentSong += 1, .play()
// Ex2 .isplaying(), when false rewind(), currentSong += , .play 
}// End autoPlayMusic 


void mute(){  //mute button continue working on it \
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
} /* else if { nextsong.playing();
song [currentSong].unmute(); 

 } */}// end void mute
 
 void forward(){
  songs[currentSong].skip(5000);// 1000 = 1sec
} else if(songs[currentSong].position() >= songs[currentSong]. length()*9/10 ) { 
   songs[currentSong].pause();
    songs[currentSong].rewind(); 
    currentSong ++
  // i finish 
} 
 }// end void  forward 
 
 
void Reverse(){
songs[currentSong].skip(-5000);
else if (songs[currentSong].position() <= songs[currentSong]. length()*3/10){
  songs[currentSong].pause();
    songs[currentSong].rewind(); 
    current song --;
} 
}// end void Reverse 

void singleloop(){
   delay( songs[currentSong].length() - songs[currentSong].position() );// Error: delay stops all player functions computer doesnt recognize if song is playing 
   songs[currentSong].loop(1);
}// end void Single loop 
void infiniteloop(){
  delay( songs[currentSong].length() - songs[currentSong].position() );// Error: delay stops all player functions computer doesnt recognize if song is playing 
   songs[currentSong].loop(-1);
}// end void infinite loop 

void Stop(){
 if ( songs[currentSong].isPlaying() ) {songs[currentSong].pause(); songs[currentSong].rewind();}
  /* Possible for smarter STOP button
   include "soft pause" for first 15 sec of stop 
  include auto previous & next track if stop at the begining or end of file*/
   else {songs[currentSong].rewind();}
   else if( songs[currentSong].position() <= songs[currentSong]. length()*1/5)
{
  songs[currentSong].isPlaying();
} 
  }// end void stop 
  
  void play-pause(){
    if( songs[currentSong].isPlaying() ) {
    songs[currentSong].pause();
  } else if (songs[currentSong].position() >= songs[currentSong].length()*9/10){ 
     
    songs[currentSong].pause();
    songs[currentSong].rewind();
    } else {
       currentSong ++ ;
   }// no auto rewind like Loop 
}// end void play-pause  
  
 void Autoplay(){
 if (autoPlayOn=false )
{
  autoPlayOn=true;
} 
else {autoPlayOn=false;
  }
}// end void autoplay 
  void next(){ 
    if (songs[currentSong].isPlaying()) {
   songs[currentSong].pause();
   songs[currentSong].rewind();
   //
   //
    songs[currentSong].play()
  } else if ( currentSong == songs.length - 1){ // Error catch ArrayOutofBounds 
  currentSong = songs.length - songs.length;// Intention = 0
 currentSong.rewind();
 }
  else { 
     currentSong ++ ;
      currentSong.rewind();
     //Throws ArrayoutofBounds 
   }
  }// end void next 
  void previous(){
    if (songs[currentSong].isPlaying()) {
   songs[currentSong].pause();
   songs[currentSong].rewind();
   //
   //
    songs[currentSong].play()
  } else if ( currentSong == songs.length + 1){ // Error catch ArrayOutofBounds 
  currentSong = songs.length + songs.length;// Intention = 0
 currentSong.rewind();
 }
  else { 
     currentSong -- ;
      currentSong.rewind();

     //Throws ArrayoutofBounds 
   }
   }// end void previous 
  
// end music subprogram