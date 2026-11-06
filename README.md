

<h1><b>Creative_Coding_2026_JSmith</b></h1>

<h2><b>BulbMouseInteraction</b></h2>


<h3><b>BulbMouseInteraction.pde</b></h3>

- Created a interactive bulb using processing and java.

- When the mouse is within a certain area, it changes the size and colour of a circle on the bulb.

- Bulb bulb; Declares a variable named bulb whose type is Bulb. The object is created later by bulb = new Bulb(); in setup()

- void setup() { is a "method" that runs once when the sketch starts. is runs size, creates a bulb object and sets background colour

- I made the sketch window resizable using   surface.setResizable(true);, 

- void draw() { runs every frame

- bulb.display(); runs the method within the bulb class to display the bulb object

### Bulb_Class.pde 

- class Bulb { defines a class called Bulb

- int is the data type for whole numbers

- float is the data type for decimal value

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

<p>

- I created a class called Bubble
 
- Inside the class, we declared a PVector called pos

- In this sketch pos stores the bubble’s x and y location using the PVector is a vector type

- 
  
</p>
