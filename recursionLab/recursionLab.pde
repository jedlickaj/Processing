float fractionLength = .69;
float smallestBranch = 10;
double branchAngle;
double last = 0;
double angle1;
double angle2;
int r;
int g;
int b;


void setup(){
  size(800, 800);
  background(0);
  stroke(255);
  textSize(18);
  text("click for", 10, 20);
  text("different", 10, 35);
  text("designs", 10, 50);
}
void draw(){
  stroke(255);
  //line(400, 600, 400, 400);
  drawBranches(400, 800, 200, 3*Math.PI/2, 255);
  drawBranches(800, 400, 200, 3*Math.PI, 255);
  drawBranches(0, 400, 200, 0, 255);
  drawBranches(400, 0, 200, Math.PI/2, 255);
}
void makeAngle(){
  branchAngle = Math.PI/((int)(Math.random()*7)+2);
  if(branchAngle == last){
    makeAngle();
  }
  last = branchAngle;
  println(branchAngle);
}
void makeColors(){
  r = (int)(Math.random()*150)+100;
  g = (int)(Math.random()*150)+100;
  b = (int)(Math.random()*150)+100;
}

void drawBranches(float x, float y, float l, double a, int c){
  if(l>smallestBranch){
    float x1 = (int)((l * Math.cos(a))+x);
    float y1 = (int)((l * Math.sin(a))+y);
    
    stroke(r, g, b, c);
    line(x, y, x1, y1);
    drawBranches(x1, y1, l * fractionLength, a + branchAngle, c-40);
    drawBranches(x1, y1, l * fractionLength, a - branchAngle, c-40);
    
  }
}
void mousePressed(){
  makeAngle();
  makeColors();
  background(0);
  redraw();
}

//float radius = 400;
//float minRadius = 10;

//void setup(){
//  size(800,800);
//  background(0);
//  drawCircle(width/2, height/2, radius, 255);
  
//}
//void draw(){
  
//}
//void drawCircle(float x1, float y1, float r, float c){
//  noFill();
//  stroke(c);
//  if(c<=20){
//    ellipse(x1, y1, r, r);
//  }
//  if(r <= minRadius){
//    ellipse(x1, y1, r, r);
//  }else{
//  ellipse(x1, y1, r, r);
//  drawCircle(x1-20, y1-20, r-20, c-10);
//  //drawCircle(x1+20, y1+20, r-20, c-10);
//  }
//}
