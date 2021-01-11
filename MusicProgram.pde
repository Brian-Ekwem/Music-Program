import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Variables
Minim minim;
AudioPlayer song1;
int loopIntNum = 1;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color white=#FFFFFF, reallyblack=#000000, red=#FF0000, quitButtonColour, green=#20AF25, black=#1C1C1C;
float backgroundX, backgroundY, backgroundW, backgroundH, listX, listY, listW, listH;
float song1X, song1Y, song1W, song1H, song2X, song2Y, song2W, song2H, song3X, song3Y, song3W, song3H, song4X, song4Y, song4W, song4H;
float song5X, song5Y, song5W, song5H, song6X, song6Y, song6W, song6H, song7X, song7Y, song7W, song7H, song8X, song8Y, song8W, song8H;
float song9X, song9Y, song9W, song9H, song10X, song10Y, song10W, song10H, songImgX, songImgY, songImgW, songImgH;
float timeSX, timeSY, timeSW, timeSH, songNX, songNY, songNW, songNH, play1X, play1Y, play2X, play2Y, play3X, play3Y, playCX, playCY, playCD;
float fastA1X, fastA1Y, fastA2X, fastA2Y, fastA3X, fastA3Y, fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y;
float rewA1X, rewA1Y, rewA2X, rewA2Y, rewA3X, rewA3Y, rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y, stopX, stopY, stopW, stopH;
float nextA1X, nextA1Y, nextA2X, nextA2Y, nextA3X, nextA3Y, nextBX, nextBY, nextBW, nextBH, loopX, loopY, loopD;
float backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y, backBX, backBY, backBW, backBH;

void setup() {
  fullScreen();
  population();
  minim = new Minim(this);
  song1 = minim.loadFile("Music/Stairway - Patrick Patrikios.mp3");
  song1.play();
  fill(reallyblack);
  rect(backgroundX, backgroundY, backgroundW, backgroundH);
  //
  fill(white);
  rect(listX, listY, listW, listH);
  //
  fill(white);
  rect(song1X, song1Y, song1W, song1H);
  rect(song2X, song2Y, song2W, song2H);
  rect(song3X, song3Y, song3W, song3H);
  rect(song4X, song4Y, song4W, song4H);
  rect(song5X, song5Y, song5W, song5H);
  rect(song6X, song6Y, song6W, song6H);
  rect(song7X, song7Y, song7W, song7H);
  rect(song8X, song8Y, song8W, song8H);
  rect(song9X, song9Y, song9W, song9H);
  rect(song10X, song10Y, song10W, song10H);
  //
  fill(white);
  rect(songImgX, songImgY, songImgW, songImgH);
  rect(timeSX, timeSY, timeSW, timeSH);
  rect(songNX, songNY, songNW, songNH);
  //
  fill(black);
  ellipse(playCX, playCY, playCD, playCD);
  fill(green);
  triangle(play1X, play1Y, play2X, play2Y, play3X, play3Y);
  fill(white);
  triangle(fastA1X, fastA1Y, fastA2X, fastA2Y, fastA3X, fastA3Y);
  fill(white);
  triangle(fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y);
  fill(white);
  triangle(rewA1X, rewA1Y, rewA2X, rewA2Y, rewA3X, rewA3Y);
  fill(white);
  triangle(rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y);
  //
  fill(white);
  rect(stopX, stopY, stopW, stopH);
  //
  fill(green);
  triangle(nextA1X, nextA1Y, nextA2X, nextA2Y, nextA3X, nextA3Y);
  fill(green);
  rect(nextBX, nextBY, nextBW, nextBH);
  fill(green);
  triangle(backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y);
  fill(green);
  rect(backBX, backBY, backBW, backBH);
  //
  fill(black);
  ellipse(loopX, loopY, loopD, loopD);
   textDraw2();
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { 
    quitButtonColour = white;
  } else { 
    quitButtonColour = red;
  } 
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textDraw(); //work on making the actual video player using shapes and stuff.
  //MAKE THE BACKGROUND BLACK AND THE TEXT WHITE
}


void draw() {
}//End draw()

void mousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
  //
  if (mouseX>fastB1X && mouseX<fastB1X+fastB2X+fastB3X && mouseY>fastB1Y && mouseY<fastB1Y+fastB2Y+fastB3Y) song1.skip(1000); 
  if (mouseX>rewB1X && mouseX<rewB1X+rewB2X+rewB3X && mouseY>rewB1Y && mouseY<rewB1Y+rewB2Y+rewB3Y) song1.skip(-1000); 
  //
  if (mouseX>play1X && mouseX<play1X+play2X+play3X && mouseY>play1Y && mouseY<play1Y+play2Y+play3Y) {//Play-Pause Button
    if ( song1.isPlaying() ) {
      song1.pause();
    } else if ( song1.position() == song1.length() ) {//.legnth() = end
      song1.rewind();
      song1.play();
    } else {
      song1.play();
    }
  }
  if (mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH) {
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else { //Song is not Playing
      song1.rewind();
    }
  }
  if (mouseX>loopX && mouseX<loopX+loopD && mouseY>loopY && mouseY<loopY+loopD) song1.loop(loopIntNum);
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
  if ( key == 'f' || key == 'F') song1.skip(1000); 
  if ( key == 'r' || key == 'R') song1.skip(-1000); 
  if ( key == 'l' || key == 'L' ) song1.loop(loopIntNum);
}
