
void setup() {

  // Fullscreen
  W=screen.width;
  H=screen.height;
  // initial position of frame
  PX=0;
  PY=0;

  frameRate(30); //22 for recording
  noCursor();
  // smooth(); // Hi res or not
  size(W, H, P3D);
  noStroke();

  MidiBus.list(); // List all available Midi devices on STDOUT. This will show each device's index and name.
  myBus = new MidiBus(this, 0, 0); // Create a new MidiBus with no input device and the default Java Sound Synthesizer as the output device.

  if (capture) {
    mm = new MovieMaker(this, width, height, "DEMO_pouceIndien.mov", 7, MovieMaker.JPEG, MovieMaker.HIGH);  // framerate 7 
  }
  glitchP5 = new GlitchP5(this); // initiate the glitchP5 instance;


} // End Setup


