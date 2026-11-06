class Bubble { 
 
  PVector pos; 
  int size; 
  
  Bubble(int x, int y, int size) 
  {
    pos = new PVector (x,y);
    this.size=size;
       
  } 
  
  void Update ()
  {
  pos.y--; 
  if (pos.y + size / 2.0 < 0) {
  pos.y = height + size / 2.0;
  pos.x = random(0,width);
  }
}
  
  void Render () 
  {
  ellipse(pos.x, pos.y, size, size);
  }
  
} 
