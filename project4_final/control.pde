
void keyPressed(){

if(ins_mod == true && key == '1'){
   textSize(80);
   fill(0);
  text("do",730, 500);
  do1 = new SoundFile(this, "do.mp3");
  do1.play();
  amp.input (do1);
}else{
do1.stop();
}
if(ins_mod == true && key == '2'&& mic_mod == false && mus_mod == false){
   textSize(80);
   fill(0);
  text("re",738, 500);
  re= new SoundFile(this, "re.mp3");
  re.play();
  amp.input (re);
}else{
re.stop();
}

if(ins_mod == true && key == '3'){
   textSize(80);
   fill(0);
  text("mi",732, 500);
  mi= new SoundFile(this, "mi.mp3");
  mi.play();
  amp.input (mi); 
}else{
mi.stop();
}

if(ins_mod == true && key == '4'){
   textSize(80);
   fill(0);
  text("fa",740, 500);
  fa= new SoundFile(this, "fa.mp3");
  fa.play();
  amp.input (fa);
}else{
fa.stop();
}

if(ins_mod == true && key == '5'){
   textSize(80);
   fill(0);
  text("sol",720, 500);
  sol = new SoundFile(this, "sol.mp3");
 sol .play();
  amp.input (sol);
}else{
sol.stop();
}
if(ins_mod == true && key == '6'){
   textSize(80);
   fill(0);
  text("la",745, 500);
  la= new SoundFile(this, "la.mp3");
  la.play();
  amp.input (la); 
}else{
la.stop();
}

if(ins_mod == true && key == '7'){
   textSize(80);
   fill(0);
  text("si",745, 500);
  si= new SoundFile(this, "si.mp3");
  si.play();
  amp.input (si);
}else{
si.stop();
}

if(ins_mod == true && key == '8'){
   textSize(80);
   fill(0);
  text("DO",730, 500);
  do2= new SoundFile(this, "do2.mp3");
  do2.play();
  amp.input (do2);
}else{
do2.stop();
}

/*if(mus_mod == true &&  ins_mod == false && key == ' '){ 
  file1 = new SoundFile(this, "s2.mp3");
  file1.play();
  amp.input (file1 );
 }
 */
// if(mus_mod == false||ins_mod == true){
// file1.stop();
 
// }
 
 if(key == 'c'){
 cam = false;
 video.stop();
 }
}


  
