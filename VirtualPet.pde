import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup(){
size(500,500);
 arduino = new Arduino(this, Arduino.list()[0], 57600);
}
void draw(){
stroke(0);
System.out.println(mouseX + " " + mouseY);
background(#A0CBFF);
int y = arduino.analogRead(5);
if(y<170)
  y=170;
  System.out.println(y);
  fill(#674415);
  ellipse(250, 2*y, 30, 30);
int x = arduino.analogRead(1);
if(x>500)
  fill(#C376EA);
else
fill(#03AA36);
arc(375,230,150,100,PI,2*PI, CHORD);
arc(120,230,150,100,PI,2*PI, CHORD);
//bottom fins
arc(345,370,90,60,PI,2*PI, CHORD);
arc(150,370,90,60,PI,2*PI, CHORD);
//head
ellipse(250,140,80,80);
//tail
triangle(240,400, 250, 430, 260, 400);
//body
ellipse(250,280,200,250);

int z = arduino.analogRead(1);
if(z>500)
  fill(#773CC6);
else
  fill(#428651);
  ellipse(250,280,180,235);

int w = arduino.analogRead(1);
if(w>500){
fill(#F2EB0C);
stroke(#F2EB0C);
triangle(240,90,250,60,260,90);
triangle(258,90,268,60,278,90);
triangle(222,90,232,60,242,90);
}
}
