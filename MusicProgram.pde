import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Variables
Minim minim;
AudioPlayer snip;
int numberOfSongs = 10;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
PImage pic1;
int currentSong = numberOfSongs - numberOfSongs;
int loopBegin;
int loopEnd;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float helpX, helpY, helpW, helpH;
color white=#FFFFFF, reallyblack=#000000, red=#FF0000, green=#04C602, black=#1C1C1C, buttonC;
float backgroundX, backgroundY, backgroundW, backgroundH, listX, listY, listW, listH, picX1, picY1, picWidth1, picHeight1, picImageWidthRatio1, picImageHeightRatio1;
float A1X, A1Y, A2X, A2Y, A3X, A3Y, B1X, B1Y, B2X, B2Y, B3X, B3Y, C1X, C1Y, C2X, C2Y, C3X, C3Y, D1X, D1Y, D2X, D2Y, D3X, D3Y, E1X, E1Y, E2X, E2Y, E3X, E3Y;
float F1X, F1Y, F2X, F2Y, F3X, F3Y, G1X, G1Y, G2X, G2Y, G3X, G3Y, H1X, H1Y, H2X, H2Y, H3X, H3Y, I1X, I1Y, I2X, I2Y, I3X, I3Y, J1X, J1Y, J2X, J2Y, J3X, J3Y;
float arecx, arecy, arecw, arech, brecx, brecy, brecw, brech, crecx, crecy, crecw, crech, drecx, drecy, drecw, drech, erecx, erecy, erecw, erech;
float frecx, frecy, frecw, frech, grecx, grecy, grecw, grech, hrecx, hrecy, hrecw, hrech, irecx, irecy, irecw, irech, jrecx, jrecy, jrecw, jrech;
float song1X, song1Y, song1W, song1H, song2X, song2Y, song2W, song2H, song3X, song3Y, song3W, song3H, song4X, song4Y, song4W, song4H;
float song5X, song5Y, song5W, song5H, song6X, song6Y, song6W, song6H, song7X, song7Y, song7W, song7H, song8X, song8Y, song8W, song8H;
float song9X, song9Y, song9W, song9H, song10X, song10Y, song10W, song10H, songImgX, songImgY, songImgW, songImgH;
float timeSX, timeSY, timeSW, timeSH, songNX, songNY, songNW, songNH, play1X, play1Y, play2X, play2Y, play3X, play3Y, playCX, playCY, playCD;
float fastA1X, fastA1Y, fastA2X, fastA2Y, fastA3X, fastA3Y, fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y;
float rewA1X, rewA1Y, rewA2X, rewA2Y, rewA3X, rewA3Y, rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y, stopX, stopY, stopW, stopH;
float nextA1X, nextA1Y, nextA2X, nextA2Y, nextA3X, nextA3Y, nextBX, nextBY, nextBW, nextBH, loopX, loopY, loopD;
float backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y, backBX, backBY, backBW, backBH, muteX, muteY, muteW, muteH;
float backrecX, backrecY, backrecW, backrecH, nextrecX, nextrecY, nextrecW, nextrecH, looprecX, looprecY, looprecW, looprecH, fastrecX, fastrecY, fastrecW, fastrecH, rewrecX, rewrecY, rewrecW, rewrecH, playrecX, playrecY, playrecW, playrecH;
Boolean nextOn=false, backOn=false, playOn=false, fastOn=false, rewOn=false, stopOn=false, loopOn=false;

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
  rect(arecx, arecy, arecw, arech);
  triangle(A1X, A1Y, A2X, A2Y, A3X, A3Y);
  rect(brecx, brecy, brecw, brech);
  triangle(B1X, B1Y, B2X, B2Y, B3X, B3Y);
  rect(crecx, crecy, crecw, crech);
  triangle(C1X, C1Y, C2X, C2Y, C3X, C3Y);
  rect(drecx, drecy, drecw, drech);
  triangle(D1X, D1Y, D2X, D2Y, D3X, D3Y);
  rect(erecx, erecy, erecw, erech);
  triangle(E1X, E1Y, E2X, E2Y, E3X, E3Y);
  rect(frecx, frecy, frecw, frech);
  triangle(F1X, F1Y, F2X, F2Y, F3X, F3Y);
  rect(grecx, grecy, grecw, grech);
  triangle(G1X, G1Y, G2X, G2Y, G3X, G3Y);
  rect(hrecx, hrecy, hrecw, hrech);
  triangle(H1X, H1Y, H2X, H2Y, H3X, H3Y);
  rect(irecx, irecy, irecw, irech);
  triangle(I1X, I1Y, I2X, I2Y, I3X, I3Y);
  rect(jrecx, jrecy, jrecw, jrech);
  triangle(J1X, J1Y, J2X, J2Y, J3X, J3Y);
  //
  fill(white);
  rect(songImgX, songImgY, songImgW, songImgH);
  image(pic1, picX1, picY1, picWidth1, picHeight1);
  rect(timeSX, timeSY, timeSW, timeSH);
  //
  fill(reallyblack);
  rect(backrecX, backrecY, backrecW, backrecH);
  fill(green);
  triangle(backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y);
  fill(green);
  rect(backBX, backBY, backBW, backBH);
  //
  fill(reallyblack);
  rect(looprecX, looprecY, looprecW, looprecH);
  fill(black);
  ellipse(loopX, loopY, loopD, loopD);
  textDraw2();
  //
}

