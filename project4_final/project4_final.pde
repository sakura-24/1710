import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

import processing.sound.*;

Amplitude amp;
Amplitude amp1;

SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile do1;
SoundFile re;
SoundFile mi;
SoundFile fa;
SoundFile sol;
SoundFile la;
SoundFile si;
SoundFile do2;

PFont font1;
PFont font2;

int num = 4000;
float mts = PI/60; 
float r= 100;
int rdtr = 20;
int rdu = 10;
int rdu1 = 2;
PVector v[]=new PVector[num];
color c1[]= new color[num];
color c2[]= new color[num];
float theta[] = new float [num];
float mtheta[]=new float [num];
float dtheta[]=new float [num];
float easing[]=new float [num];
int rdt[]=new int [num];

boolean ins_mod = true;
boolean mic_mod = false;
boolean mus_mod = false;
boolean cam = false;
boolean play = false;

void setup(){
  
//colorMode(RGB, 255, 255, 255);
size (1600, 1000,P3D);
translate (width/2, height/2,r);
for (int i =0; i<num-1; i++){
c1[i] = color (random (r, 200), random (r, 200),random (r, 200));
c2[i] = color (random (0, 255), random (r, 100));
v[i]= new PVector (random (width/200), random (height/200)) ;
theta[i]= round (random (360)) ;
dtheta[i]= random (mts);
mtheta[i]= theta[i]/180*PI;
rdt[i]= round (random (-rdtr, rdtr));
easing[i]= random (0.02, 0.3);
}
frameRate (60) ;

font1 = createFont("TT Masters DEMO Black.otf", 30);
font2 = createFont("TT Masters DEMO Birds Regular.otf", 30);

do1 = new SoundFile(this, "do.mp3");
re= new SoundFile(this, "re.mp3");
mi= new SoundFile(this, "mi.mp3");
fa= new SoundFile(this, "fa.mp3");
sol = new SoundFile(this, "sol.mp3");
la= new SoundFile(this, "la.mp3");
si= new SoundFile(this, "si.mp3");
do2= new SoundFile(this, "do2.mp3");
//https://pan.baidu.com/share/init?surl=wG8mNDUEhDG6CFMVf6vT1w

file1 = new SoundFile(this, "s1.mp3");
//

amp = new Amplitude(this);
amp1 = new Amplitude(this);


video = new Capture(this, 480, 320);
  opencv = new OpenCV(this,480, 320);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  



}

void draw(){

background(130, 130, 150);

button();

fill(30,40,50);
stroke(0);
strokeWeight(1);
rect(300,110,200,80);
rect(1100,110,200,80);

textFont(font1);
fill(255);
text("M U S I C", 1135, 160);
text("INSTRUMENT", 313, 160); 

if(cam == false ){
pushMatrix();
noFill();
noStroke();
rect(1200,850,300,50);
textFont(font2);
textSize(20);
text("click here to open camera", 1230, 883); 
popMatrix();
}else{
  textFont(font2);
textSize(20);
text("press C to close camera", 1190, 950); 
}

particles();
face();

}

void captureEvent(Capture c) {
  c.read();
}
