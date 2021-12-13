void face(){
  if(cam == true){

 
  opencv.loadImage(video);
pushMatrix();
  image(video, 1090,590 );

  noFill();
  //stroke(0, 255, 0);
  strokeWeight(5);
  Rectangle[] faces = opencv.detect();
  
  for (int i = 0; i < faces.length; i++) {
    
   int a=i+1;
   
   if(ins_mod == true){
     fill(255);
     textFont(font2);
    textSize(20);
    text("performer"+a,faces[i].x+1100, faces[i].y+580);
     noFill();
    stroke(r*2,random(r,255),r*4);
    rect(faces[i].x+1100, faces[i].y+590, faces[i].width, faces[i].height);
  }
  if(mus_mod == true){
    fill(255);
    textFont(font2);
  textSize(20);
    text("listener"+a,faces[i].x+1100, faces[i].y+580);
    stroke(random(r*1/2,255),r,random(0,r*4));
     noFill();
    rect(faces[i].x+1100, faces[i].y+590, faces[i].width, faces[i].height);
  }
  }
  popMatrix();
}
}
