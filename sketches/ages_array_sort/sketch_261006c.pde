int[] ages = {35, 35, 24, 22, 21, 20, 20, 15, 107, 21};

void setup() {
  Average();
  BubbleSort();
  printArray(ages);
}

void Average() {
  int average = 0;

  for (int i = 0; i < ages.length; i++) {
    average += ages[i];
  }

  average = average / ages.length;
  println(average);
}
