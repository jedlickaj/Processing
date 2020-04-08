//void setup(){
//  MarkovChain mc=new MarkovChain();
//  //String [] str=loadStrings("data/wendys");
//  String [] str = loadStrings("data/oneFish");
//  String allText=join(str, " ");
//  String [] cleanText=allText.replaceAll("[^a-zA-Z\\. ]", "").toLowerCase().split("\\s+");//removes punct before splitting
//  mc.trainMap(cleanText);
//  //println(mc);
//  for (String s : cleanText) {
//    mc.generateText(s);
//    print(mc.generateText(s));
//  }
//}
Tweet t;
String content;
String [] words;
String tweet = " ";
PImage img;

void setup() {
  size(800,800);
  img = loadImage("Wendys.png");
  img.resize(400, 300);
  t = new Tweet();
  MarkovChain mc=new MarkovChain();
  String [] str = loadStrings("data/wendys");
  //String [] str=loadStrings("data/oneFish");
  String allText=join(str, " ");
  String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);
  for (String s : cleanText) {
    content += mc.generateText(s);
    print(mc.generateText(s));
    //println(mc.generateText(s));
    //println(mc.generateText2(2));
  }
  //words = content.split(" ");
  //int max = words.length;
  //int r = (int)(Math.random() * (max-10));
  //int n = (int)((Math.random() * 8) + 5);
  //for(int i = r; i<r+n; i++){
  //  tweet = tweet + words[i] + " ";
  //}
  //print(words);
  //mc.printMap();
}

void draw(){
  background(0);
  image(img, 200, 20);
  fill(255);
  textSize(32);
  text("Wendy's", 340, 300);
  text("Click for a tweet", 270, 350);
  t.showTweet();
  //fill(#002654);
  //rect((400-((tweet.length()*10)/2)), 470, (tweet.length()*10), 50, 10);
  //fill(255);
  //textSize(18);
  //text(t.makeTweet(), (400-((tweet.length()*10)/2))+5, 500);
}

void mousePressed(){
  t.makeTweet();
  redraw();
}
class Tweet{
  Tweet(){
    
  }
  void makeTweet(){
    words = content.split(" ");
    tweet = " ";
    int max = words.length;
    int r = (int)(Math.random() * (max-10));
    int n = (int)((Math.random() * 8) + 5);
    for(int i = r; i<r+n; i++){
      tweet = tweet + words[i] + " ";
    }
  }
  void showTweet(){
    fill(#002654);
    rect((400-((tweet.length()*10)/2)), 470, (tweet.length()*10), 50, 10);
    fill(255);
    textSize(18);
    text(tweet, (400-((tweet.length()*10)/2))+5, 500);
  }
}
