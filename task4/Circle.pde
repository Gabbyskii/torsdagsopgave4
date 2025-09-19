class Circle {
  float xpos;
  float ypos;
  float xSpeed;  //Horizontal speed
  float ySpeed;  //Vertical speed
  
  Circle(float x, float y) {
    xpos = x;
    ypos = y;
    xSpeed = random(1, 3);  //Random speed between 1-3 pixels per frame
    ySpeed = random(-1, 1);  //Small random vertical movement
  }
  
  void display() {
    fill(155, 0, 155);
    ellipse(xpos, ypos, 70, 70);
  }
  
  // Fixed move method - no parameters, uses internal speed variables
  void move() {
    xpos += xSpeed;
    ypos += ySpeed;
    
    // Bounce off left/right edges
    if (xpos < 35 || xpos > width - 35) {
        xSpeed = -xSpeed; //reverse horizontal direction
    }
    // Bounce off top/bottom edges
    if (ypos < 35 || ypos > height - 35) {
        ySpeed = -ySpeed; //reverse vertical direction
    }
    
    display();
  }
}
