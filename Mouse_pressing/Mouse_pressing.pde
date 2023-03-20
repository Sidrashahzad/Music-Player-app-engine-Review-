/* prototyping program for logical button pressing*/
//global variables 
float rectX, rectY, rectWidth, rectHeight;
boolean rectHoverOver=false; 
//
void setup(){
size(700, 400);
// population before moving ot VOID in subprogram 
float startingX = width *1/2;
float startingY = height * 1/2;
float ButtonReferentMeasure = width * 1/9;// 7 buttons 
float ButtonSide = ButtonReferentMeasure;// All buttons are squares 

rectX = startingX - 4.5 * (ButtonReferentMeasure)  ;
rectY = startingY; 
rectWidth = ButtonSide;
rectHeight = ButtonSide;
}// end setup 
//
void draw(){
  //
  if (mouseX >= rectX && mouseX<= rectX+rectWidth && mouseY>= rectY && mouseY<= rectY+rectHeight)
 { 
  println("Hovering over button");
 } else { 
   println("") ; 
 }
rect(rectX, rectY, rectWidth, rectHeight);
  
//
}// end draw
//
void keyPressed(){} // end mousePressed
//
void mousePressed(){
  
if (mouseX >= rectX && mouseX<= rectX+rectWidth && mouseY>= rectY && mouseY<= rectY+rectHeight) println("Button Pressed");   



}// end mousePressed 

// end main program 
