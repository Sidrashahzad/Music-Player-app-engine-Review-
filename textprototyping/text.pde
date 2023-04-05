//global variables
PFont titleFont;
color ink, blueink = #1638B9 ,whiteInk = #FFFFFF ;//not night mode friendly 
int alignHorizontal, alignVertical;
String string = " Anything ";
void textSetup() {

  titleFont = createFont ("", 55);// dont press OK
}// end TextSetup

void pretextDraw(float height, color ink, int alignHorizontal, int alignVertical, PFont titleFont ) {
  fill(ink);
  textAlign(alignHorizontal, alignVertical);// left, center, right , top
  textFont(titleFont, height);
  //(font, height);
}
void textDraw(float height, color ink, int alignHorizontal, int alignVertical, PFont titleFont, String string, float rectX, float rectY, float rectWidth, float rectHeight  ) {
  pretextDraw( height, ink, alignHorizontal, alignVertical, titleFont );// passing parameters
  textSize(textCalculator(height, string, rectWidth));
  text(string, rectX, rectY, rectWidth, rectHeight);
  textReset();
}// end textDraw
void textReset() {
  fill(whiteInk);
}// end textreset

float textCalculator(float size, String string, float rectWidth )
{
  textSize(size);
  while (textWidth(string) > rectWidth )
  {
    size = size * 0.99;// think o fdifferent formula
    textSize(size);
  }
 return size;
}// floatCalculator
void textkeyPressed() {
}// end textkeyPressed
void textmousePressed() {
}// end textmousePressed

// end text subprogram
