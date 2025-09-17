//1.a global variable:
int[] arr = { 28, 230, 9, 310,72};

//1.b getRandom method returns radom element from above array:
 int getRandom(){
  int index = (int)(random(arr.length));
  return arr[index];
}

//1.c called getRandom:
void setup(){
 int randomRes = getRandom();
 println(randomRes);
}
