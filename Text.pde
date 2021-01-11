String buttonText = "X";
String buttonText2 = "Loop";
PFont font;
void textSetup() { 
  font = createFont ("Arial", 55);
}
void textDraw() { 
  fill(black); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 20);
  text(buttonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(255);
}
void textDraw2() { 
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 20);
  text(buttonText2, loopX, loopY, loopD);
  fill(255);
}
