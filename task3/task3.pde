// 3.a String array - artist names list:
String[] artistNames = {"Brent Faiyaz", "Frank Ocean", "Future", "Summer Walker", "Rihanna"};

//3.c String array - hits of artists:
String[] artistHits = {"Been away", "Nights", "Codeine Crazy", "Session 32", "Disturbia"};

void setup() {
  // 3.b For-loop that prints numbered list:
  for (int i = 0; i < artistNames.length; i++) {
  //3.d: tilføjede artistHits i min println:
  println((i + 1) + ". " + artistNames[i] + ": " + artistHits[i]);
  }
}
