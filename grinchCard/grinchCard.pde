 SnowFlake [] snow=new SnowFlake[1000];
 PImage img;
 PImage img2;
 PImage img3;
 PImage img4;
 PImage img5;
 PImage img6;
 boolean presents = false;
 int count = 0;
 //public int r;
 //public int g;
 //public int b;
 //public int x = (int)(Math.random()*50)+375;
 //public int y = (int)(Math.random()*200)+50;
 //public int x;
 //public int y;
 
void setup() {
  size (800, 400);
  img = loadImage("grinchsled.png");
  img2 = loadImage("unnamed.png");
  img3 = loadImage("grinchhouse.png");
  img4 = loadImage("unnamed2.png");
  img5 = loadImage("unnamed3.png");
  img6 = loadImage("unnamed4.png");
  for (int i=0; i<snow.length; i++) {
    snow[i] = new SnowFlake();
  }
}
void draw() {
  background(#055EA1);
  fill(#E6E5DE);
  rect(0, height-40, width, 40);
  image(img6, 240, 260, 200, 200);
  image(img6, 340, 260, 200, 200);
  image(img6, 540, 210, 300, 300);
  imageMode(CENTER);
  image(img2, width/2, height/2, 200, 400);
  image(img3, width-100, height-130, 200, 250);
  image(img5, 100, height-183, 200, 300);
  lights();
  textSize(18);
  fill(#D27177);
  text("Steal the presents from the house and bring them back to the cave", 10, height-10);
  textSize(24);
  fill(#F2E529);
  text("Presents stolen:" + count, width-250, 20);
  if(mousePressed && dist(mouseX, mouseY, 750, 350)<100){
    if(presents==false){
      count++;
    }
    presents=true;
  }
  if(mousePressed && dist(mouseX, mouseY, 150, 200)<30){
    presents=false;
  }
  if(presents==false){
    image(img, mouseX-50, mouseY-25, 150, 75);
  }
  if(presents==true){
    image(img4, mouseX, mouseY, 100, 100);
  }

  for (int i=0; i<snow.length; i++){
    snow[i].move();
    snow[i].show();
  }
}
 public class SnowFlake {

  private int x;
  private int y;
  private int xspeed;
  private int yspeed;
  private int size;
  //private int grow;
  public SnowFlake() {
    x=(int)(Math.random()*(801));
    y=(int)(Math.random()*(421))-200;
    xspeed=(int)(Math.random()*(3))-2;
    yspeed=(int)(Math.random()*(3))+2;
    size=(int)(Math.random()*(5))+1;
    //grow=30;
  }

  void show() {
    fill (255, 255, 255);
    noStroke();
    ellipse(x, y, size, size);
      
  }

  void move() {
    x+=xspeed;
    y+=yspeed;
      if (y>400) {
      y=-20;
      x=(int)(Math.random()*width);
    }
  }
}
//public void lights(){

//  //for(int i = 0; i<10; i++){
//    r = (int)(Math.random()*70)+185;
//    g = (int)(Math.random()*70)+185;
//    b = (int)(Math.random()*70)+185;
//    x = (int)(Math.random()*50)+375;
//    y = (int)(Math.random()*200)+50;
//    fill(r, g, b);
//    ellipse(x, y, 12, 16);
//  //}
//}
