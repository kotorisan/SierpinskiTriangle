public int ilya = 20;
public void setup()
{
	size(600, 600);
}
public void draw()
{
	background(0,0,255);
	sierpinski(0,600,600);
}
public void mouseWheel(MouseEvent umi) //optional
{
	if (umi.getCount() < 40)
	{
		ilya += umi.getCount();
	}
}
public void sierpinski(int x, int y, int len) 
{
	fill(255,0,0);
	if (len > ilya)
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