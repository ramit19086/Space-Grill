void d(){
  for(int o=0;o<90;o+=10) {
  if((x[o]!=10000)&&(x[o]>0))
  {
    if((o%3)==0){
    rect(x[o],y[o]-35,50,50);}
    else if((o%3)==1)
    { fill(255,0,0);
    triangle(x[o],y[o],x[o]-50,y[o],x[o]-25,y[o]-20);
  }
    x[o]=x[o]-2;

}
  else if(x[o]==0)
  {
   x[o]=x[o]-2000;
  }
 
}
}
