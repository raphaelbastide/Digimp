import themidibus.*; // MIDI
import processing.video.*;
MovieMaker mm;  // Declare MovieMaker object to generate QT movie
import processing.opengl.*;
// Fullscreen
int W,H,PX,PY;
// MIDI
MidiBus myBus; // The MidiBusimport fullscreen.*;
import glitchP5.*; // import GlitchP5
GlitchP5 glitchP5; // declare an instance of GlitchP5. only one is needed

// Variables caméra
int x = 0;
int y = 100;
int z = 0;
float rx = 0;
float ry = 0;
float rz = 0;

int num=1;

//FullScreen fs; 
float speed = 0;              // Initial Speed
float a;                          // Angle of rotation


//int recolor = 0;                // Color
//color[] colors = new color[num];  // Colors of each box

int t1 =1;                        // Box width
int t2 =1;                        // Box height
int t3 =1;                        // Box depth
int c=0;
int bgc1 =0;                        // Background-color R
int bgc2 =0;                        // Background-color V
int bgc3 =0;                        // Background-color B

boolean k = false;                   //Kaleidoscope Mode 
boolean no_k = false;                   //Kaleidoscope Mode 
boolean Stroke = false;                   //Triangle Mode 
boolean Malev = false;                   //Malev Mode 

boolean cam1 = false;                   //Kaleidoscope Mode 
boolean cam2 = false;                   //Kaleidoscope Mode 
boolean cam3= false;                   //Kaleidoscope Mode 

boolean capture = true; // Capture anim into a .mov file or not
boolean screenShots = false; // Capture anim into a .mov file or not

// R V B
float new70= 0;
float new71= 0;
float new76= 0;

// SPEED
float new80= 0;
float new90= 0;

// NBR of ELEMENTS
float new12= 1; 
float new1= 0; 
float new73= 6; //angle (offset)


// CAMS
float new67= 0;
float new68= 0;
float new69= 0;

// SCALE
float new17= 0;
float new18= 0;
float new19= 0;
float master= 1;

// COLOR of ELEMENTS
float new72= 255;

// TRANSLATION of ELEMENTS
float new3= 0;
float new9= 0;

// GLITCH
float new8= 0;


//----------------------------------------------------------------------------






