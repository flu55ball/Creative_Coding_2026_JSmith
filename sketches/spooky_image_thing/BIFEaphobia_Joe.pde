
import ddf.minim.*;
PImage img;

Minim minim;
AudioInput in;

void setup() {
  size(500, 500);
  img = loadImage("lift logo.png");
  minim = new Minim(this);
  in = minim.getLineIn();
}

void draw()
{
  background(0);
  float audioLevel = in.left.level();
  image(img, 0, 0);
  text("Audio level: " + nf(audioLevel*1000, 1, 3), 10, 100);
  fill (255,0,0);
  rect( 0, 0, in.left.level()*width, 100 );
  rect( 0, 100, in.right.level()*width, 100 );
  fill (0,0,0);
  text("test test test test", 10, 300);
  
}
