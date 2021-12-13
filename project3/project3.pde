String[] imgcat = {"0.jpg","1.jpg", "2.jpg", "3.jpg","4.jpg"};
PImage img,background,mouse;
int imgIndex = 0;
PFont font,font1;

void setup() {

  size(1000, 1000);
   background(0);

 font = createFont("TT Masters DEMO Black.otf",70);
 font1 = createFont("TT Masters DEMO Birds Regular.otf",40);
  background = loadImage("b.jpg");
   gallery();
  nextImage();
 
  
}


void draw() {
  
  textFont(font1);
   fill(139,69,19);
   text("Click To Next",370,980);
   
  textFont(font);
   fill(250,235,215);
  text("Cat  Gallery",280,80);
  
  pushMatrix();
  pixel();
  popMatrix();


}


void mousePressed() {
  nextImage();
  gallery();
}
