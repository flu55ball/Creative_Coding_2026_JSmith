
import ddf.minim.*;
PImage img;
int framesize = 10;
int barsize = 10;
Rain[] r = new Rain[2500];


Minim minim;
AudioInput in;

Border border;
Image monster;

void setup() {
  size(700, 700);
  surface.setResizable(true);
  
  img = loadImage("creepySanta_2.png");
  border = new Border();
  monster = new Image(img);
  
  minim = new Minim(this);
  in = minim.getLineIn();
  
  for(int i =0; i < r.length; i ++){
  r[i] = new Rain((int)random(0, width),(int)random(0,height),(int)random(1,3));
  }
}


void draw(){
  background(0);
  
  float audioLevel = in.left.level();
  if(audioLevel*1000>50){
  drawImage();
  }
  
  
  for(int i =0; i < r.length; i ++){
  Rain x = r[i];
  x.Update();
  x.Render();
  }
    
  border.Render();
  
  fill (255,0,0);
  rect( framesize, height-barsize-framesize, in.left.level()*width*10, barsize);
  //rect( 0, 100, in.right.level()*width, 100 );
  fill (0,0,0);
  //text("Audio level: " + nf(audioLevel*1000, 1, 3), 10, height-2.5);
  //fill (0,0,0);
  //text("test test test test", 10, 300); 
}

void windowResized() {
  for (int i = 0; i < r.length; i++) {
    r[i].pos.x = random(0, width);
    r[i].pos.y = random(0, height);
  }
}

void drawImage() {
  monster.Render();
}
