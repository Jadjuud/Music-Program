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
  fullScreen(); //fullScreen(), displayWidth, displayHeight
  population();
  textSetup();
  //
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("Music/MusicProgram.mp3"); //able to pass absolute path, file name, and URL
  //song1.play(); //Parameter is milli-seconds from start of audio file to start playing
}//End setup()

void draw() {
  powerButtonDraw();
  //
  if (.isLooping()) println ("Is looping");
}//End draw()

void keyPressed() {
  //PlayPause
  if (key == 'p') {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() >= song1.length() ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.play();
    }
  }
  //Play-Stop
  if (key == 's') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.rewind();
    }
  }
  //FastForward
  if (key == 'f') song1.skip(1000);
  //FastRewind
  if (key == 'r') song1.skip(-1000);
  //Mute
  if (key == 'm') {
    if (song1.isMuted()) {
      song1.unmute();
    } else {
      song1.mute();
    }
  }
  //Loop function
  int loopIntNum = 2; //Loop Hardcode
  if ( key == 'l' || key == 'L' ) song1.loop(loopIntNum); //Play Button
}//End keyPressed()

void mousePressed() {
  powerButtonMousePressed();
}//End mousepressed()
