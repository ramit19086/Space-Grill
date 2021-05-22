void  check1(){
  for(int g=0;g<90;g+=10)
  {
    if((x1<x[g]+40)&&(x1>x[g]-2)&&((y1<y[g]+24)&&(y1>y[g]-24))||(x1<10)&&(score1>15)||(x1<10)){
    fill(255);
      rect(0,0,1900,900);
      fill(0);
      textSize(40);
    text("game over ",300,300);
  
 delay(3000);
 mult=0;
 
    }
   
  }
}
