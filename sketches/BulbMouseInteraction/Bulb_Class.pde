class Bulb {
  // Fields: values stored by each Bulb object
  int posX;
  int upperBulbSize;
  int bulbSize;
  float hoverOffset;

  // Constructor: runs when we create a Bulb with new Bulb()
  Bulb() {

  upperBulbSize = 150;
  bulbSize = 220;

  }
  void display() {
    posX = width / 2;
    hoverOffset = posX * 0.5;
    fill(255); 
    rect(posX - 10 /2 , -25, 10, 50); //wire
    circle(posX, 100, upperBulbSize); //bulbtop
    rect(posX - upperBulbSize /2 , 100, upperBulbSize, upperBulbSize); //bulbmid
    if (dist(posX, 260 ,mouseX, mouseY) < 110) {
    bulbSize = 280;
    fill(255, 162, 10);
    } else {
      bulbSize=220;
      fill(255);
    }
    circle(posX, 260, bulbSize); //bulb
      
  }
}
