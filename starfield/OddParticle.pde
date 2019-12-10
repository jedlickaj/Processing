class OddParticle implements Particle{
  private float xpos;
  private float ypos;
  private double angle;
  private double speed;
  
  private float s;
  private int r;
  private int g;
  private int b;
  OddParticle(){
  }
  OddParticle(int x, int y){
    this.xpos = x;
    this.ypos = y;
    this.r = (int)(Math.random()*70);
    this.g = (int)(Math.random()*70);
    this.b = (int)(Math.random()*70);
    this.s = 10;
    this.angle = (Math.PI*2)*Math.random();
    this.speed = Math.random()*5;
  }
  void show(){
    fill(255, 255, 255, 100);
    noStroke();
    ellipse(this.xpos, this.ypos, this.s, this.s);
    
  }
  void move(){
    this.xpos+=((Math.cos(this.angle)*3)*this.speed);
    this.ypos+=((Math.sin(this.angle)*3)*this.speed);
    angle+=.01;
  }
}
