// 4.h - Array in global scope called 'circles' (holds 10 Circle instances)
Circle[] circles = new Circle[10];

void setup() {
// 4.a - Set the size of the canvas
  size(800, 600);
  
//4.i & 4.j - Use a loop to create 10 Circle instances with unique positions
// and add them to the circles array
  for (int i = 0; i < circles.length; i++) {
    // Give each circle unique position values
    float x = 100 + (i % 5) * 150;  // Arrange in rows: 100, 250, 400, 550, 700
    float y = 150 + (i / 5) * 300;  // Two rows: 150 and 450
    
    //Create instance and add to array simultaneously
      circles[i] = new Circle(x, y);
    
    //println("Circle " + i + " created at position: (" + circles[i].xpos + ", " + circles[i].ypos + ")");
  }
  
  //Display all circles to test them
  for (int i = 0; i < circles.length; i++) {
    circles[i].display();
  }
}

// 4.l - Draw function with for-each loop to test the move method
void draw() {
  background(220);
//For-each loop to call move on each Circle in the array
  for (Circle circle : circles) {
    //Move each circle by small random amounts
    float xMoves = random(-1, 1);
    float yMoves = random(-1, 1);
    circle.move(xMoves, yMoves);
  }
}

// 4.c - Circle class with xposition and yposition attributes
class Circle {
  //Fields (attributes)
  float xpos;
  float ypos;
  
  // 4.d - Constructor with parameters for xposition and yposition
  Circle(float x, float y) {
    xpos = x;
    ypos = y;
  }
  
//Display method to draw the circle
  void display() {
    fill(155,0,155);
    ellipse(xpos, ypos, 70, 70);
  }
  
  //4.k - Move method that adds values to x and y position, then draws the circle
  void move(float xChange, float yChange) {
    xpos += xChange;
    ypos += yChange;
    display(); // Draw the circle again at new position
  }
}
