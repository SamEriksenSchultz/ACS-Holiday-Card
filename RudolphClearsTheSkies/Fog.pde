class Fog {
  
  PVector position=new PVector();
  float speed;
  
  Fog(float x, float y){
    position.x=x;
    position.y=y;
    speed=random(2,2.5);
  }
  void update(){
    fill(169,169,169);
    rect(position.x,position.y,25,25);
    position.x-=speed;
  }
  boolean dead(){
    return position.x<0;
  }
  PVector getPosition(){return position;}
  
}
