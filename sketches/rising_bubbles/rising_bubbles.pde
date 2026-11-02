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
  }
  
  void Render () 
  {
   ellipse(pos.x, pos.y, size, size);
  }
  
} 
