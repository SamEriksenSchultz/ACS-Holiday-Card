import java.util.concurrent.CopyOnWriteArrayList;
CopyOnWriteArrayList<NoseLaser>lasers=new CopyOnWriteArrayList<NoseLaser>();
CopyOnWriteArrayList<Fog>fogs=new CopyOnWriteArrayList<Fog>();
int up,down,score,fogsDestroyed;
Rudolph r;
Stats s;
PVector rposition=new PVector();

void setup(){
  noStroke();
  size(1000,800);
  s=new Stats();
  r=new Rudolph(75,height/2,10);
  for(int i=0;i<6;i++){
    fogs.add(new Fog(width,random(0,height)));
    PVector loc1=fogs.get(i).getPosition();
    for(int j=1;j<fogs.size();j++){
      PVector loc2=fogs.get(j).getPosition();
      if(Math.abs(loc1.y-loc2.y)<25){
        loc2.x+=50;
      }
    }
  }
}
void draw(){
  background(0,0,139);
  for(NoseLaser l:lasers){
    l.update();
    if(l.inactive())lasers.remove(l);
    for(Fog f:fogs){
      if(l.testCollision(f.getPosition())){
        fogs.remove(f);
      }
    }
  }
  for(Fog f:fogs)f.update();
  r.update();
  s.display();
}
void keyPressed(){
  if(key=='w')up=1;
  if(key=='s')down=1;
  if(key==' ')lasers.add(new NoseLaser(rposition.x,rposition.y+25,10));
}
void keyReleased(){
  if(key=='w')up=0;
  if(key=='s')down=0;
}
