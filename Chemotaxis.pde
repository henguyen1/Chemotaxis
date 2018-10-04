Bacteria [] bob;
void setup()   
{     
	frameRate(60);
 	size(800,800);
    bob = new Bacteria[1000];
    for(int i=0; i<bob.length; i++)
  	{
    	bob[i] = new Bacteria();
 	}   
}
void draw()   
{   
	background(150);
 	for(int i=0; i<bob.length; i++)
 	{
 		bob[i].show();
 		bob[i].move();
 	} 
} 
class Bacteria    
{  
 	int myX, myY, myColour;
 	Bacteria()
 	{
 		myX = 500;
 		myY = 500;
 	}
 	void move()
 	{
 		if (myX > 550 || myY > 550)
 		{
 			myX = myX + ((int)(Math.random() * 3)-10);
 			myY = myY + ((int)(Math.random() * 3)-10);
 		}
 		else if (myX < 450 || myY < 450)
 		{
 			myX = myX + ((int)(Math.random() * 8)-1);
 			myY = myY + ((int)(Math.random() * 8)-1);
 		}
 		else
 		{
 			myX = myX + ((int)(Math.random() * 3)-1);
 			myY = myY + ((int)(Math.random() * 3)-1);
 		}		
 	} 
 	void show()
 	{
 		myColour = ((int)(Math.random()*255));
 		fill(0,myColour,myColour);
 		ellipse(myX,myY,5,5);
 	}
}
/*
Prototype for Pepe the Frog
void draw()
{
  fill(0,170,0);
  ellipse(250,250,100,100);
  ellipse(280,200,50,50);
  ellipse(230,200,50,50);
  noStroke();
  fill(255);
  ellipse(240,200,40,20);
  ellipse(290,200,40,20);
  fill(0);
  ellipse(290,200,18,18);
  ellipse(240,200,18,18);
  fill(255);
  ellipse(288,193,3,3);
  ellipse(238,193,3,3);
  ellipse(294,198,5,5);
  ellipse(244,198,5,5);
  ellipse(288,203,2,2);
  ellipse(238,203,2,2);
}
*/ 