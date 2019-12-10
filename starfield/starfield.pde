ArrayList <Particle> particle;
//int r = (int)(Math.random()*70)+180;
//int g = (int)(Math.random()*70)+180;
//int b = (int)(Math.random()*70)+180;

void setup(){
  size(800, 800, P2D);
  particle = new ArrayList <Particle>();
  for(int i = 0; i<1000; i++){
    particle.add(new OddParticle(400, 400));
  }
  for(int i = 0; i<50; i++){
    particle.add(new JumboParticle(400, 400));
  }
  for(int i = 0; i<1000; i++){
    particle.add(new NormalParticle(400,400));
  }
}
void draw(){
  background(0);
  for(int i = 0; i<particle.size(); i++){
    particle.get(i).show();
    particle.get(i).move();
  }
}
