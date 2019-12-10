Bacteria [] b;
int c;
boolean end = false;
boolean win = false;
int score = 0;
int n = 30;

void setup(){
  size(800, 800);
  b = new Bacteria[n];
  for(int i = 0; i<b.length; i++){
    int xc1 = (int)(Math.random()*100)+350;
    int yc1 = (int)(Math.random()*100)+350;
    int xc2 = (int)(Math.random()*100)+350;
    int yc2 = (int)(Math.random()*100)+350;
    if(i%2==0){
      c = 0;
    }else{
      c = 1;
    }
    b[i]=new Bacteria(xc1, yc1, xc2, yc2, c);
  }
}
void draw(){
  if(!end){
  background(0);
  for(int i = 0; i<b.length; i++){
    //b[i].gameover();
    b[i].show();
    //b[i].attack();
    b[i].move();
  }
  fill(255);
  textSize(32);
  text("Score:" + score, 350, 50);
  if(score>=n/2){
    win=true;
  }
  if(end){
    background(0);
    textSize(32);
    text("You_arebad", 350, 350);
    text("Score:" + score, 350, 400);
  }
  if(win){
    background(0);
    textSize(32);
    text("You_win", 350, 350);
    text("Score:" + score, 350, 400);
  }
    

  }
  
}
