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

//(efter fredags-review), for-loop til at få random nummer:
int[]getRandom(int amount){
 int[] randomNumbers = new int[amount];
 for(int i = 0; i < amount; i++){
  int num = arr[(int)(random(arr.length))];
  randomNumbers[i] = num;
 }
return  randomNumbers;
}
