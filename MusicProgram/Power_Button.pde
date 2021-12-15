//Global Variables
String powerButton = "Power";
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
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtondisplayWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtondisplayHeight) {
    buttonColour = green;
    hoverOverButtonFill();
  } else {
    buttonColour = blue;
    hoverOverButtonFill();
  } 
  //Text
  textCode(powerButton, 30, powerButtonX, powerButtonY, powerButtondisplayWidth, powerButtondisplayHeight);
} //End powerButtonDraw()
//
void powerButtonMousePressed() {
  if (mouseX>powerButtonX && mouseX<powerButtonX+powerButtondisplayWidth && mouseY>powerButtonY && mouseY<powerButtonY+powerButtondisplayHeight) exit();
} //End powerButtonMousePressed()
//
void hoverOverButtonFill() {
    fill(buttonColour);
    noStroke();
    rect(powerButtonX, powerButtonY, powerButtondisplayWidth, powerButtondisplayHeight);
    stroke(1); //reset stroke to 1 pixel
    fill(reset);
} //End hoverOverButtonFill()
