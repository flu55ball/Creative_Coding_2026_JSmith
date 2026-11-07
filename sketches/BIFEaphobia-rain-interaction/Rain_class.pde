class Rain { 
 
  PVector pos; 
  int size; 
  
  Rain(int x, int y, int size) 
  {
    pos = new PVector (x,y);
    this.size=size;
       
  } 
  
  void Update ()
  {
  pos.y+= random(3,10); 
  
  float radius = size / 2.0;
  float mouseRange = 50;

  if (mouseX > pos.x + radius && mouseX < pos.x + mouseRange) {
  pos.x -= 5;
  } else if (mouseX < pos.x - radius && mouseX > pos.x - mouseRange) {
  pos.x += 5;
}
  
  if (pos.y + size / 2.0 > height) {
  pos.y = 0 + size / 2.0;
  pos.x = random(0,width);
  }
}
  
  void Render () 
  {
  fill(255);
  noStroke();
  ellipse(pos.x, pos.y, size, size);
  }
  
} 
