

const int trigPin1 = 12;
const int echoPin1 = 13;

long duration1;
int distance1;
const int trigPin2=5;
const int echoPin2=4;
const int ir1=3;
const int ir2=2;
const int ir3=12;
const int ir4=9;
long duration2;
int distance2;
String a,b,c,d,e,f;

void setup() {
pinMode(trigPin1, OUTPUT); 
pinMode(echoPin1, INPUT);
pinMode(ir1,INPUT);
pinMode(ir2,INPUT);
//pinMode(ir3,INPUT);
//pinMode(ir4,INPUT); 
//pinMode(trigPin2, OUTPUT); 
//pinMode(echoPin2, INPUT); 
Serial.begin(9600);

}
void loop() {

digitalWrite(trigPin1, LOW);
delayMicroseconds(2);

digitalWrite(trigPin1, HIGH);
delayMicroseconds(10);
digitalWrite(trigPin1, LOW);

duration1 = pulseIn(echoPin1, HIGH);

distance1= duration1*0.034/2;
Serial.println(distance1);


digitalWrite(trigPin2, LOW);
delayMicroseconds(2);

digitalWrite(trigPin2, HIGH);
delayMicroseconds(10);
digitalWrite(trigPin2, LOW);

duration2 = pulseIn(echoPin2, HIGH);
distance2= duration2*0.034/2;



if((distance1>4)&&(distance1<1000))
{
  a="1";
}
else{
  a="0";
  } 

  if((distance2>3)&&(distance2<1000))
{
  b="1";
  }
  else{
    b="0";
    }
if(digitalRead(ir1)==HIGH )
{
  c="1";
  }
 else{
  c="0";
  }
 if(digitalRead(ir2)==HIGH )
{ d="1";
  digitalWrite(13,HIGH);
  }
 else{
  d="0";
digitalWrite(13,LOW); }
  if(digitalRead(ir3)==HIGH )
{digitalWrite(13,HIGH);
  e="1";
  }
 else{
  digitalWrite(13,LOW);
  e="0";
  }
  if(digitalRead(ir4)==HIGH )
{
  f="1";
  }
 else{
  f="0";
  }
  delay(100);
  Serial.println(a+b+c+d);

}
