int mult=0;
import processing.serial.*;
Serial myport;
int c1=1;
int d1=0;
int count1=0;
int c2=1;
int d2=0;
float ne=0.01;
float ze=0.005;
int count2=0;
float x1=120;
float y1=500;
float x2=120;
float y2=500;
int[] obs=new int[12];
int[] x=new int[1200];
int[] y=new int[1200];
int[] xcoin=new int[1200];
int[] ycoin=new int[1200];
int score1=0;
int score2=0;
float z=0,n=0;
float framerate=50;
PImage img;
String input;
char i1;
char i2;
char i3;
char i4;
char i5;
char i6;
void setup(){
  
  myport = new Serial(this,"COM6",9600);
  size(3440,1440);
//size(600,600);

img = loadImage("img.jpeg");
  for(int i=0;i<1200;i++)
  {
        x[i]=10000;
 
  }
  for(int i=0;i<1200;i++)
{
  xcoin[i]=10000;
  
}
stroke(20);
fill(0,255,0);
line(0,520,50,520);
}

float l=30;
void draw()
{ 
  try{
  if(myport.available()>0)
  {
  
  input=myport.readString();}
  
  if(mult==0)
  {
      background(255,255,255);
      fill(0,0,0);
      textSize(30);
    text("press s for single player and m for 2 players",300,300);
    
  }
  if(mult==1)
  {
      l=l-30;
frameRate((framerate+0.5));
framerate=framerate+0.5;
n=n+ne;
z=z+ze;
  background(0,0,0);
  background(img);
  stroke(200);
  coincheck();
  score_view1();
fill(0,255,0);
line(0,520,1920,520);
x1=x1-1;
x2=x2-1;
d();
move1();
if((z<9))
  {obstacles((int)z);
   }
  else{
  z=0;}
  if((n<9)){
  coins((int)n);
  check1();
//ne+=0.05;
}
  else{ n=0;}}

if(mult==2){
  l=l-30;
frameRate((framerate+0.5));
framerate=framerate+0.5;
n=n+ne;
z=z+ze;
  background(0,0,0);
  background(img);
  stroke(200);
  coincheck();
  score_view();
fill(0,255,0);
line(0,520,1920,520);
x1=x1-1;
x2=x2-1;
d();
move();
if((z<9))
  {obstacles((int)z);
   }
  else{
  z=0;}
  if((n<9)){
  coins((int)n);
//ne+=0.05;
}
  else{ n=0;}
  check();}
 // coinscheck();
}catch(Exception e){}
}
  
 void keyPressed(){
if (key=='a')
 {x1 =x1-10;
 d1=1;
 }
else if (key =='d')
{ x1=x1+10;
d1=0;
}
else if(key=='w')  {
 
  c1=0;// void jump1();
}
if (key=='h')
 {x2 =x2-10;
 d2=1;
 }
else if (key =='k')
{ x2=x2+10;
 d2=0;
}
else if(key=='u') {
 c2=0;// void jump2();}
 }
 if(key=='s')
 {
   mult=1;
 }
 if(key=='m')
 {
   mult=2;
 }
 else if(key=='q'){
   loop();
    c1=1;
 d1=0;
count1=0;
 c2=1;
 d2=0;
 count2=0;
 x1=120;
 score1=0;
 score2=0;
 y1=500;
 x2=120;
 y2=500;
 mult=0;
 framerate=13;
  for(int i=0;i<1200;i++)
{
  x[i]=10000;
 
}
 for(int i=0;i<1200;i++)
{
  xcoin[i]=10000;
 
}
 }
 
 }
