class Stats {
  
  Stats(){
    
  }
  
  void display(){
    fill(255);
    rect(0,height-75,width,75);
    fill(0);
    text("Score: "+Integer.toString(score),height+25,25);
  }
}
