PImage img;
float s;

void setup() {
  size(1080,1622);
  background(255);
  noStroke();
  img = loadImage("yeshuhua.jpg");
}

void draw() {
  background(255);
  s = map(mouseX, 0, width, 1, 100);
  for (int y = 0; y < img.height; y+=s ) {
    for (int x = 0; x < img.width; x+=s) {
      int loc = x + (y * img.width);
      fill(img.pixels[loc]);
      rect(x, y, s, s);
    }
  }
  saveFrame();//
}
