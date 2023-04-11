/* Background image exampla
No aspect ratio
filling in the rect 
*/
// global variables 
//
int appWidth, appHeight;
float imagebackgroundX, imagebackgroundY, imagebackgroundWidth,imagebackgroundHeight;
//
size(400,600);
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
// rectangle layout and image drawing to CANVAS
rect(imagebackgroundX, imagebackgroundY, imagebackgroundWidth,imagebackgroundHeight);
//
image( pic, imagebackgroundX, imagebackgroundY, imagebackgroundWidth,imagebackgroundHeight);
// end main program 
