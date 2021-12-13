void ball(){
//background(30, 30, 50) ;
pushMatrix();
noStroke();
sphereDetail(170);
fill(r * 2, random(0,r*5), r*3);
ambientLight(102, 102, 102,0-random(0,r*100), 0-random(0,r*100), -1-random(0,r*100));
directionalLight(102, 102, 102, 0-random(0,r*100), 0-random(0,r*100), -1-random(0,r*100));
lightSpecular(204, 204, 204);
directionalLight(102, 102, 102, 0-random(0,r*100), 1-random(0,r*100), -1-random(0,r*100));
lightSpecular(102, 102, 102);
translate (width/2, height/2,random(-r*2,0));
sphere (60+r/10) ;
popMatrix();
}
