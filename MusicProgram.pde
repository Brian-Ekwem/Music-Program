import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Variables
Minim minim;
AudioPlayer song1;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color white=#FFFFFF, black=#000000, red=#FF0000, quitButtonColour;

void setup() {
  fullScreen();
  population();
  minim = new Minim(this);
  song1 = minim.loadFile("Music/Stairway - Patrick Patrikios.mp3");
  song1.play();
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { 
    quitButtonColour = white;
  } else { 
    quitButtonColour = red;
  } 
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textDraw();
}


void draw() {
}//End draw()

void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
}

void keyPressed() {
  //
  if ( key == 'p' || key == 'P' ) {//Play-Pause Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {//.legnth() = end
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  if (key == 's' || key == 'S') {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not Playing
      song1.rewind();
    }
  }
  if ( key == 'f' || key == 'F') song1.skip(1000); // skip forward 1 second (1000 milliseconds), single IF Line
  if ( key == 'r' || key == 'R') song1.skip(-1000); // skip backward 1 second (1000 milliseconds), single IF Line
}
