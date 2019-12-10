int startX=0;
int startY=150;
int endX=0;
int endY=150;
boolean go=false;

void setup(){
  size(800, 800);
  background(0);
  strokeWeight(3);
}
void draw(){
  //int r=(int)(Math.random()*256);
  //int g=(int)(Math.random()*256);
  int b=(int)(Math.random()*256);
  stroke(255, 255, b);
 // while(endX<width){
   // endX=startX+(int)(Math.random()*10);
    //endY=startY+((int)(Math.random()*20)-9);
    //line(startX,startY, endX,endY);
    //startX=endX;
    //startY=endY;
  //}
  
}
void mousePressed(){
  int count=0;
  while(count<20){
  while(endX<width){
    endX=startX+(int)(Math.random()*10);
    endY=startY+((int)(Math.random()*20)-9);
    line(startX,startY, endX,endY);
    startX=endX;
    startY=endY;
    
  }
  startX=0;
  startY=150;
  //startY=(int)(Math.random()*height);
  endX=0;
  endY=150;
  count++;
  }
  
  }
