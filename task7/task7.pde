import java.util.ArrayList;

//7.a - 3 arraylists with 3 different values:
ArrayList<String> cars = new ArrayList<String>();
ArrayList<Integer> numbers = new ArrayList<Integer>();
ArrayList<Boolean> weekends = new ArrayList<Boolean>();

void setup(){
//add values to String ArrayList:
  cars.add("BMW");
  cars.add("Honda");
  cars.add("Tesla");
  
//add values to Integer ArrayList:
  numbers.add(10);
  numbers.add(20);
  numbers.add(50);
  
//add values to Boolean ArrayList:
  weekends.add(true);
  weekends.add(false);
  weekends.add(true);
  
//call the methods:
  printList(cars);
  
  int sum = getSum(numbers);
  println("Sum: " + sum);
  
  float average = getAverage(numbers);
  println("Average: " + average);
}

//7.b - Method that takes an ArrayList of Strings as parameter and prints each String:
void printList(ArrayList<String> printList){
  for(int i = 0; i < printList.size(); i++){
    println(printList.get(i));
  }
}

//7.c - Method that receives an ArrayList of Integers and returns the sum:
int getSum(ArrayList<Integer> printList){
  int sum = 0;
  for(int i = 0; i < printList.size(); i++){
    sum += printList.get(i);
  }
  return sum;
}

//7.d - Method that receives an ArrayList of Integers and returns the average:
float getAverage(ArrayList<Integer> printList){
  if(printList.size() == 0){
    return 0; //Avoid division by zero
  }
  int sum = getSum(printList); //Reuse the sum method
  float average = (float)sum / printList.size();
  return average;
}
