Star[] s = new Star[20];

void setup() {
  size(640, 360, P2D);

for (int i=0; i<20; i++) {
  s[i] = new Star(); 
}
}

void draw() {
  background(51);
 for (int i=0; i<20; i++) {
  s[i].display();  // Display the first star
  s[i].move();  // Move the first star
 }
  

}
