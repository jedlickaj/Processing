int n=(int)(Math.random()*10)+50;
int total = 0;
Die dice1;
Die dice2;
Die dice3;
Die dice4;
Die dice5;
Die dice6;
Die dice7;
Die dice8;
Die dice9;
Die dice10;
Die dice11;
Die dice12;
Die dice13;
Die dice14;
Die dice15;
Die dice16;
int r=(int)(Math.random()*256);
int g=(int)(Math.random()*256);
int b=(int)(Math.random()*256);
PImage img;
PImage img2;
void setup()
{
  size(750, 450);
  img = loadImage("flintstone.png");
  img2 = loadImage("fredflintstone.png");
  //row1
  dice1 = new Die(10,10);
  dice2 = new Die(120,10);
  dice3 = new Die(230,10);
  dice4 = new Die(340,10);
  //row2
  dice5 = new Die(10,120);
  dice6 = new Die(120,120);
  dice7 = new Die(230,120);
  dice8 = new Die(340,120);
  //row3
  dice9 = new Die(10,230);
  dice10 = new Die(120,230);
  dice11 = new Die(230,230);
  dice12 = new Die(340,230);
  //row4
  dice13 = new Die(10,340);
  dice14 = new Die(120,340);
  dice15 = new Die(230,340);
  dice16 = new Die(340,340);
  
  noLoop();
}
void draw()
{
  background(0);
  fill(50);
  stroke(0);
  rect(450, 0, width-450, height);
  
  textSize(32);
  fill(255);
  text("Lucky Number:"+n, 460, 50);
  
  
  //row1
  dice1.show();
  dice2.show();
  dice3.show();
  dice4.show();
  //row2
  dice5.show();
  dice6.show();
  dice7.show();
  dice8.show();
  //row3
  dice9.show();
  dice10.show();
  dice11.show();
  dice12.show();
  //row4
  dice13.show();
  dice14.show();
  dice15.show();
  dice16.show();
  if(total==n){
    textSize(64);
    fill(#04C4D9);
    text(" "+total, 530, 170);
    textSize(30);
    fill(#EE9B00);
    text("YaBaDaBaDooo!", 500, 220);
    img2.resize(200, 170);
    image(img2, 550, 250);
  }else{
    textSize(32);
    fill(180);
    text(" "+total, 545, 170);
    img.resize(100, 150);
    image(img, 590, 250);
  }
}
void mousePressed()
{
  total=0;
  redraw();
}
class Die //models one single dice cube
{
  //variable declarations here
  private int x;
  private int y;
  //private int rand;
  
  Die(int x, int y) //constructor
  {
    //variable initializations here
    this.x=x;
    this.y=y;
    
    
  }
  void roll()
  {
    //your code here
    
  }
  void show()
  {
    fill(255);
    rect(x, y, 100, 100, 15);
    int r=(int)(Math.random()*256);
    int g=(int)(Math.random()*256);
    int b=(int)(Math.random()*256);
    int rand=(int)(Math.random()*6)+1;
    if(mousePressed){
      //println(rand);
      if(rand==1){
        fill(r, g, b);
        stroke(255);
        ellipse(x+50, y+50, 20, 20);
        total+=1;
      }
      if(rand==2){
        fill(r, g, b);
        stroke(255);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        total+=2;
      }
      if(rand==3){
        fill(r, g, b);
        stroke(255);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+50, y+50, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        total+=3;
      }
      if(rand==4){
        fill(r, g, b);
        stroke(255);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        total+=4;
      }
      if(rand==5){
        fill(r, g, b);
        stroke(255);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+50, y+50, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        total+=5;
      }
      if(rand==6){
        fill(r, g, b);
        stroke(255);
        ellipse(x+25, y+25, 20, 20);
        ellipse(x+75, y+25, 20, 20);
        ellipse(x+25, y+50, 20, 20);
        ellipse(x+75, y+50, 20, 20);
        ellipse(x+25, y+75, 20, 20);
        ellipse(x+75, y+75, 20, 20);
        total+=6;
      }
    }
  }
  void numbers(){
    
  }
}
