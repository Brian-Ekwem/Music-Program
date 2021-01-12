String buttonText = "X";
String buttonText2 = "Loop";
String buttonText3 = "Stairway - Patrick Patrikios";
String buttonText4 = "Yah Yah - josh pan";
String buttonText5 = "Simple - Patrick Patrikios";
String buttonText6 = "Muriel - Bobby Richards";
String buttonText7 = "Lights - Patrick Patrikios";
String buttonText8 = "Just Dance - Patrick Patrikios";
String buttonText9 = "June - Bobby Richards";
String buttonText10 = "Feels - Patrick Patrikios";
String buttonText11 = "Calvin Harris - josh pan";
String buttonText12 = "Brass Orchid - Bobby Richards";
PFont font;
void textSetup() { 
  font = createFont ("Arial", 55);
}
void textDraw() { 
  fill(black); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(255);
}
void textDraw2() { 
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText2, loopX, loopY, loopD);
  fill(255);
}
void textDraw3() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText3, song1X, song1Y, song1W, song1H);
  fill(255);
}
void textDraw4() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText4, song2X, song2Y, song2W, song2H);
  fill(255);
}
void textDraw5() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText5, song3X, song3Y, song3W, song3H);
  fill(255);
}
void textDraw6() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText6, song4X, song4Y, song4W, song4H);
  fill(255);
}
void textDraw7() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText7, song5X, song5Y, song5W, song5H);
  fill(255);
}
void textDraw8() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText8, song6X, song6Y, song6W, song6H);
  fill(255);
}
void textDraw9() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText9, song7X, song7Y, song7W, song7H);
  fill(255);
}
void textDraw10() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText10, song8X, song8Y, song8W, song8H);
  fill(255);
}
void textDraw11() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText11, song9X, song9Y, song9W, song9H);
  fill(255);
}
void textDraw12() {
  fill(white); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 50);
  text(buttonText12, song10X, song10Y, song10W, song10H);
  fill(255);
}
