
void setup()
{
	size(400,400);
	noLoop();
	background(0);
}
void draw()
{
	background(0);
	int total = 0;
	for(int y = 50; y <= 400; y += 50)
	{
		for (int x = 50; x <= 400; x += 50)
		{
			Die newDie = new Die(x,y);
			newDie.roll();
			newDie.show();
			if(newDie.numRolled <= 6)
				{
					total = total + newDie.numRolled;
				}
		}
	}
	textSize(32);
	text("The current total is " + total, 20, 25);

}
void mousePressed()
{
	redraw();
}
class Die 
{
	int myX; 
	int myY; 
	int numRolled;
	Die(int x, int y) 
	{
		myX = x;
		myY = y;

	}
	void roll()
	{
		numRolled = ((int)(Math.random()*6)+1);
		
	}
	void show()
	{
		stroke(0);
		fill(255);
		rect(myX,myY,40,40,50);
		noStroke();
		int cr1 = (int)(Math.random()*255);
		int cr2 = (int)(Math.random()*255);
		int cr3 = (int)(Math.random()*255);
		fill(cr1, cr2, cr3);
		if (numRolled == 1)
		{
			ellipse(myX+20,myY+20,10,10);

		}
		else if (numRolled == 2)
		{
			ellipse(myX+10,myY+20,10,10);
			ellipse(myX+30, myY+20,10,10);
		}
		else if(numRolled == 3)
		{
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX +10, myY + 10,10,10);
			ellipse(myX +30, myY+30, 10,10 );
		}	
		else if(numRolled == 4)
		{
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX + 30, myY+30,10,10);
			ellipse(myX+30,myY+10,10,10);
			ellipse(myX + 10, myY+30,10,10);
		}
		else if(numRolled == 5)
		{
			ellipse(myX+20,myY+20,10,10);
			ellipse(myX+10,myY+10,10,10);
			ellipse(myX + 30, myY+30,10,10);
			ellipse(myX+10,myY+30,10,10);
			ellipse(myX +30, myY+10,10,10);
		}
		else 
		{
			ellipse(myX+30,myY+10,10,10);
			ellipse(myX+10, myY+10,10,10);
			ellipse(myX+10, myY+30,10,10);
			ellipse(myX+30,myY+30,10,10);
			ellipse(myX+10,myY+20,10,10);
			ellipse(myX+30,myY+20,10,10);

		}

	}
}
