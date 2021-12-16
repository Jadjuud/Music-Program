//Libraries


//Global Variables
Minim minim; //creates objct to access all functions 
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3


void setup() {
  fullScreen();
  population();
  textSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("song name from file");
  song1.play();
} //End setup()

void draw() {
  powerButtonDraw();
} //End draw()

void keyPressed() {
} //End keyPressed()

void mousePressed() {
  powerButtonMousePressed();
} //End mousePressed 
