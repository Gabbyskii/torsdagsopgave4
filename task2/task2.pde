//2.a: Metode med tre parametre:
void printPartOfWord(String ord, int startIndex, int slutIndex) {
  String klip = ord.substring(startIndex, slutIndex);
  println(klip);
}


//2.b: Kald metoden fra setup med passende argumenter
void setup() {
  printPartOfWord("Denmark", 0, 4);
  
  //2.d kaldet for de sidste 4 bogstaver ved at sige length()-4, begge mine metoder nedenfor virker:
  //printPartOfWord("Denmark", 3, 7);
 printPartOfWord("Denmark", "Denmark".length() - 4, "Denmark".length());
}
