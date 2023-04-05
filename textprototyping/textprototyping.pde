/* prototyping text
 - copy rect from 2d
 add rect to put text
 could also be hoverover
 */
//
//global variables

void setup() {
    size(800,500);//height & width
   onerectDraw();
  textSetup();
  //population of local variables 
  textDraw( height, blueink, CENTER, CENTER, titleFont, string, pausebuttonX, pauseY1, pausewidth2, pauseHeight);
}//end setup

void draw() {
  
  
}// end draw

void keyPressed() {
  textkeyPressed();
}// end Keypressed

void mousePressed() {
  textmousePressed();
}// end mousePressed
void flatText(){

  
}
