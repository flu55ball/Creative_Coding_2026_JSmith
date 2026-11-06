
import ddf.minim.*;
PImage img;
int framesize = 10;
int barsize = 10;
Rain[] r = new Rain[1000];


Minim minim;
AudioInput in;

Border border;
Image monster;

void setup() {
  size(500, 500);
  surface.setResizable(true);
  
  img = loadImage("lift logo.png");
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
  
  border.Render();
  monster.Render();
  
  for(int i =0; i < r.length; i ++){
  Rain x = r[i];
  x.Update();
  x.Render();
  }
    
  float audioLevel = in.left.level();
  if(audioLevel*1000>50){
  drawImage();
  }
  
  fill (255,0,0);
  rect( framesize, height-barsize-framesize, in.left.level()*width*10, barsize);
  //rect( 0, 100, in.right.level()*width, 100 );
  fill (0,0,0);
  //text("Audio level: " + nf(audioLevel*1000, 1, 3), 10, height-2.5);
  //fill (0,0,0);
  //text("test test test test", 10, 300); 
}

void drawImage()
{
  image(img, 0, 0);
}
