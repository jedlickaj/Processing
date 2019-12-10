class Bacteria{
  
  private int x1;
  private int y1;
  private int x2;
  private int y2;
  private int c;
  private int x1speed;
  private int y1speed;
  private int x2speed;
  private int y2speed;
  private int r;
  private color o1;
  private color f1;
  private boolean green = false;
  private boolean orange = false;
  private boolean scored = false;
  //int a;
  //int b;
  //int d;
  //int e;
  
  Bacteria(int x1, int y1, int x2, int y2, int c){
    this.x1=x1;
    this.y1=y1;
    this.x2=x2;
    this.y2=y2;
    this.c=c;
    int dir = (int)(Math.random()*4)+1;
    if(dir==1){
    x1speed=(int)(Math.random()*3)-4;
    y1speed=(int)(Math.random()*3)-4;
    x2speed=(int)(Math.random()*3)-4;
    y2speed=(int)(Math.random()*3)-4;
    }
    if(dir==2){
    x1speed=(int)(Math.random()*3)+1;
    y1speed=(int)(Math.random()*3)-4;
    x2speed=(int)(Math.random()*3)+1;
    y2speed=(int)(Math.random()*3)-4;
    }
    if(dir==3){
    x1speed=(int)(Math.random()*3)+1;
    y1speed=(int)(Math.random()*3)+1;
    x2speed=(int)(Math.random()*3)+1;
    y2speed=(int)(Math.random()*3)+1;
    }
    if(dir==4){
    x1speed=(int)(Math.random()*3)-4;
    y1speed=(int)(Math.random()*3)+1;
    x2speed=(int)(Math.random()*3)-4;
    y2speed=(int)(Math.random()*3)+1;
    }
    
    r=50;
    
  }
  void show(){
    if(green==true){
      o1=#8DFFA6;
      f1=#27A603;
      
    }
    if(green==false){
      o1=#0066CC;
      f1=#3399FF;
    }
    if(c==0){
      stroke(o1);
      fill(f1);
      ellipseMode(CENTER);
      ellipse(x1, y1, r, r);
    }else{
      orange = true;
      stroke(#CC6600);
      fill(#FFB266);
      ellipseMode(CENTER);
      ellipse(x2, y2, r, r);
    }
    if(mousePressed){
      if(dist(mouseX, mouseY, x1, y1)<r && !scored && !orange){
        scored = true;
        green = true;
        score+=1;
        println(score);
      }
        
      
    }
    
  }
  void move(){
    
    //x1+=xspeed;
    //y1+=yspeed;
    //x2+=xspeed;
    //y2+=yspeed;
    
    if(x1+(r/2)>=width){
      x1speed*=-1;
    }
    if(x2+(r/2)>=width){
      x2speed*=-1;
    }
    if(y1+(r/2)>=height){
      y1speed*=-1;
    }
    if(y2+(r/2)>=height){
      y2speed*=-1;
    }
    if(x1-(r/2)<=0){
      x1speed*=-1;
    }
    if(x2-(r/2)<=0){
      x2speed*=-1;
    }
    if(y1-(r/2)<=0){
      y1speed*=-1;
    }
    if(y2-(r/2)<=0){
      y2speed*=-1;
    }
    x1+=x1speed;
    y1+=y1speed;
    x2+=x2speed;
    y2+=y2speed;
    if(mousePressed){
      if(dist(mouseX, mouseY, x2, y2)<r && orange){
        end=true;
        //textSize(32);
        //text("Game-Over", 350, 350);
        //x1speed=0;
        //y1speed=0;
        //x2speed=0;
        //y2speed=0;
      }
    }

    //if(mouseX<x1){
    //  x1+=(int)(Math.random()*-3);
    //}
    //if(mouseX>x1){
    //  x1+=(int)(Math.random()*3);
    //}
    //if(mouseY<y1){
    //  y1+=(int)(Math.random()*-3);
    //}
    //if(mouseY>y1){
    //  y1+=(int)(Math.random()*3);
    //}
    //if(mouseX<x2){
    //  x2+=(int)(Math.random()*-3);
    //}
    //if(mouseX>x2){
    //  x2+=(int)(Math.random()*3);
    //}
    //if(mouseY<y2){
    //  y2+=(int)(Math.random()*-3);
    //}
    //if(mouseY>y2){
    //  y2+=(int)(Math.random()*3);
    //}
  }
  //void gameover(){
  //  if(mousePressed){
  //    if(dist(mouseX, mouseY, x2, y2)<r){
  //      textSize(32);
  //      text("Game-Over", 350, 350);
  //      x1speed=0;
  //      y1speed=0;
  //      x2speed=0;
  //      y2speed=0;
  //    }
  //  }
  //}
}
