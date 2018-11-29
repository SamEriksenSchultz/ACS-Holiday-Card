Snowflake fallingSnow;
PFont myFont;
PImage moon;
void setup() {
  size(1000, 800);
  textSize(48);
  myFont=createFont("Grinched",60);
  textFont(myFont);
  moon=loadImage("moon.png");
  fallingSnow=new Snowflake(200,5,5);    
  fallingSnow.makeArray();
}
void draw() {
  background(10, 15, 101);
  text("Help Rudolph Clear the Fog!",(width/2)-300,height/6);
  //image(moon,30,30);
  fallingSnow.updateSf();
  
}
