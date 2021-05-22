void  check(){
  for(int g=0;g<90;g+=10)
  {
    if((x1<x[g]+40)&&(x1>x[g]-2)&&((y1<y[g]+24)&&(y1>y[g]-24))||(x1<10)){
    fill(255);
      rect(0,0,1900,900);
      fill(0);
      textSize(40);
    text("game over player 2 won",300,300);
     delay(3000);
 mult=0;
 
    
    
    }
    if((x2<x[g]+40)&&(x2>x[g]-2)&&((y2<y[g]+24)&&(y2>y[g]-24))||(x2<10)){
    fill(255);
      rect(0,0,1900,900);
      fill(0);
      textSize(40);
    text("game over player 1 won",300,300);
 delay(3000);
 mult=0;
   
    }
  }
}
