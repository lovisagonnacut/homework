import controlP5.*;

ControlP5 cp5;

Accordion accordion;

color c = color(242,130,171);

void setup() {
   size(1000,750);
  fill(255,245,249);
  strokeWeight(10);
  
  gui();
   
  strokeWeight(10);
  rect(0,0,1000,750);
  line(0,600,1000,600);
  line(100,50,1000,50);
  line(920,50,920,600);
  line(100,0,100,600);
  line(600,0,600,750);
  fill(124,157,245);
  rect(100,450,150,300);
  line(250,0,250,750);
  fill(221,104,240);
  rect(100,50,350,200);
  line(450,0,450,750);
  line(100,250,920,250);
  fill(242,130,171);
  rect(600,0,200,150);
  fill(0);
  line(600,350,920,350);
  rect(600,150,150,50);
  fill(221,104,240);
  rect(600,200,150,150);
  line(100,450,450,450);
  fill(221,104,240);
  rect(720,350,280,250);
  fill(242,130,171);
  rect(600,450,120,100);
  fill(124,157,245);
  rect(600,550,80,200);
  fill(0);
  rect(680,550,40,200);
  fill(242,130,171);
  rect(0,250,250,200);
  rect(300,0,150,250);
  fill(124,157,245);
  rect(300,0,60,180);
  fill(0);
  rect(360,0,90,180);
  fill(255);
  rect(300,120,150,70);
  rect(600,690,120,80);
  fill(124,157,245);
  rect(450,250,150,300);
  fill(242,130,171);
  rect(250,450,200,150);
  fill(221,104,240);
  rect(920,150,100,150);
  line(100,120,300,120);
  fill(0);
  rect(100,700,250,50);
  line(350,600,350,750);
  line(800,600,800,800);
  fill(242,130,171);
  rect(800,650,200,100);
  fill(0);
  rect(920,600,80,150);
  line(350,250,350,450);
  rect(450,550,150,100);
}

void gui() {
  
  cp5 = new ControlP5(this);
   Group g1 = cp5.addGroup("myGroup1")
                .setBackgroundColor(color(250,0))
                .setBackgroundHeight(195)
                ;
  
  cp5.addBang("bang")
     .setPosition(65,75)
     .setSize(190,120)
     .moveTo(g1)
     .plugTo(this,"shuffle");
     ;
     
  
  Group g2 = cp5.addGroup("myGroup2")
                .setBackgroundColor(color(255, 0))
                .setBackgroundHeight(340)
                ;
  
  cp5.addRadioButton("radio")
     .setPosition(0,1)
     .setItemWidth(57)
     .setItemHeight(37)
     .addItem("black", 0)
     .addItem("pink", 1)
     .addItem("blue", 2)
     .addItem("purple", 3)
     .addItem("white", 4)
     .setColorLabel(color(0))
     .activate(20)
     .moveTo(g2)
     ;

 
  Group g3 = cp5.addGroup("myGroup3")
                .setBackgroundColor(color(255, 0))
                .setBackgroundHeight(150)
                ;
  
  cp5.addBang("shuffle")
     .setPosition(66,0)
     .setSize(139,90)
     .moveTo(g3)
     ;
     
  cp5.addSlider("hello")
     .setPosition(216,0)
     .setSize(190,46)
     .setRange(0,1000)
     .setValue(0)
     .moveTo(g3)
     ;
     
  cp5.addSlider("world")
     .setPosition(216,46)
     .setSize(190,46)
     .setRange(0,1000)
     .setValue(0)
     .moveTo(g3)
     ;

  
  accordion = cp5.addAccordion("acc")
                 .setPosition(40,40)
                 .setWidth(210)
                 .addItem(g1)
                 .addItem(g2)
                 .addItem(g3)
                 ;
                 
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.open(0,1,2);}}, 'o');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.close(0,1,2);}}, 'c');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setWidth(300);}}, '1');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setPosition(0,0);accordion.setItemHeight(190);}}, '2'); 
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setCollapseMode(ControlP5.ALL);}}, '3');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {accordion.setCollapseMode(ControlP5.SINGLE);}}, '4');
  cp5.mapKeyFor(new ControlKey() {public void keyEvent() {cp5.remove("myGroup1");}}, '0');
  
  accordion.open(0,1,2);
  
  
  accordion.setCollapseMode(Accordion.MULTI);
  
  
}
  

void radio(int theC) {
  switch(theC) {
    case(0):c=color(0,200);break;
    case(1):c=color(242,130,171,300);break;
    case(2):c=color(124,157,245);break;
    case(3):c=color(221,104,240);break;
    case(4):c=color(255);break;
  }
} 


void shuffle() {
  c = color(random(255),random(255),random(255),random(100,255));
}


void draw() {
 
  fill(c);
  
  float s1 = cp5.getController("hello").getValue();
  ellipse(200,400,s1,s1);
  
  float s2 = cp5.getController("world").getValue();
  ellipse(300,100,s2,s2);
}

  
