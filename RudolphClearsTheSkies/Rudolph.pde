class Rudolph{
 PVector velocity=new PVector();
 float speed;
 
 Rudolph(float x, float y, float speed){
   rposition.x=x;
   rposition.y=y;
   
   this.speed=speed;
   
 }
 void update(){
   velocity.y=(down-up)*speed;
   rposition.add(velocity);
   fill(0);
   rect(rposition.x,rposition.y,50,50);
   
 }
}
