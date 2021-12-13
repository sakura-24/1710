void gallery(){
image(background, 0, 0);
noFill();
float offset = random(-50, 25);
stroke(random(100,200)+offset,random(100,200)+offset,random(100,200)+offset);
strokeWeight(16);
rect(150,140,700,790);
}
