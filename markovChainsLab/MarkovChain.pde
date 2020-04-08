import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

//class MarkovChain implements Markov {
class MarkovChain{
  List <String> wordList;
  Map<String, ArrayList<String>> myMap;

  public MarkovChain() {
    wordList=new ArrayList<String>();
    myMap=new HashMap<String, ArrayList<String>>();
  }

  void trainMap(String [] str) {
    for (int i = 0; i<str.length - 1; i++) {
      String currentWord = str[i];
      String nextWord = str[i+1];
      if (!myMap.containsKey(currentWord)) {
        myMap.put(currentWord, new ArrayList<String>());
      }
      myMap.get(currentWord).add(nextWord);
    }
  }
  //look through the str of words
  //  store the first word in a variable called currentWord
  //  store the second word in a variable called nextWord
  //  add to map by
  //  checking to see of currentWord is in the myMap
  //  if it is not, put it in the map and instantiate your ArrayList
  //  if it is get(currentWord).add(nextWord);

String generateText(String str) {
  String newString = " ";
  int randomIndex = 0;
  int randomIndex2 = 0;
  if(myMap.containsKey(str)){
    randomIndex = getRandomIndex(str);
    randomIndex2 = getRandomIndex(str);
    //newString += myMap.get(str).get(randomIndex) + " " + myMap.get(str).get(randomIndex2) + " ";
    //newString += myMap.get(str).get(randomIndex) + " ";
    //newString += str + " " + myMap.get(str).get(randomIndex) + " ";
    newString += myMap.get(str).get(randomIndex2);
  }
  return newString;

  
}
String generateText2(String str){
  String newString = " ";
  String str2 = " ";
  int randomIndex = 0;
    for(int i = 0; i<10; i++){
      randomIndex = getRandomIndex(str);
      newString+=myMap.get(str).get(randomIndex);
      str2 = myMap.get(str).get(randomIndex);
      str = str2;
    }
  return newString;
}

int getRandomIndex(String s) {
  int randomIndex=(int)(Math.random()*myMap.get(s).size());
  return randomIndex;
}
void printMap() {
  for(String s : myMap.keySet()){
    println(s + myMap.get(s));
  }
}

public String toString() {
  //return ""+wordList;
  return " " + myMap;
}
}
