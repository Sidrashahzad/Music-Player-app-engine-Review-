/* Background image exampla
 No aspect ratio
 filling in the rect
 */
// global variables
//
int appWidth, appHeight;
float imagebackgroundX, imagebackgroundY, imagebackgroundWidth, imagebackgroundHeight;
PImage pic;
Boolean nightmode=false ;
float PicWIDTHadjusted = 0.0, PicHEIGHTAdjusted = 0.0 ;// IF REQUIRES PREVIOUS VALUE
Boolean imagecenter=true , ImageRightBottom=false;// Vars image justificatin
float whitespace = 0.0,PicX_Adjusted=0.0 , PicY_Adjusted= 0.0;

//
size(500, 800);
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
String upFolder = "..";
String openFolder = "/";
String folder1 = "images";
String filename = "Sunset_Apache_Junction_Arizona.jpg";

pic = loadImage( upFolder+openFolder+folder1+openFolder+filename);
int picWidth = 1616; //original dimensions
int picHeight = 1080;//original dimensions
// larger dimension Algorithim ANY IMAGE Aspect Ratio
int smallerDimension, largerDimension;
float ImageHeightRatio, ImageWidthRatio;
if (picWidth >= picHeight) {
  //TRUE IF LANDSCAPE OR SQUARE
  largerDimension = picWidth;
  smallerDimension = picHeight;
  ImageHeightRatio =  float (smallerDimension)/ float(largerDimension);// ratio <= 1
  PicWIDTHadjusted = imagebackgroundWidth;// compressed
  PicHEIGHTAdjusted = imagebackgroundWidth * ImageHeightRatio;
  // if image fits in rect; Center smaller Dimension 
  whitespace =  imagebackgroundHeight- PicHEIGHTAdjusted;
  if(imagecenter==true)PicY_Adjusted = imagebackgroundX+ whitespace*1/2;
  if (ImageRightBottom==true )PicY_Adjusted = imagebackgroundX + whitespace;
   
  if (PicHEIGHTAdjusted > imagebackgroundHeight  ) {// ERROR Catch: adjusted Height is > then rect
  PicHEIGHTAdjusted = imagebackgroundHeight;
  PicWIDTHadjusted = PicWIDTHadjusted*ImageHeightRatio;// casting like formula like previous formula
  whitespace= imagebackgroundWidth - PicWIDTHadjusted;
  // if image left justified then no change to X-var
  PicX_Adjusted= imagebackgroundX;
  PicY_Adjusted = imagebackgroundY;
    if(imagecenter==true)PicX_Adjusted = imagebackgroundY+whitespace*1/2;
  if (ImageRightBottom==true )PicX_Adjusted = imagebackgroundY+whitespace;
  } 
} else { // FALSE IF PORTRAIT
 
   largerDimension = picHeight;
   smallerDimension = picWidth  ;
   ImageWidthRatio =  float (largerDimension)/ float(smallerDimension);
   PicWIDTHadjusted = imagebackgroundWidth * ImageWidthRatio;
   PicHEIGHTAdjusted = imagebackgroundHeight;
    //whitespace = imagebackgroundWidth - PicWIDTHadjusted;
}
// rectangle layout and image drawing to CANVAS
rect(imagebackgroundX, imagebackgroundY, imagebackgroundWidth, imagebackgroundHeight);
//
if (nightmode==false)tint(255, 100);//gray scale day 1/2 tint for white 128/255=1/2
if (nightmode==true)tint(64, 64, 40);// rgb night
//image( pic, imagebackgroundX, imagebackgroundY, imagebackgroundWidth, imagebackgroundHeight);// non Aspect ratio
// image doesnt print to canvas If
println(imagebackgroundX, imagebackgroundY, PicWIDTHadjusted, PicHEIGHTAdjusted);
// aspect Ratio image
image( pic, PicX_Adjusted , PicY_Adjusted, PicWIDTHadjusted, PicHEIGHTAdjusted);

// end main program
