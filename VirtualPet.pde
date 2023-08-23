void setup()
{
size(500,500);
}
void draw()
{
System.out.println(mouseX + " " + mouseY);
background(#A0CBFF);
//top fins
fill(#03AA36);
arc(375,230,150,100,PI,2*PI, CHORD);
fill(#03AA36);
arc(120,230,150,100,PI,2*PI, CHORD);
//bottom fins
fill(#03AA36);
arc(345,370,90,60,PI,2*PI, CHORD);
fill(#03AA36);
arc(150,370,90,60,PI,2*PI, CHORD);
//head
fill(#03AA36);
ellipse(250,140,80,80);
//tail
fill(#03AA36);
triangle(240,400, 250, 430, 260, 400);
//body
fill(#03AA36);
ellipse(250,280,200,250);
fill(#428651);
ellipse(250,280,180,235);
}
