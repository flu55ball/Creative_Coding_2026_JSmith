Bulb bulb; //declare a variable named bulb that can refer to a Bulb object

void setup() { // Runs once when the sketch starts
  size(500, 500); //set screen size
  surface.setResizable(true); // screen is resizable
  bulb = new Bulb(); // Creates a Bulb object called bulb
  background(220); //background colour
}


void draw() { //Runs every frame
  background(220); 
  bulb.display();

}
