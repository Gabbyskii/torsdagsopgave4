//1.a:
int[] arr = { 28, 230, 9, 310,72};

//1.b
 int getRandom(){
  int index = (int)(random(arr.length));
  return arr[index];
}

void setup(){
 int randomValue = getRandom();
 println(randomValue);
}