void draw() {
  fill(black);
  rect(timeSX, timeSY, timeSW, timeSH);
  fill(green);
  float posx = map(song[currentSong].position(), 115, song[currentSong].length(), 375, 775);
  strokeWeight(10);
  line(posx, 512, 775, 512);
  strokeWeight(5);
  ellipse(posx, 512, 20, 20);
  //
  /*
  fill(255);
  text("Loop Count: " + snip.loopCount(), 5, 20);
  text("Looping: " + snip.isLooping(), 5, 40);
  text("Playing: " + snip.isPlaying(), 5, 60);
  int p = snip.position();
  int l = snip.length();
  text("Position: " + p, 5, 80);
  text("Length: " + l, 5, 100);
  float x = map(p, 0, l, 0, width);
  stroke(255);
  line(x, height/2 - 50, x, height/2 + 50);
  float lbx = map(loopBegin, 0, snip.length(), 0, width);
  float lex = map(loopEnd, 0, snip.length(), 0, width);
  stroke(0, 255, 0);
  line(lbx, 0, lbx, height);
  stroke(255, 0, 0);
  line(lex, 0, lex, height);
  */
  //
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) { 
    buttonC = red;
  } else { 
    buttonC = white;
  } 
  strokeWeight(1);
  fill(buttonC);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textDraw(); 
  //
  fill(black);
  rect(muteX, muteY, muteW, muteH);
  textDraw13();
  //
  strokeWeight(1);
  fill(reallyblack);
  rect(width*3/15, height*9/15, width*4.7/15, height*1/15);
  fill(white); 
  textAlign (CENTER, CENTER); 
  textFont(font, 35); 
  text(songMetaData[currentSong].title(), width*3/15, height*9/15, width*4.7/15, height*1/15);
  fill(255);
  //
  if (mouseX>playrecX && mouseX<playrecX+playrecW && mouseY>playrecY && mouseY<playrecY+playrecH) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(reallyblack);
  rect(playrecX, playrecY, playrecW, playrecH); 
  fill(black);
  ellipse(playCX, playCY, playCD, playCD);
  fill(buttonC);
  triangle(play1X, play1Y, play2X, play2Y, play3X, play3Y);
  //
  if (mouseX>fastrecX && mouseX<fastrecX+fastrecW && mouseY>fastrecY && mouseY<fastrecY+fastrecH) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(reallyblack);
  rect(fastrecX, fastrecY, fastrecW, fastrecH);
  fill(buttonC);
  triangle(fastA1X, fastA1Y, fastA2X, fastA2Y, fastA3X, fastA3Y);
  fill(buttonC);
  triangle(fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y);
  //
  if (mouseX>rewrecX && mouseX<rewrecX+rewrecW && mouseY>rewrecY && mouseY<rewrecY+rewrecH) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(reallyblack);
  rect(rewrecX, rewrecY, rewrecW, rewrecH);
  fill(buttonC);
  triangle(rewA1X, rewA1Y, rewA2X, rewA2Y, rewA3X, rewA3Y);
  fill(buttonC);
  triangle(rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y);
  //
  if (mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH) {
    buttonC = red;
  } else {
    buttonC = white;
  }
  fill(buttonC);
  rect(stopX, stopY, stopW, stopH);
  //
  if (mouseX>nextrecX && mouseX<nextrecX+nextrecW && mouseY>nextrecY && mouseY<nextrecY+nextrecH) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(reallyblack);
  rect(nextrecX, nextrecY, nextrecW, nextrecH);
  fill(buttonC);
  triangle(nextA1X, nextA1Y, nextA2X, nextA2Y, nextA3X, nextA3Y);
  fill(buttonC);
  rect(nextBX, nextBY, nextBW, nextBH);
  //
  if (mouseX>backrecX && mouseX<backrecX+backrecW && mouseY>backrecY && mouseY<backrecY+backrecH) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(reallyblack);
  rect(backrecX, backrecY, backrecW, backrecH);
  fill(buttonC);
  triangle(backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y);
  fill(buttonC);
  rect(backBX, backBY, backBW, backBH);
  //
  if (mouseX>arecx && mouseX<arecx+arecw && mouseY>arecy && mouseY<arecy+arech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(arecx, arecy, arecw, arech);
  fill(buttonC);
  triangle(A1X, A1Y, A2X, A2Y, A3X, A3Y);
  //
  if (mouseX>brecx && mouseX<brecx+brecw && mouseY>brecy && mouseY<brecy+brech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(brecx, brecy, brecw, brech);
  fill(buttonC);
  triangle(B1X, B1Y, B2X, B2Y, B3X, B3Y);
  //
  if (mouseX>crecx && mouseX<crecx+crecw && mouseY>crecy && mouseY<crecy+crech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(crecx, crecy, crecw, crech);
  fill(buttonC);
  triangle(C1X, C1Y, C2X, C2Y, C3X, C3Y);
  //
  if (mouseX>drecx && mouseX<drecx+drecw && mouseY>drecy && mouseY<drecy+drech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(drecx, drecy, drecw, drech);
  fill(buttonC);
  triangle(D1X, D1Y, D2X, D2Y, D3X, D3Y);
  //
  if (mouseX>erecx && mouseX<erecx+erecw && mouseY>erecy && mouseY<erecy+erech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(erecx, erecy, erecw, erech);
  fill(buttonC);
  triangle(E1X, E1Y, E2X, E2Y, E3X, E3Y);
  //
  if (mouseX>frecx && mouseX<frecx+frecw && mouseY>frecy && mouseY<frecy+frech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(frecx, frecy, frecw, frech);
  fill(buttonC);
  triangle(F1X, F1Y, F2X, F2Y, F3X, F3Y);
  //
  if (mouseX>grecx && mouseX<grecx+grecw && mouseY>grecy && mouseY<grecy+grech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(grecx, grecy, grecw, grech);
  fill(buttonC);
  triangle(G1X, G1Y, G2X, G2Y, G3X, G3Y);
  //
  if (mouseX>hrecx && mouseX<hrecx+hrecw && mouseY>hrecy && mouseY<hrecy+hrech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(hrecx, hrecy, hrecw, hrech);
  fill(buttonC);
  triangle(H1X, H1Y, H2X, H2Y, H3X, H3Y);
  //
  if (mouseX>irecx && mouseX<irecx+irecw && mouseY>irecy && mouseY<irecy+irech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(irecx, irecy, irecw, irech);
  fill(buttonC);
  triangle(I1X, I1Y, I2X, I2Y, I3X, I3Y);
  //
  if (mouseX>jrecx && mouseX<jrecx+jrecw && mouseY>jrecy && mouseY<jrecy+jrech) {
    buttonC = green;
  } else {
    buttonC = white;
  }
  fill(black);
  rect(jrecx, jrecy, jrecw, jrech);
  fill(buttonC);
  triangle(J1X, J1Y, J2X, J2Y, J3X, J3Y);
}

void mousePressed() {
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
  //
  if (mouseX>playrecX && mouseX<playrecX+playrecW && mouseY>playrecY && mouseY<playrecY+playrecH) {
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
  if (mouseX>fastrecX && mouseX<fastrecX+fastrecW && mouseY>fastrecY && mouseY<fastrecY+fastrecH) song[currentSong].skip(1000);
  //
  if (mouseX>rewrecX && mouseX<rewrecX+rewrecW && mouseY>rewrecY && mouseY<rewrecY+rewrecH) song[currentSong].skip(-1000); 
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
  if (mouseX>looprecX && mouseX<looprecX+looprecW && mouseY>looprecY && mouseY<looprecY+looprecH) song[currentSong].loop(loopIntNum);
  //
  if (mouseX>nextrecX && mouseX<nextrecX+nextrecW && mouseY>nextrecY && mouseY<nextrecY+nextrecH) {
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
  if (mouseX>backrecX && mouseX<backrecX+backrecW && mouseY>backrecY && mouseY<backrecY+backrecH) {
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
  //
  if (mouseX>muteX && mouseX<muteX+muteW && mouseY>muteY && mouseY<muteY+muteH) {
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }
  //
  /*
 int ms = (int)map(mouseX, 0, width, 0, snip.length());
  if ( mouseButton == RIGHT )
  {
    snip.setLoopPoints(loopBegin, ms);
    loopEnd = ms;
  } else
  {
    snip.setLoopPoints(ms, loopEnd);
    loopBegin = ms;
  }
 snip.loop(2);
 */
    //
    if (mouseX>arecx && mouseX<arecx+arecw && mouseY>arecy && mouseY<arecy+arech) {
    /*if ( song[0].isPlaying() ) {
     song[0].pause();
     } else if ( song[0].position() == song[0].length() ) {
     song[0].rewind();
     song[0].play();
     } else {
     song[0].play();
     }*/
  }
  //
  if (mouseX>brecx && mouseX<brecx+brecw && mouseY>brecy && mouseY<brecy+brech) {
    /*if ( song[1].isPlaying() ) {
     song[1].pause();
     } else if ( song[1].position() == song[1].length() ) {
     song[1].rewind();
     song[1].play();
     } else {
     song[1].play();
     }*/
  }
  //
  if (mouseX>crecx && mouseX<crecx+arecw && mouseY>crecy && mouseY<crecy+crech) {
    /*if ( song[2].isPlaying() ) {
     song[2].pause();
     } else if ( song[2].position() == song[2].length() ) {
     song[2].rewind();
     song[2].play();
     } else {
     song[2].play();
     }*/
  }
  //
  if (mouseX>drecx && mouseX<drecx+drecw && mouseY>drecy && mouseY<drecy+drech) {
    /*if ( song[3].isPlaying() ) {
     song[3].pause();
     } else if ( song[3].position() == song[3].length() ) {
     song[3].rewind();
     song[3].play();
     } else {
     song[3].play();
     }*/
  }
  //
  if (mouseX>erecx && mouseX<erecx+erecw && mouseY>erecy && mouseY<erecy+erech) {
    /* if ( song[4].isPlaying() ) {
     song[4].pause();
     } else if ( song[4].position() == song[4].length() ) {
     song[4].rewind();
     song[4].play();
     } else {
     song[4].play();
     }*/
  }
  //
  if (mouseX>frecx && mouseX<frecx+frecw && mouseY>frecy && mouseY<frecy+frech) {
    /* if ( song[5].isPlaying() ) {
     fill(white); 
     textAlign (CENTER, CENTER); 
     textFont(font, 35); 
     text(songMetaData[currentSong].title(), width*3/15, height*9/15, width*4.7/15, height*1/15);
     fill(255);
     song[5].pause();
     } else if ( song[5].position() == song[5].length() ) {
     song[5].rewind();
     song[5].play();
     } else {
     song[5].play();
     }*/
  }
  //
  if (mouseX>grecx && mouseX<grecx+grecw && mouseY>grecy && mouseY<grecy+grech) {
    /*if ( song[6].isPlaying() ) {
     fill(white); 
     textAlign (CENTER, CENTER); 
     textFont(font, 35); 
     text(songMetaData[currentSong].title(), width*3/15, height*9/15, width*4.7/15, height*1/15);
     fill(255);
     song[6].pause();
     } else if ( song[6].position() == song[6].length() ) {
     song[6].rewind();
     song[6].play();
     } else {
     song[6].play();
     }*/
  }
  //
  if (mouseX>hrecx && mouseX<hrecx+hrecw && mouseY>hrecy && mouseY<hrecy+hrech) {
    /*if ( song[7].isPlaying() ) {
     fill(white); 
     textAlign (CENTER, CENTER); 
     textFont(font, 35); 
     text(songMetaData[currentSong].title(), width*3/15, height*9/15, width*4.7/15, height*1/15);
     fill(255);
     song[7].pause();
     } else if ( song[7].position() == song[7].length() ) {
     song[7].rewind();
     song[7].play();
     } else {
     song[7].play();
     }*/
  }
  //
  if (mouseX>irecx && mouseX<irecx+irecw && mouseY>irecy && mouseY<irecy+irech) {
    /*if ( song[8].isPlaying() ) {
     song[8].pause();
     } else if ( song[8].position() == song[8].length() ) {
     song[8].rewind();
     song[8].play();
     } else {
     song[8].play();
     }*/
  }
  //
  if (mouseX>jrecx && mouseX<jrecx+jrecw && mouseY>jrecy && mouseY<jrecy+jrech) {
    /*if ( song[9].isPlaying() ) {
     song[9].pause();
     } else if ( song[9].position() == song[9].length() ) {
     song[9].rewind();
     song[9].play();
     } else {
     song[9].play();
     }
     }*/
  }

  /*void keyPressed() {
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
   }
   //
   if (key == 's' || key == 'S') {
   if ( song[currentSong].isPlaying() ) {
   song[currentSong].pause();
   song[currentSong].rewind();
   } else { 
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
   //
   if ( key=='m' || key=='M' ) {
   if ( song[currentSong].isMuted() ) {
   song[currentSong].unmute();
   } else {
   song[currentSong].mute();
   }
   }
   //
   */
  println( "\nSong Position: ", "\t\t\t\t", song[currentSong].position(), "milliseconds" );
  println( "Song Position:", (song[currentSong].position()/1000)/60, "minutes\t", (song[currentSong].position()/1000)-((song[currentSong].position()/1000)/60 * 60), "seconds" );
}
