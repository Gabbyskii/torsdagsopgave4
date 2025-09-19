// 4.b/4.h - Array in global scope called 'circles' (holds 10 Circle instances)
Circle[] circles = new Circle[10];

void setup() {
  //4.a - Set the size of the canvas
  size(800, 600);

  // 4.i & 4.j - Use a loop to create 10 Circle instances with unique positions
  //and add them to the circles array
  for (int i = 0; i < circles.length; i++) {
    // Start all circles on the left side
    float x = 50;  // All start at x = 50 (left side)
    float y = 60 + i * 50;  // Stack them vertically with 50px spacing

    circles[i] = new Circle(x, y);
  }
}


// 4.l - Draw function with for-each loop to test the move method
void draw() {
  background(220);
  for (Circle circle : circles) {
    circle.move();  // No parameters - the method handles movement internally
  }
}
