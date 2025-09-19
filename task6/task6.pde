//6.a - double int called board[][] with length 8 in arrays:
int[][] board = new int[8][8];
int sideLength = 40;

//6.b - setup for-loop:
void setup(){
  size(250,250);
//double for loop creating 0 and 1 pattern
  for(int x = 0; x < 8; x++){
    for(int y = 0; y < 8; y++){
      board[x][y] = (x + y) % 2;
      //Use modulus operator to create checkerboard pattern
      //When (x + y) is even, assign 0; when odd, assign 1^
    }
  }
}

//6.c - double for loop that draws a rect for each element:
void draw(){
 for(int x = 0; x < 8; x++){
    for(int y = 0; y < 8; y++){
     if (board[x][y] == 0){
    //6.d - fill color based on board value:
       fill(255);
     }
      else if (board[x][y] == 1) {
       fill(0);
     }
     rect(x * sideLength, y * sideLength, sideLength, sideLength); 
    }
 }
}
