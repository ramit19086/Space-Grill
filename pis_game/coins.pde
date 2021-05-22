void coins(int e){
if(e<12){
  if((xcoin[e]==10000)||(xcoin[e]<0))
  {xcoin[e]=(int)random(1700,1900);
  ycoin[e]=(int)random(420,450);
  if(e==0)
  {
    xcoin[e]=xcoin[e]-20;
  }
  if(e==10)
  {
    xcoin[e]=xcoin[e]-20;
  }if(e==20)
  {

    xcoin[e]=xcoin[e]-20;
  }if(e==30)
  {
    
    xcoin[e]=xcoin[e]-20;
  }if(e==40)
  {

    xcoin[e]=xcoin[e]-20;
  }if(e==50)
  {
    
    xcoin[e]=xcoin[e]-20;
  }if(e==60)
  {
    
    xcoin[e]=xcoin[e]-20;
  }if(e==70)
  {
   
    xcoin[e]=xcoin[e]-20;
  }
  if(e==80)
  {
   
    xcoin[e]=xcoin[e]-20;
  } 
  }}
  for(int o=0;o<90;o+=10) {
  if((xcoin[o]!=10000)&&(xcoin[o]>0))
  {
     ellipse(xcoin[0],ycoin[o],10,10);
     xcoin[o]=xcoin[o]-2;
}
  else if(xcoin[o]==0)
  {
   xcoin[o]=xcoin[o]-20;
  }
 
}
}
