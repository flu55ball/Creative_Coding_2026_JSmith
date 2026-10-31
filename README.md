

<h1><b>Creative_Coding_2026_JSmith</b></h1>

<h2><b>BulbMouseInteraction</b></h2>

<p>

- Created a interactive bulb using processing and java.
 
- Using "mouseX" & "mouseY" allows us to track the position of the cursor.

- When the mouse is hovering over the bulb the bulb gets bigger and the colour of the bulb change 

- Used an IF statement to figure out weather the cursor is floating over the bulb or not. 

- Using the ELSE statement when the mouse is not over the bulb

- used "void draw () background (220)" to reset

- I created a class called Bulb to group the bulb’s values and drawing behaviour.

- Inside the class, I declared fields to store values such as posX, upperBulbSize and bulbSize.

- I created a constructor called Bulb(). It runs when I create a bulb object with new Bulb() and sets that object’s starting values.

- I named a variable bulb using the class Bulb with "Bulb bulb;", then I created the object with new Bulb() inside void setup() with   bulb = new Bulb();

- I added a display() method to draw the bulb. draw() runs repeatedly and calls bulb.display(), so the bulb is drawn again each frame.

- I made the sketch window resizable using   surface.setResizable(true);, 

- I update posX using width / 2 inside display() so the bulb’s horizontal centre follows the window width

- I replaced the old mouse bounds with a dist() check. It measures the distance from the mouse to the bottom circle’s centre, and compares it with 110—half the circle’s resting diameter of 220.



 
</p>

