int bulbSize = 220;
int posX = 250 , size = 220;

void setup() {
  size(500, 500);
  background(220);
}

void draw() {
  background(220);
  fill(255);  
  rect(245, -25, 10, 50); //Wire
  circle(posX, 100, 150); //bulbtop
  rect(175, 100, 150, 150); //bulbmid
  //boolean something = false;
  if(mouseX >= (posX - (posX * 0.5))
  && mouseX <= (posX + (posX * 0.5))
  && mouseY >= (posX - (posX * 0.5))
  && mouseY <= (posX + (posX * 0.5)))
  
  {
  bulbSize = 280;
  fill(255, 162, 10);
  } else {
    bulbSize=220;
    fill(255);
  }
  circle(posX, 260, bulbSize); //bulb
  

}
