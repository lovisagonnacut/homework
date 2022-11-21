void setup(){
  size(1200,800);
  background(172,101,119);
  size(800, 600); 
  //ellipseMode(CENTER); 
  //noFill();
  noStroke();
  fill(206,96,149);
  rect(0,0,400,800);
 } 
 void draw(){
  fill(23,17,18,50);
  stroke(124,16,54,50);
  strokeWeight(3);
  line(mouseX,mouseY,1200,400);
  fill(175,11,101,50);
  stroke(103,42,56,50);
  ellipse(mouseX,mouseY,100,100);
  fill(196,57,106,30);
  stroke(147,18,63,80);
  strokeWeight(4);
  int maximum_radius = int(dist(0, height/2, width, 50)); 
  int density = int(constrain(mouseX, 600, width)); 
  for(int i=density; i<=maximum_radius; i+=density) { 
    ellipse(0, height/3, i, i); 
    ellipse(width, height/1.5, i, i); 
  }
  fill(241,255,54,30);
  stroke(255,169,36,90);
  strokeWeight(8);
  triangle(0,400,400,random(100,300),800,400);
 }
