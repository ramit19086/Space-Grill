void move(){
if((c1==1)&&(c2==1)){fill(0,255,0);
ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
count1=0;
}
else if((c1==0)&&(count1<6)&&(d1==0)&&(c2==1))
{
  count1++;
  x1=x1+10;
  y1=y1-15;
  fill(0,255,0);
ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
;
}
else if((c1==0)&&(count1<12)&&(d1==0)&&(c2==1))
{
  count1++;
  x1=x1+10;
  y1=y1+15;
    fill(0,255,0);
  ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
  if(count1==12)
  {
    c1=1;
  }
  ;
}
else if((c1==0)&&(count1<6)&&(d1==1)&&(c2==1))
{
  count1++;
  x1=x1-10;
  y1=y1-15;
  fill(0,255,0);
ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
;
}
else if((c1==0)&&(count1<12)&&(d1==1)&&(c2==1))
{
  count1++;
  x1=x1-10;
  y1=y1+15;
    fill(0,255,0);
  ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
  if(count1==12)
  {
    c1=1;
  }
  ;
}
else{
 if(c2==1){fill(0,255,0);
ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
count2=0;
;}
else if((c2==0)&&(count2<6)&&(d2==0))
{
  count2++;
  x2=x2+10;
  y2=y2-15;
  fill(0,255,0);
ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
;}
else if((c2==0)&&(count2<12)&&(d2==0))
{
  count2++;
  x2=x2+10;
  y2=y2+15;
    fill(0,255,0);
  ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
  if(count2==12)
  { count2=0;
    c2=1;
  }
  ;
}
else if((c2==0)&&(count2<6)&&(d2==1))
{
  count2++;
  x2=x2-10;
  y2=y2-15;
  fill(0,255,0);
ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
;
}
else if((c2==0)&&(count2<12)&&(d2==1))
{
  count2++;
  x2=x2-10;
  y2=y2+15;
    fill(0,255,0);
  ellipse(x1,y1,25,25);
  fill(0,255,255);
ellipse(x2,y2,25,25);
  if(count2==12)
  { count2=0;
    c2=1;
  }
}
}
if (x1<0){
  x1=0;
}
if (x2<0)
{x2=0;
}
}
