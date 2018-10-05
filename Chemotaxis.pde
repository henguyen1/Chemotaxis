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
 		myX = myX + ((int)(Math.random() * 9)-4);
 		myY = myY + ((int)(Math.random() * 9)-4);	
 	} 
 	void show()
 	{
 		myColour = ((int)(Math.random()*255));
 		fill(0,myColour,myColour);
 		ellipse(myX,myY,5,5);
 	}
}
