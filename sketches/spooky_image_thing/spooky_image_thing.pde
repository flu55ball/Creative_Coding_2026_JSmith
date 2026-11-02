
import ddf.minim.*;

Minim minim;
AudioInput in;

void setup() {
  size(1024, 200);

  minim = new Minim(this);
  in = minim.getLineIn();
}

void draw()
{
  background(0);
  float audioLevel = in.left.level();
  text("Audio level: " + nf(audioLevel*1000, 1, 3), 10, 100);
  rect( 0, 0, in.left.level()*width, 100 );
  rect( 0, 100, in.right.level()*width, 100 );
  
}
