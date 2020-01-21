String[] w;
String[] x;
String[] y;
String[] z;
String[] zz;
String o;
String p;
String q;
String r;
String t;
String[] words;
String[] words2;
PImage img;
PImage img2;
PImage img3;
PImage img4;
PImage img5;
int one = -1;
int two = -1;
int three = -1;
int four = -1;
int five = -1;
//PImage bg;
//WordList wList;
int savedTime;
int totalTime = 25000;


void setup(){
  //size(900, 404);
  size(800, 800);
  img = loadImage("Luffy.png");
  img2 = loadImage("Hook.png");
  img3 = loadImage("SkunkBeard.png");
  img4 = loadImage("Sparrow.png");
  img5 = loadImage("Ahab.png");
  //bg = loadImage("deckBackground.png");
    w = loadStrings("data/onePiece");
    o = join(w, " ");
    words = splitTokens(o, ",.!?- ");
    x = loadStrings("data/peterPan");
    p = join(x, " ");
    y = loadStrings("data/scoobyDoo");
    q = join(y, " ");
    z = loadStrings("data/blackPearl");
    r = join(z, " ");
    zz = loadStrings("data/mobyDick");
    t = join(zz, " ");
    //println(q);
    //println("Number of words: " + countWords(q));
    //println("Number of vowels: " + countVowels(q));
    //println("Number of sentences: " + countSentences(q));
    //println("Number of syllables: " + countSyllables(q));
    //println("Flesch Reading Score: " + getFleschScore(q));
    //o = "Hello I am a monkey and am s. thus shoudl work for both methods. but is it? I dont know!";
    //s = "hello [from the other side ] i am a great person from 2029. Hippo D. Fries.";
    //w = s.split("[\\[]+[A-z || \\p{Blank}]+[\\]]");
    //t = join(w, " ");
    //println(o);
    //println("Number of words: " + countWords(o));
    //println("Number of vowels: " + countVowels(o));
    //println("Number of sentences: " + countSentences(o));
    //println("Number of syllables: " + countSyllables(o));
    //println("Flesch Reading Score: " + getFleschScore(o));
    //println(p);
    //println("Number of words: " + countWords(t));
    //println("Number of vowels: " + countVowels(t));
    //println("Number of sentences: " + countSentences(t));
    //println("Number of syllables: " + countSyllables(t));
    //println("Flesch Reading Score: " + getFleschScore(t));
    
    
}
void draw(){
  //background(bg);
  background(0);
  fill(255);
  textSize(25);
  text("Captain's of the Sea", 250, 330);
  
  
  //LUFFY
  image(img, 10, 10);
    //rect(620, 200, 10, 10);
  if(one == -1){  
    fill(100);
      textSize(30);
      text("Luffy", 25, 280);
  }
  if(mousePressed && dist(mouseX, mouseY, 55, 270)<30){
    one *= -1;
    two = -1;
    three = -1;
    four = -1;
    five = -1;
  }
  if(one == 1){
    fill(255);
      textSize(30);
      text("Luffy", 25, 280);
    fill(255);
      textSize(20);
      text("One Piece S1 E1: 'I'm Gonna Be King of The Pirates!'", 10, 700);
      text("Word Count: " + countWords(o), 10, 730);
      text("Sentences: " + countSentences(o), 10, 760);
      text("Flesch Score: " + getFleschScore(o), 10, 790); 
  }
  
  //HOOK
  image(img2, 130, 10);
    //rect(220, 195, 10, 10);
  if(two == -1){
    fill(100);
      textSize(30);
      text("Hook", 165, 280);
  }
  if(mousePressed && dist(mouseX, mouseY, 195, 270)<30){
    two *= -1;
    one = -1;
    three = -1;
    four = -1;
    five = -1;
  }
  if(two==1){
    fill(255);
      textSize(30);
      text("Hook", 165, 280);
    fill(255);
      textSize(20);
      text("Peter Pan (1953)", 10 , 700);
      text("Word Count: " + countWords(p), 10, 730);
      text("Sentences: " + countSentences(p), 10, 760);
      text("Flesch Score: " + getFleschScore(p), 10, 790);
  }
  
  //SKUNKBEARD
  image(img3, 260, 10);
    //rect(370, 265, 10, 10);
  if(three == -1){  
    fill(100);
      textSize(30);
      text("Skunkbeard", 290, 280);
  }
  if(mousePressed && dist(mouseX, mouseY, 370, 270)<40){
    three *= -1;
    one = -1;
    two = -1;
    four = -1;
    five = -1;
  }
  if(three == 1){
    fill(255);
      textSize(30);
      text("Skunkbeard", 290, 280);
    fill(255);
      textSize(20);
      text("Scooby-Doo: Pirates Ahoy!", 10, 700);
      text("Word Count: " + countWords(q), 10, 730);
      text("Sentences: " + countSentences(q), 10, 760);
      text("Flesch Score: " + getFleschScore(q), 10, 790); 
  }
  
  //SPARROW
  image(img4, 500, 10);
    //rect(420, 145, 10, 10);
    if(four == -1){
    fill(100);
      textSize(30);
      text("Sparrow", 500, 280);
    }
  if(mousePressed && dist(mouseX, mouseY, 550, 270)<40){
    four *= -1;
    one = -1;
    two = -1;
    three = -1;
    five = -1;
  }
  if(four == 1){
    fill(255);
      textSize(30);
      text("Sparrow", 500, 280);
    fill(255);
      textSize(20);
      text("Pirates of the Caribbean: Curse of the Black Pearl", 10, 700);
      text("Word Count: " + countWords(r), 10, 730);
      text("Sentences: " + countSentences(r), 10, 760);
      text("Flesch Score: " + getFleschScore(r), 10, 790);
  }
  
  //AHAB
  image(img5, 650, 10);
    //rect(490, 265, 10, 10);
    if(five == -1){
      fill(100);
        textSize(30);
        text("Ahab", 660, 280);
    }
    if(mousePressed && dist(mouseX, mouseY, 690, 270)<30){
        five *= -1;
        one = -1;
        two = -1;
        three = -1;
        four = -1;
       
    }
    if(five == 1){
      fill(255);
        textSize(30);
        text("Ahab", 660, 280);
      fill(255);
        textSize(20);
        text("Moby Dick", 10, 700);
        text("Word Count: " + countWords(t), 10, 730);
        text("Sentences: " + countSentences(t), 10, 760);
        text("Flesch Score: " + getFleschScore(t), 10, 790);
    }
}
int countWords(String s){
  int count = 0;
  String[] words = s.split("\\W+");
  for(int i = 0; i<words.length; i++){
    count ++;
  }
  return count;
}
int countVowels(String s){
  int count = 0;
  String[] words = s.split("[aeiouy]");
  for(int i = 0; i < words.length; i++){
    count++;
  }
  return count - 1;
}
int countSentences(String s){
  int count = 0;
  String[] words = s.split("[.?!-]");
  for(int i = 0; i < words.length; i++){
    count++;
  }
  return count;
}
int countSyllables(String s){
  int count = 0;
  String[] words = s.split("[aeiouy]+[^$e(,.!?)]");
  for(int i = 0; i<words.length; i++){
    count++;
  }
  return count-1;
}
int getFleschScore(String s){
  double tw = 0;
    String[] words1 = s.split("\\W+");
    for(int i = 0; i<words1.length; i++){
      tw ++;
    }
  double tse = 0;
    String[] words2 = s.split("[.?!-]");
    for(int i = 0; i < words2.length; i++){
      tse++;
    }
  double tsy = 0;
    String[] words3 = s.split("[aeiouy]+[^$e(,.!?)]");
    for(int i = 0; i<words3.length; i++){
      tsy++;
    }
  int score = (int)(206.835 - (1.015*(tw/tse)) - (84.6*(tsy/tw)));
  return score;
}
//public class WordList{
//  public List<Word> myList;
//  public WordList (String []tokens){
//    myList=new ArrayList<Word>();
//    for(String s : tokens){
//      myList.add(new Word(s));
//    }
//  }
//}
