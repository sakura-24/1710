void particles(){
if(ins_mod == true){
  pushMatrix();
noStroke();
r= map(amp.analyze(),0,1,10,width/4);

for (int i=0; i<num-1; i++){
mtheta[i] += dtheta[i];
v[i].lerp(width/2+cos(mtheta[i])* (rdt[i]+r*18), height/2+sin(mtheta[i]) *(rdt[i]+r*11), 0, easing[i]);
fill(c1[i]);
ellipse (v[i].x, v[i]. y,rdu, rdu);
}
    
popMatrix();
}

if(mus_mod == true){
  
pushMatrix();
noStroke();

r= map(amp1.analyze(),0,1,10,width/4);

for (int i=0; i<num-1; i++){
mtheta[i] += dtheta[i];
v[i].lerp(width/2+cos(mtheta[i])* (rdt[i]+r*2), height/2+sin(mtheta[i]) *(rdt[i]+r*1.2), 0, easing[i]);
fill(c2[i]);
ellipse (v[i].x, v[i]. y,rdu1, rdu1);
}
    
popMatrix();
}

}
