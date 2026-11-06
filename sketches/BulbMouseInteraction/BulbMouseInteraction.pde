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
