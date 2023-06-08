import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;




float MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight;
float QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight;

PFont textfont;
color blue =  #8C9BE8;
color white = #FFFFFF;
color red = #E32929;
color QuitButtoncolor;

int appWidth, appHeight;
Boolean musicButtons= true;
Boolean musicFalse = false;
String Musicbutton = "Music";
String Quitbutton = " X ";
// global variables
//
void setup() {
  size(800, 500);
  setupMusic();
  //
//  songs[currentSong].loop(0);// channge index manually
  appWidth = width ;
  appHeight = height;
  MusicButtonX = appWidth*2.99/5;
  MusicButtonY = appHeight*0;
  MusicButtonWidth = appWidth*1/5;
  MusicButtonHeight = appHeight*2/10;

  QuitButtonX = appWidth*9/10;
  QuitButtonY = appHeight*0;
  QuitButtonWidth  = appWidth*1/10;
  QuitButtonHeight = appHeight*1/10;

  textfont = createFont("Harrington", 55);
  population();
  //
}// end setup

void draw() {
  drawMusicButtons();
  fill(white);
  rect(MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight);
  textDraw1();
  fill(QuitButtoncolor);
  rect(QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight);
  textDraw2();

  drawMusic();

  println(mouseX, mouseY)  ;


  if (mouseX >= playX1  && mouseX<=playX3  && mouseY>= playY1  && mouseY<= playY2)  // pause
  {
    playcolor = blue;
    println("Hovering over play-pause");
  } else {
    playcolor = blue2;
    println("") ;
  }

  if (mouseX >= pausebuttonX  && mouseX<=pausebuttonX+pausewidth2  && mouseY>=pauseY1   && mouseY<=pauseY1+pauseHeight )
  {
    pausecolor = blue;
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
  {
    loopIncolor = blue;
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


  if (mouseX >= QuitButtonX  && mouseX<= QuitButtonX+QuitButtonWidth  && mouseY>= QuitButtonY && mouseY<=  QuitButtonY+QuitButtonHeight)
  {
    QuitButtoncolor= red;
    println("Hovering over Quit");
  } else {
    QuitButtoncolor= grey;
    println("") ;
  }
}

void textDrawPre() {
  fill(blue);
  textAlign(CENTER, CENTER);
  textFont(textfont, 20);
}
void textDraw1() {
  textDrawPre();
  text(Musicbutton, MusicButtonX, MusicButtonY, MusicButtonWidth, MusicButtonHeight);
  textdrawpost();
}
//
void textDraw2() {
  textDrawPre();
  text(Quitbutton, QuitButtonX, QuitButtonY, QuitButtonWidth, QuitButtonHeight);
  textdrawpost();
}

void textdrawpost() {
  fill(white);
}


//end draw
void keyPressed() {
  keyPressedMusic();
}// end keypressed

void mousePressed() {
  MusicButtonPressed();
  PlaymousePressed();
  StopmousePressed();
  forwardmousePressed();
  reversemousePressed();
  AutoplaymousePressed();
  QuitButtonPressed();
}// end mousepressed
void MusicButtonPressed() {
  if (mouseX >= MusicButtonX  && mouseX<=MusicButtonX+MusicButtonWidth && mouseY>= MusicButtonY && mouseY<= MusicButtonY+MusicButtonHeight)
    musicButtons= false;
}


void PlaymousePressed() {
  if (mouseX >= playX1  && mouseX<=playX3  && mouseY>= playY1  && mouseY<= playY2)
    // play-pause
    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].pause();
      pause=false;
    } else {
      songs[currentSong].play();
      pause=true;
    }//else if ( songs[currentSong].position() >= songs[currentSong].length()*9/10);
  //  {
  //  songs[currentSong].pause();
  //  songs[currentSong].rewind();
  // } //else {
  //  //   currentSong ++ ;
  // }
  //
  // playPause();
}//end play-pause Button

void StopmousePressed() {
  if (mouseX >=  stopX1 && mouseX<=  stopX1+stopWidth && mouseY>= stopY1 && mouseY<=  stopY1+stopHeight)// // stop

    if ( songs[currentSong].isPlaying() ) {
      songs[currentSong].rewind();
      songs[currentSong].pause();
      pause=false;
    }
  /* Possible for smarter STOP button
   include "soft pause" for first 15 sec of stop
   include auto previous & next track if stop at the begining or end of file*/
  /*
   else if( songs[currentSong].position() <= songs[currentSong]. length()*1/10)
   {
   songs[currentSong].isPlaying();
   songs[currentSong].rewind();
   }
   
   // end void stop */
}

void forwardmousePressed() {
  if ( mouseX >=  forwardrectX && mouseX<=  forwardrectX+forwardrectWidth && mouseY>= forwardrectY && mouseY<=  forwardrectY+pauseHeight)
  {
    songs[currentSong].skip(5000);// 1000 = 1sec
  } else if (songs[currentSong].position() >= songs[currentSong]. length()*9/10 ) {
    songs[currentSong].pause();
    songs[currentSong].rewind();
    //currentSong ++;
    // i finish
  }
}
void nextmousePressed() {
  if (mouseX >=  nextbuttonrectX && mouseX<=  nextbuttonrectX+nextbuttonrectWidth && mouseY>= nextbuttonrectY && mouseY<=  nextbuttonrectY+pauseHeight)// next
{   
    if (songs[currentSong].isPlaying() ) {
   songs[currentSong].pause();
   songs[currentSong].rewind();
   
     arrayFix();
   songs[currentSong].play();  
  } else {
 songs[currentSong].rewind();
  arrayFix();
}

}
}


void reversemousePressed() {
  if (mouseX >=  reverseRectX && mouseX<=  reverseRectX+reverseRectWidth && mouseY>= reverseRectY && mouseY<= reverseRectY+pauseHeight) {
    songs[currentSong].skip(-5000);
  } else if (songs[currentSong].position() <= songs[currentSong]. length()*1/10) {
    //songs[currentSong].pause();
    //songs[currentSong].rewind();
    //currentSong--;// Error come back and fix
  }
}//END REVERSE

/*{
 if (mouseX >=  looponceRectX && mouseX<=  looponceRectX+looponceRectwidth && mouseY>= looponceRectY && mouseY<=  looponceRectY+looponceRectheight ){
 singleloop();
 }//end single loop
 }
 {  //loop infinite
 if ( mouseX >=  loopinfinRectX && mouseX<=  loopinfinRectX+loopinfinRectWidth && mouseY>= loopinfinRectY && mouseY<=  loopinfinRectY+loopinfinRectHeight ){
 infiniteloop();
 }// end loop infinite
 }*/

//autoplay
void  AutoplaymousePressed() {
  if (mouseX >= loopPlaylistX  && mouseX<= loopPlaylistX +loopPlaylistWidth && mouseY>= loopPlaylistY && mouseY<= loopPlaylistY+loopPlaylistHeight)
  {
    if (autoPlayOn=false )
    {
      autoPlayOn=true;
    } else {
      autoPlayOn=false;
    }
  }
}// end void autoplay

void  QuitButtonPressed() {
  if (mouseX >= QuitButtonX  && mouseX<= QuitButtonX+QuitButtonWidth  && mouseY>= QuitButtonY && mouseY<=  QuitButtonY+QuitButtonHeight) exit();
}//end  QuitButtonPressed
//
//End main Program
