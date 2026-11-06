int[] ages = {35, 35, 24, 22, 21, 20, 20, 15, 107, 21};
int barwidth = 8;
int barspacing = 10;
int barlength = 4;


void setup() {
  size(500, 500);
  BubbleSort();
  Average();
  printArray(ages);
}

void Average() {
  int average = 0;

  for (int i = 0; i < ages.length; i++)
  {
    average += ages[i];
  }

fill(255);

for (int i = 0; i < ages.length; i++) { // Read one array element each time through the for loop
  rect(0, i*barspacing, ages[i]*barlength, barwidth);
  text(ages[i], ages[i]*barlength + 5, i*barspacing + barwidth);
} 

  average = average / ages.length;
  println(average);
}
