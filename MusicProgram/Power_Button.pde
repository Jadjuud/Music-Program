//Global Variables
color purple=#DE25F7, blue=#3687F5, red=#FC3912, green=#49F030, yellow=#FAE417, reset=#FFFFFF, buttonColour;
float powerButtonX, powerButtonY, powerButtondisplayWidth, powerButtondisplayHeight;
//
void powerButton() {
  //Population
  powerButtonX = displayWidth*29/32;
  powerButtonY = displayHeight*0/16;
  powerButtondisplayWidth = displayWidth*3/32;
  powerButtondisplayHeight = displayHeight*1/16;
  rect(powerButtonX, powerButtonY, powerButtondisplayWidth, powerButtondisplayHeight);
} //End powerButton()
//
void powerButtonDraw() {
  //Hoverover
  //Text
} //End powerButtonDraw()
//
void powerButtonMousePressed() {
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtondisplayWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtondisplayHeight) exit();
} //End powerButtonMousePressed()
