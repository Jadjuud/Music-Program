//Libraries
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3

void setup() {
  fullScreen();
  population();
  textSetup();
  //
  minim = new Minim(this);
  song1 = minim.loadFile("Music/groove.mp3");
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
