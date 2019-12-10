Virus [] v;
boolean end = false;
int x;
int y;


void setup(){
  size(800, 800);
  v = new Virus[100];
    for(int i = 0; i<v.length; i++){
      x = (int)(Math.random()*400)+200;
      y = (int)(Math.random()*10)+780;
      v[i] = new Virus(x, y);
    }
}

void draw(){
  if(!end){
    background(0);
    if(mousePressed){
      int r = (int)(Math.random()*255);
      int g = (int)(Math.random()*255);
      int b = (int)(Math.random()*255);
      fill(r, g, b);
      ellipse(mouseX, mouseY, 30, 30);
      for(int i = 0; i<v.length; i++){
        v[i].show();
        v[i].move();
      }
    }else{
      fill(255);
      ellipse(mouseX, mouseY, 30, 30);
      for(int i = 0; i<v.length; i++){
        v[i].show();
        v[i].move();
        v[i].die();
      }
    }
  }
  if(end){
    background(0);
    fill(255);
    ellipseMode(CENTER);
    ellipse(50, 50, 30, 30);
    textSize(32);
    fill(255);
    text("Game Over", 10, 30);
    text("restart", 70, 60);
    if(mousePressed && dist(mouseX, mouseY, 50, 50)<15){
      for(int i = 0; i<v.length; i++){
        v[i].reset();
      }
      end = false;
    }
  }
}

class Virus{
  private int x;
  private int y;
  private int xspeed;
  private int yspeed;
  private int r;
  
  Virus(int x, int y){
    this.x = x;
    this.y = y;
    this.xspeed = (int)(Math.random()*8)-4;
    this.yspeed = (int)(Math.random()*8)-4;
    this.r = (int)(Math.random()*200)+55;
  }
  void show(){
    fill(r, 0, 0);
    ellipse(x, y, 30, 30);
  }
  void move(){
    x += xspeed;
    y += yspeed;
  
  if(x >= width || x <= 0){
     xspeed*=-1;
  }
  if(y >= height || y <= 0){
    yspeed*=-1;
  }
  
  }
  void die(){
    if(dist(mouseX, mouseY, x, y)<15){
      end = true;
    }
  
  }
  void reset(){
    y = (int)(Math.random()*10)+780;
  }
}
