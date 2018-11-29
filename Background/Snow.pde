
class Snow {
  int sizeR, speedR;
  PVector location=new PVector((int)random(0, 1000), 0);
  PVector velocity=new PVector(0, 0);
  Snow(int size, int speed) {
    sizeR=size;
    speedR=speed;
  }
  float getX(){
    return location.x;
  }
  
  void show() {
    noStroke();
    fill(255, 200);
    ellipse(location.x, location.y, (int)(random(6, sizeR)), (int)(random(6, sizeR)));
  }
  void update() {
    velocity.x=(random(0, 5));
    location.y+=speedR;
    location.add(velocity);
  }
  void reset(){
    location.x=(int)(random(-800,800));
    location.y=0;
  }
  
}
