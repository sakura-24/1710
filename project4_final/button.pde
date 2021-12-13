void button(){  

if(ins_mod == true){
stroke(255);
noFill();
strokeWeight(14);
guide();
}else{
noStroke();
}
rect(295,105,210,90);



if(mus_mod ==true){
  ball();
stroke(255);
noFill();
strokeWeight(14);
}else{
noStroke();
}
rect(1095,105,210,90);

}

void mouseClicked(){
  
  if( (mouseX >300  && mouseX <500 ) && (mouseY >110  && mouseY <190 ) && mus_mod ==true){
       ins_mod = true;
       mus_mod = false;
       file1.stop();
  }
  
  
  if( (mouseX >1100  && mouseX <1300 ) && (mouseY >110  && mouseY <190 )&& ins_mod ==true){
     
    mus_mod =true;
     ins_mod = false;
     sound();
  
    
 
  }
  if( (mouseX >1100  && mouseX <1300 ) && (mouseY >110  && mouseY <190 )&& mus_mod ==true){
     
 
  }
  
  if( (mouseX >1200  && mouseX <1500 ) && (mouseY >850  && mouseY <900 ) ){
     cam =true;
       video.start();
 }
  if(mus_mod == false){
  file1.stop();
   play = false;
  }
}
