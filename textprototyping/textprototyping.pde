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
  
}//end setup

void draw() {
  
  textDraw();
}// end draw

void keyPressed() {
  textkeyPressed();
}// end Keypressed

void mousePressed() {
  textmousePressed();
}// end mousePressed
