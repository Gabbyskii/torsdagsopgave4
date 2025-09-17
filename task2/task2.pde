int startIndex;
int slutIndex;

//2.a: Metode med tre parametre:
void printPartOfWord(String ord, int startIndex, int slutIndex) {
  //2.e fejl-besked:
  if (startIndex < 0 || slutIndex < 0) {
    println("FEJL: Negative værdier er ikke tilladt");
    return;
  }
  if (startIndex > slutIndex) {
    println("FEJL: Start-index må ikke være højere end slut-index");
    return;
  }
  
  String klip = ord.substring(startIndex, slutIndex);
  println(klip);
}

//2.b: Kald metoden fra setup med passende argumenter
void setup() {
  printPartOfWord("Denmark", 0, 3);
  
//2.d kaldet for de sidste 4 bogstaver:
  printPartOfWord("Denmark", "Denmark".length() - 4, "Denmark".length());
  
//2.e Test if-statements fejl-beskeder:
 printPartOfWord("Denmark", 5, 2);  // Start højere end slut
 printPartOfWord("Denmark", -1, 3); // Negativ værdi
}
