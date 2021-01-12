import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Variables
Minim minim;
int numberOfSongs = 10;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
PImage pic1;
int currentSong = numberOfSongs - numberOfSongs;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color white=#FFFFFF, reallyblack=#000000, red=#FF0000, quitButtonColour, green=#20AF25, black=#1C1C1C;
float backgroundX, backgroundY, backgroundW, backgroundH, listX, listY, listW, listH, picX1, picY1, picWidth1, picHeight1, picImageWidthRatio1, picImageHeightRatio1;
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
  pic1 = loadImage("Music/download.png");
  population();
  minim = new Minim(this);

  song[currentSong] = minim.loadFile("Music/Stairway - Patrick Patrikios.mp3");
  song[currentSong+=1] = minim.loadFile("Music/Yah Yah - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("Music/Simple - Patrick Patrikios.mp3");
  song[currentSong+=1] = minim.loadFile("Music/Muriel - Bobby Richards.mp3");
  song[currentSong+=1] = minim.loadFile("Music/Lights - Patrick Patrikios.mp3");
  song[currentSong+=1] = minim.loadFile("Music/Just Dance - Patrick Patrikios.mp3");
  song[currentSong+=1] = minim.loadFile("Music/June - Bobby Richards.mp3");
  song[currentSong+=1] = minim.loadFile("Music/Feels - Patrick Patrikios.mp3");
  song[currentSong+=1] = minim.loadFile("Music/Calvin Harris - josh pan.mp3");
  song[currentSong+=1] = minim.loadFile("Music/Brass Orchid - Bobby Richards.mp3");
  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i=currentSong; i<numberOfSongs; i++) {
    songMetaData[i] = song[i].getMetaData();
  }
  //
  font = createFont ("Arial", 55);
  //
  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press keyboard to test: P, etc.");
  //
  for (int i=currentSong; i<numberOfSongs; i++) {
    println("File Name: ", songMetaData[i].fileName());
    println("Song Length (in milliseconds); ", songMetaData[i].length());
    println("Song Length (in seconds): ", songMetaData[i].length()/1000);
    println("Song Length (in minutes and seconds): ", songMetaData[i].length()/1000/60, "minutes", (songMetaData[i].length()/1000)-(songMetaData[i].length()/1000/60*60), "seconds");
    println("Song Title: ", songMetaData[i].title());
    println("Author: ", songMetaData[i].author());
    println("Composer: ", songMetaData[i].composer());
    println("Orchestra: ", songMetaData[i].orchestra());
    println("Album: ", songMetaData[i].album());
    println("Disk: ", songMetaData[i].disc());
    println("Publisher: ", songMetaData[i].publisher());
    println("Date Release: ", songMetaData[i].date());
    println("Copyright: ", songMetaData[i].copyright());
    println("Comments: ", songMetaData[i].comment());
    println("Lyrics: ", songMetaData[i].lyrics());
    println("Track: ", songMetaData[i].track());
    println("Genre: ", songMetaData[i].genre());
    println("Encoded: ", songMetaData[i].encoded());
  }
  //
  song[currentSong].play();
  fill(reallyblack);
  rect(backgroundX, backgroundY, backgroundW, backgroundH);
  //
  fill(white);
  rect(listX, listY, listW, listH);
  //
  fill(black);
  rect(song1X, song1Y, song1W, song1H);
  textDraw3();
  fill(black);
  rect(song2X, song2Y, song2W, song2H);
  textDraw4();
  fill(black);
  rect(song3X, song3Y, song3W, song3H);
  textDraw5();
  fill(black);
  rect(song4X, song4Y, song4W, song4H);
  textDraw6();
  fill(black);
  rect(song5X, song5Y, song5W, song5H);
  textDraw7();
  fill(black);
  rect(song6X, song6Y, song6W, song6H);
  textDraw8();
  fill(black);
  rect(song7X, song7Y, song7W, song7H);
  textDraw9();
  fill(black);
  rect(song8X, song8Y, song8W, song8H);
  textDraw10();
  fill(black);
  rect(song9X, song9Y, song9W, song9H);
  textDraw11();
  fill(black);
  rect(song10X, song10Y, song10W, song10H);
  textDraw12();
  //
  fill(white);
  rect(songImgX, songImgY, songImgW, songImgH);
  image(pic1, picX1, picY1, picWidth1, picHeight1);
  rect(timeSX, timeSY, timeSW, timeSH);
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
  textDraw(); //configure the buttons
}

void draw() {
  fill(black);
  rect(width*3/15, height*9/15, width*4.7/15, height*1/15);
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 45); 
  text(songMetaData[0].title(), width*3/15, height*9/15, width*4.7/15, height*1/15);
  fill(255);
}

void mousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
  //
  if (mouseX>fastB1X && mouseX<fastB1X+fastB2X+fastB3X && mouseY>fastB1Y && mouseY<fastB1Y+fastB2Y+fastB3Y) song[currentSong].skip(1000); 
  if (mouseX>rewB1X && mouseX<rewB1X+rewB2X+rewB3X && mouseY>rewB1Y && mouseY<rewB1Y+rewB2Y+rewB3Y) song[currentSong].skip(-1000); 
  //
  if (mouseX>play1X && mouseX<play1X+play2X+play3X && mouseY>play1Y && mouseY<play1Y+play2Y+play3Y) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  //
  if (mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { 
      song[currentSong].rewind();
    }
  }
  //
  if (mouseX>loopX && mouseX<loopX+loopD && mouseY>loopY && mouseY<loopY+loopD) song[currentSong].loop(loopIntNum);
  //
}

void keyPressed() {
  //
  if ( key == 'p' || key == 'P' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
    if (currentSong == 0) { 
      text(String textDraw3());
    } else { 
      text(songMetaData[currentSong].title(), width*3/15, height*9/15, width*4.7/15, height*1/15 );
    }
  }
  //
  if (key == 's' || key == 'S') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { //Song is not Playing
      song[currentSong].rewind();
    }
  }
  //
  if ( key == 'f' || key == 'F') song[currentSong].skip(1000); 
  if ( key == 'r' || key == 'R') song[currentSong].skip(-1000); 
  //
  if ( key == 'l' || key == 'L' ) song[currentSong].loop(loopIntNum);
  //
  if ( key == 'n' || key == 'N' ) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs-1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs-1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }
    }
  }
  //
  if (key == 'b' || key == 'B') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }
}
