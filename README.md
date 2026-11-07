

<h1><b>Creative_Coding_2026_JSmith</b></h1>

<h2><b>BulbMouseInteraction</b></h2>

### Overview 

Created a interactive bulb using processing and java. When the mouse is within a certain area, it changes the size and colour of a circle on the bulb.

### [BulbMouseInteraction.pde](sketches/BulbMouseInteraction/BulbMouseInteraction.pde)

- Bulb bulb; Declares a variable named bulb whose type is Bulb. The object is created later by bulb = new Bulb(); in setup()

- void setup() { is a "method" that runs once when the sketch starts. is runs size, creates a bulb object and sets background colour

- I made the sketch window resizable using   surface.setResizable(true);, 

- void draw() { runs every frame

- bulb.display(); runs the method within the bulb class to display the bulb object

### [Bulb_Class.pde](sketches/BulbMouseInteraction/Bulb_Class.pde)

- class Bulb { defines a class called Bulb

- **int** is the data type for whole numbers

- **float** is the data type for decimal value

- **boolean** is a data type that stores either true or false

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

### Overview 
Creates a hundred bubbles on the screen moving slowly upwards that loops.

### [rising_bubbles.pde](sketches/rising_bubbles/rising_bubbles.pde)


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

### [bubble_class.pde](sketches/rising_bubbles/bubble_class.pde)

- I created a class called Bubble
 
- PVector pos; pos stores the bubble’s x and y location using the PVector is a vector type

- Bubble(int x, int y, int size) defines the constructor for the Bubble class. x, y, and size from the three values in b[i] = new Bubble()

- pos = new PVector (x,y); create the new location of each bubble

- this.size=size; defines the size of each bubble

- void Update () is called once per frame and subtracts 1 from the bubble’s y-position, moving it up by one pixel each frame.

  -if (pos.y + size / 2.0 < 0) { pos.y = height + size / 2.0; if the location of the bottom of the circle is equal to the height of the screen plus the 

- void Render () draws an ellipse every frame

## AgesArray

### Overview 

Sorts a list of ages using a bubblesort the pints them. The displays the ages in a bar graph then bubble sorts the bar graph.


### [AgesArrayAverageBubbleSort.pde](sketches/AgesArrayAverageBubbleSort/AgesArrayAverageBubbleSort.pde)

- int[] ages = integer array called ages & integer variables for barwidth, barspacing and barlength

- void setup() runs once when the sketch starts.

  - size() creates the canvas , Average() calculates the average and draws the bars and their labels, BubbleSort() sorts the values in the ages array , printArray(ages) prints the array after it has been sorted.
 
- void Average() {

- fill(255); sets colour of bars and numbers below

- for () loop to go through all the values to create a rect() and text() for each


### [sorting.pde](sketches/AgesArrayAverageBubbleSort/sorting.pde)

- void BubbleSort()  defines a method that uses the bubble sort algorithm to sort the ages array in ascending order.

<h2><b>BIFEaphobia</b></h2>

### Overview

Creates a spooky audio-reactive sketch. When the left audio level passes a set threshold, a creepy Santa image appears. The sketch also displays falling rain, a white border and a red audio level bar. The sketch window is resizable.

### [BIFEaphobia_Joe.pde](sketches/BIFEaphobia/BIFEaphobia_Joe.pde)

- import ddf.minim.*; imports the Minim library, which is used for audio input.

- PImage img; declares a variable that can store an image.

- Rain[] r = new Rain[1000];` declares an array called `r` with 1000 slots for Rain objects.

- Minim minim; & AudioInput in; declare variables for starting Minim and receiving audio input.

- img = loadImage("creepySanta_2.png"); loads the creepy Santa image into img

- border = new Border(); creates a Border object.

- monster = new Image(img); creates an Image object and gives it the loaded image.

- minim = new Minim(this); starts Minim for this sketch.

- in = minim.getLineIn(); gets the live audio input.

- The for loop creates 1000 Rain objects and gives each one a random starting position and size.

- void draw(){ runs every frame.

- float audioLevel = in.left.level(); reads the audio level from the left input channel and when the audio is above 50 it display the image

- The Rain for loop visits each Rain object, updates its position and renders it.

- border.Render(); draws the white border around the edges of the current window.

- The red rect() uses the current audio level to change the width of the bar at the bottom of the screen.

- void windowResized() { is a Processing event method that runs when the window is resized. I added it to give every Rain object a new random x and y position within the current width and height

- void drawImage() { calls the Render method in the Image class.

### [Border_class.pde](sketches/Bifitopia/Border_class.pde)

- This class draw the border

- The four rect() lines draw the top, bottom, left and right sides of the border. They use width and height so the border follows the current size of the window.

### [Image_class.pde](sketches/Bifitopia/Image_class.pde)


- PImage img; stores the image used by this object.

- Image(PImage img) { defines the constructor and receives the image from the main sketch.

- this.img = img; stores that image in the Image object.

- void Render() { defines a method that displays the image.

- imageMode(CENTER); makes the image position refer to its centre.

- image(img, width / 2, height / 2, width, height); places the image in the centre of the canvas and scales it to the current window size.

- imageMode(CORNER); sets the image mode back to the default after drawing.

### [Rain_class.pde](sketches/Bifitopia/Rain_class.pde)

- I created a class called Rain

- PVector pos; pos stores the rain drop’s x and y location using the PVector is a vector type

- Rain(int x, int y, int size) defines the constructor for the Rain class. x, y, and size from the three values in `r[i] = new Rain()`

- pos = new PVector (x,y); creates the new location of each rain drop

- this.size=size; defines the size of each rain drop

- void Update () is called once per frame and adds a random value between 3 and 10 to the rain drop’s y-position, moving it down the screen by a random amount each frame.

  - if (pos.y + size / 2.0 > height) { checks if the bottom edge of the rain drop has passed the bottom of the screen.

  - pos.y = 0 + size / 2.0; moves the rain drop back to the top of the screen.

  - pos.x = random(0,width); gives the rain drop a new random x location.

- void Render () draws an ellipse every frame

<h2><b> Bifitopia Rain Interaction</b></h2>

### Overview
Added an if statement to the Rain class so raindrops move away from the cursor when it is nearby. The cursor must be within 50 pixels horizontally and 5 pixels vertically.

### [Rain_class.pde](sketches/BIFEtopia-rain-Interaction/Rain_class.pde)

- If the mouse X position is greater than the bubble’s X position plus its radius, and the mouse X position is less than the bubble’s X position plus the mouse range, move it 5 pixels to the right. Otherwise, move it 5 pixels to the left.
