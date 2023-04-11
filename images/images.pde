/* Background image exampla
No aspect ratio
filling in the rect 
*/
// global variables 
//
int appWidth, appHeight;
float imagebackgroundX, imagebackgroundY, imagebackgroundWidth,imagebackgroundHeight;
PImage pic;
Boolean nightmode=false ;
//
size(600,400);
appWidth = width;
appHeight = height ; 
//
//
//population
//
imagebackgroundX =  appWidth*0;
imagebackgroundY = appHeight*0;
imagebackgroundWidth = appWidth-1;
imagebackgroundHeight= appHeight-1;
//
pic = loadImage("../images/Sunset_Apache_Junction_Arizona.jpg");
// rectangle layout and image drawing to CANVAS
rect(imagebackgroundX, imagebackgroundY, imagebackgroundWidth,imagebackgroundHeight);
//
if(nightmode==false)tint(255 ,100);//gray scale day 1/2 tint for white 128/255=1/2
if(nightmode==true)tint(64, 64, 40);// rgb night 
image( pic, imagebackgroundX, imagebackgroundY, imagebackgroundWidth,imagebackgroundHeight);
// end main program 
