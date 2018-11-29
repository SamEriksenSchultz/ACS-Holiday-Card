class NoseLaser {
  PVector position=new PVector();
  float speed;
  boolean active=false;
  NoseLaser(float x, float y, float speed){
    position.x=x;
    position.y=y;
    this.speed=speed;
  }
  void update(){
    position.x+=speed;
    fill(255,40,0);
    rect(position.x,position.y,10,10);
    if(position.x<width){
      active=false;
    } 
  }
 
  boolean inactive(){return active;}
  boolean testCollision(PVector eLocation){
    if(position.x>=eLocation.x-25
    && position.y>=eLocation.y-25 
    && position.y<=eLocation.y+25)
    return true;
    return false;
  }
}
