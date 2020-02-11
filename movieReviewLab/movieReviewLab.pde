MovieList m;
int startTime;
int go = 0;
String [] w = {"good", "great", "superb", "excellent", "wonderful", "brilliant", 
  "exciting", "outstanding", "powerful", "inspiring", "amazing", "beautiful", "exceptional" };
String [] w2 = {"bad", "terrible", "horrible", "disgusting", "garbage", "awful", "poor",
  "lousy", "atrocious", "unbearable", "hopeless", "embarrassing", "rubbish"};
String [] w3 = {"funny", "amusing", "uproarious", "witty", "comical", "jolly", 
  "lighthearted", "hilarious", "slapstick", "humorous", "rich", "priceless", "entertaining"};
String [] w4 = {"sad", "heartbreaking", "tearjerker", "melancholic", "romantic", "reminiscent", 
  "lovely", "emotional", "tragic", "sentimental",  "sorrow", "heart-wrenching", "drama"};
String [] w5 = {"scary", "terrifying", "horrifying", "eerie", "creepy", "haunting", 
  "frightening", "chilling", "sinister", "unnerving", "spooky", "daunting", "appalling"}; 

void setup(){
  size(800, 800);
  background(0);
  
  m = new MovieList();
  m.loadMovies();
  
  //String [] w = {"good", "great", "superb", "excellent", "wonderful", "brilliant", 
  //"exciting", "electric", "powerful", "inspiring", "amazing", "beautiful", "revolutionary" };
  //String [] w2 = {"bad", "terrible", "horrible", "disgusting", "garbage", "awful", "poor",
  //"lousy", "atrocious", "unbearable", "hopeless", "unsatisfactory", "rubbish"};
    
    println(w);
    println(w2);
    println(w3);
    println(w4);
    println(w5);
    
  //textSize(30);
  //text("Movie Reviews", 300, 50);
  //text("Word", 50, 100);
  //text("Average Score", 290, 100);
  //text("Times Used", 590, 100);
  
  //if(time == true){
  //  int x = 50;
  //  int y = 150;
  //  int a = 0;
  //  double b = 0;
  //  for(String s : w){
  //    a = m.countWords(s);
  //    b = m.getAverageScore(s);
  //    fill(70);
  //    rect(x, y-17, 700, 20);
  //    textSize(20);
  //    fill(#5EFF6F);
  //    text(" " + s, x, y);
  //    text(" " + b, x+320, y);
  //    text(" " + a, x+650, y);
  //    //x += 50;
  //    y += 50;
  //  }
  //}
  //if(time == false){
  //  int x2 = 50;
  //  int y2 = 175;
  //  int a2 = 0;
  //  double b2 = 0;
  //  for(String s : w2){
  //    a2 = m.countWords(s);
  //    b2 = m.getAverageScore(s);
  //    fill(70);
  //    rect(x2, y2-17, 700, 20);
  //    textSize(20);
  //    fill(#FF9073);
  //    text(" " + s, x2, y2);
  //    text(" " + b2, x2+320, y2);
  //    text(" " + a2, x2+650, y2);
  //    //x += 50;
  //    y2 += 50;
  //  }
  //}
  
  //int c = m.countWords(w);
  //println(c);
  //textSize(20);
  //text(w + " appears " + c + " times.", 50 ,50);
  //println(m);
  
}
void draw(){
  background(0);
  
  textSize(30);
  text("Movie Reviews", 300, 50);
  text("Word", 50, 115);
  text("Average Score", 290, 115);
  text("Times Used", 590, 115);
  
  if(go==0){
    textSize(48);
    text("Good", 140, 50);
    int x = 50;
    int y = 150;
    int a = 0;
    double b = 0;
    for(String s : w){
      a = m.countWords(s);
      b = m.getAverageScore(s);
      fill(70);
      rect(x, y-17, 700, 20);
      textSize(20);
      fill(#5EFF6F);
      text(" " + s, x, y);
      text(" " + b, x+320, y);
      text(" " + a, x+650, y);
      //x += 50;
      y += 50;
    }
  }
  if(go==1){
    textSize(50);
    text("Bad", 170, 50);
    int x2 = 50;
    int y2 = 150;
    int a2 = 0;
    double b2 = 0;
    for(String s : w2){
      a2 = m.countWords(s);
      b2 = m.getAverageScore(s);
      fill(70);
      rect(x2, y2-17, 700, 20);
      textSize(20);
      fill(#FF9073);
      text(" " + s, x2, y2);
      text(" " + b2, x2+320, y2);
      text(" " + a2, x2+650, y2);
      //x += 50;
      y2 += 50;
    }
  }
  if(go==2){
    textSize(50);
    text("Funny", 130, 50);
    int x3 = 50;
    int y3 = 150;
    int a3 = 0;
    double b3 = 0;
    for(String s : w3){
      a3 = m.countWords(s);
      b3 = m.getAverageScore(s);
      fill(70);
      rect(x3, y3-17, 700, 20);
      textSize(20);
      fill(#FFF56E);
      text(" " + s, x3, y3);
      text(" " + b3, x3+320, y3);
      text(" " + a3, x3+650, y3);
      //x += 50;
      y3 += 50;
    }
  }
  if(go==3){
    textSize(50);
    text("Sad", 130, 50);
    int x4 = 50;
    int y4 = 150;
    int a4 = 0;
    double b4 = 0;
    for(String s : w4){
      a4 = m.countWords(s);
      b4 = m.getAverageScore(s);
      fill(70);
      rect(x4, y4-17, 700, 20);
      textSize(20);
      fill(#7BE8FF);
      text(" " + s, x4, y4);
      text(" " + b4, x4+320, y4);
      text(" " + a4, x4+650, y4);
      //x += 50;
      y4 += 50;
    }
  }
  if(go==4){
    textSize(50);
    text("Scary", 120, 50);
    int x5 = 50;
    int y5 = 150;
    int a5 = 0;
    double b5 = 0;
    for(String s : w5){
      a5 = m.countWords(s);
      b5 = m.getAverageScore(s);
      fill(70);
      rect(x5, y5-17, 700, 20);
      textSize(20);
      fill(#D18BFF);
      text(" " + s, x5, y5);
      text(" " + b5, x5+320, y5);
      text(" " + a5, x5+650, y5);
      //x += 50;
      y5 += 50;
    }
  }
  int time = millis() - startTime;
    if(time>5000){
      startTime = millis();
      reset();
    }
}
void reset(){
  if(go<4){
    go = go+=1;
  }else{
    go = 0;
  }
}
