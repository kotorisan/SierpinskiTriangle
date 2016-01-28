public int ilya = 20;
PImage ayesha;
public void setup()
{
	size(600, 600);
	ayesha = loadImage("atelier_ayesha.png");
}
public void draw()
{
	background(ayesha);
	sierpinski(0, 600, 600);
}
public void mouseWheel(MouseEvent umi) //optional
{
	ilya += umi.getCount();
}
public void sierpinski(int x, int y, int len) 
{
	fill(255,0,0,90);
	if (ilya < 5)
	{
		ilya = 5;
	}
	if (len >= ilya)
	{
		sierpinski(x,y,len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
	else
	{
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
}