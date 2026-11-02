void BubbleSort()
{
  for(int j =0; j < ages.length -1; j ++)
  {
    for(int i=0; i < ages.length -1; i++) {  
      int temp = 0;
      if( ages[i] > ages[i +1]) {
        temp = ages [ i+1];
        ages[i+1]=ages [i];
        ages [i] = temp;
      }
    }
  }
}
