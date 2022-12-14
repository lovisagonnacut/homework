PImage img;
float s;
float t, i, d, x, y;
void setup() {
  size(828,1472);
  background(255);
  noStroke();
  img = loadImage("yunzhen.jpg");
}
void draw() {
   clear();
  blendMode(DIFFERENCE);
  t+=.003;
  for (i=0; i<15; i++) {
    x=y=1;
    for (d=.555; d>0; d-=.045) {
      circle(x+=(noise(i, d+t)-.5)*2500, y+=(noise(i, d+t, 9)-.3)*200, d*300);
    }
  }
  s = map(mouseX, 0, width, 1, 100);
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
      int loc = x + (y * img.width);
      fill(img.pixels[loc]);
      rect(x, y, s, s);
    }
  }
}
  
