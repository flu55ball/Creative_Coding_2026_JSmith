

<h1><b>Creative_Coding_2026_JSmith</b></h1>

<h2><b>BulbMouseInteraction</b></h2>


### [BulbMouseInteraction.pde](sketches/BulbMouseInteraction/BulbMouseInteraction.pde)

### Overview 
Created a interactive bulb using processing and java. When the mouse is within a certain area, it changes the size and colour of a circle on the bulb.

- Bulb bulb; Declares a variable named bulb whose type is Bulb. The object is created later by bulb = new Bulb(); in setup()

- void setup() { is a "method" that runs once when the sketch starts. is runs size, creates a bulb object and sets background colour

- I made the sketch window resizable using   surface.setResizable(true);, 

- void draw() { runs every frame

- bulb.display(); runs the method within the bulb class to display the bulb object

### [Bulb_Class.pde](sketches/BulbMouseInteraction/Bulb_Class.pde)

- class Bulb { defines a class called Bulb

- **int** is the data type for whole numbers

- **float** is the data type for decimal value

- Added **private and public** "Access level modifiers" to the variables

- I set posX, upperBulbSize and bulbSize as **private fields** because they are internal values managed by the Bulb class

- I set hoverRadius as a public field so that the setup() method can set it directly from outside the Bulb class.
  (In a standard Java program, making this field private would prevent a separate class from changing it directly.
  _As far as I understand, this isn't demonstratable within Processing as the sketch code is wrapped in an enclosing class_

- Bulb() { defines the constructor and sets starting values

- void display() { defines a method which displays the bulb object

- if () the distance between mouse location and the bulb circle() location is less than hoverRadius, set the bulb size to 280 and fill it orange.
  Else, set the bulb size to 220 and fill it white.

- Using "mouseX" & "mouseY" allows us to track the position of the cursor.

- I update posX using width / 2 inside display() so the bulb’s horizontal centre follows the window width

#### Reflection

My goal for this exercise was to expand on the class work by making the window resizable, keeping the bulb centred on screen and creating a Bulb class. 
If I were going to do it again, I would approach the calculations for the bulb shape, the bulb shape's location in a more efficient way 
 


<h2><b>rising_bubbles</b></h2>

### [RisingBubbles.pde](sketches/Rising_Bubbles/Rising_Bubbles.pde)

### Overview 
Creates a hundred bubbles on the screen moving slowly upwards that loops.

- Bubble[] b = new Bubble[100]; declares an array variable called b and creates an array with 100 slots that can hold Bubble objects.

- An **array** is a variable that holds multiple items of the same type in numbered slots. (a numbered list)

- A **String** is a data type that stores text

- for(int i =0; i < b.length; i ++){ is astandard for loop goes through the array one slot at a time, from index 0 to the last slot. It uses the array’s length to know when to stop.

- b[i] = new Bubble( creates a Bubble object with its starting position and size, then stores it in array slot i

- void setup() { is a "method" that runs once when the sketch starts. is runs size, creates a bulb object and sets background colour
  
- void draw() { runs every frame

- for(int i =0; i < b.length; i ++){
 Bubble x = b[i];
 x.Update();
 x.Render();
 This loop visits each array slot, gets the Bubble object stored there as x, updates it and renders it

### [Bubble_Class.pde](sketches/Rising_Bubbles/Bubble_Class.pde)

- I created a class called Bubble
 
- PVector pos; pos stores the bubble’s x and y location using the PVector is a vector type

- Bubble(int x, int y, int size) defines the constructor for the Bubble class. x, y, and size from the three values in b[i] = new Bubble()

- pos = new PVector (x,y); create the new location of each bubble

- this.size=size; defines the size of each bubble

- void Update () is called once per frame and subtracts 1 from the bubble’s y-position, moving it up by one pixel each frame.

- void Render () draws an ellipse every frame

## AgesArray

### Overview 

Sorts a list of ages using a bubblesort the pints them. The displays the ages in a bar graph then bubble sorts the bar graph.


### [AgesArrayAverageBubbleSort.pde](sketches/RisingBubbles/AgesArrayAverageBubbleSort.pde)

- int[] ages = integer array called ages & integer variables for barwidth, barspacing and barlength

- void setup() runs once when the sketch starts.

  - size() creates the canvas , Average() calculates the average and draws the bars and their labels, BubbleSort() sorts the values in the ages array , printArray(ages) prints the array after it has been sorted.
 
- void Average() {

- fill(255); sets colour of bars and numbers below

- for () loop to go through all the values to create a rect() and text() for each


### [sorting.pde](sketches/RisingBubbles/sorting.pde)

- void BubbleSort()  defines a method that uses the bubble sort algorithm to sort the ages array in ascending order. 

