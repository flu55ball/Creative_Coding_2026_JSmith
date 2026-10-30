//int bulbSize = 220;
//int posX = 250 ; 
//int upperBulbSize = 150;
//float hoverOffset = (posX * 0.5);

class Bulb {
  // Fields: values stored by each Bulb object
  int posX;
  int upperBulbSize;
  int bulbSize;
  float hoverOffset;

  // Constructor: runs when we create a Bulb with new Bulb()
  Bulb() {
    posX = width/2;
    upperBulbSize = 150;
    bulbSize = 220;
    hoverOffset = posX * 0.5;
  }
  void display() {
    fill(255); 
    rect(245, -25, 10, 50); //wire
    circle(posX, 100, bulb.upperBulbSize); //bulbtop
    rect(175, 100, upperBulbSize, upperBulbSize); //bulbmid
    if(mouseX >= (posX - hoverOffset)
    && mouseX <= (posX + hoverOffset)
    && mouseY >= (posX - hoverOffset)
    && mouseY <= (posX + hoverOffset))
    
   {
    bulb.bulbSize = 280;
    fill(255, 162, 10);
    } else {
      bulb.bulbSize=220;
      fill(255);
    }
    circle(bulb.posX, 260, bulb.bulbSize); //bulb
      
  }
}


Bulb bulb;

void setup() {
  size(500, 500);
  surface.setResizable(true);
  bulb = new Bulb();
  background(220);
}


void draw() {
  background(220); 
  bulb.display();

}
