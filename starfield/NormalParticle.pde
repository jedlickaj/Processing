class NormalParticle implements Particle{
  private float xpos;
  private float ypos;
  private double angle;
  private double speed;
  
  private float s;
  private int r;
  private int g;
  private int b;
  NormalParticle(){
  }
  NormalParticle(int x, int y){
    this.xpos = x;
    this.ypos = y;
    //this.r = r;
    //this.g = g;
    //this.b = b;
    this.r = (int)(Math.random()*70)+180;
    this.g = (int)(Math.random()*70)+180;
    this.b = (int)(Math.random()*70)+180;
    this.s = 10;
    this.angle = (Math.PI*2)*Math.random();
    this.speed = Math.random()*10;
  }
  void show(){
    fill(this.r, this.g, this.b);
    noStroke();
    ellipse(this.xpos, this.ypos, this.s, this.s);
    
  }
  void move(){
    this.xpos+=(Math.cos(4*this.angle)*this.speed)*Math.cos(this.angle);
    this.ypos+=(Math.sin(4*this.angle)*this.speed)*Math.sin(this.angle);
    angle+=.01;
  }
  
}
