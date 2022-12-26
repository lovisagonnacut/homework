import geomerative.*;
RFont f;
RShape grp;
RPoint[] points;

void setup(){
  size(1800,700);
  frameRate(124);
  background(255);
  fill(5,0,0);
  stroke(22,0,0);
  RG.init(this);
  
  grp = RG.getText("ABCDEFGHIJKLMNOPQRSTUVWXYZ", "sjtu2022-wangluyuan.ttf", 72, CENTER);
  
 smooth();
}

void draw(){
  background(255);
  translate (width/2, 1*height/2);

  fill(247,142,191,220);
  stroke(155,16,122,150);
  RG.setPolygonizer(RG.ADAPTATIVE);
  grp.draw();
  RG.setPolygonizer(RG.UNIFORMLENGTH);
  RG.setPolygonizerLength(map(mouseY,5, height, 4, 300));
  points = grp.getPoints();
  
  if(points != null){
   fill(90,96,211,220);
    stroke(140,145,234);
    strokeWeight(3);
    beginShape();
    for(int i=0; i<points.length; i++){
      vertex(points[i].x, points[i].y);
    }
    endShape();
  
    fill(255);
    stroke(73,125,227,40);
    for(int i=0; i<points.length; i++){
      ellipse(points[i].x, points[i].y,15,3);  
    }
  }
}
