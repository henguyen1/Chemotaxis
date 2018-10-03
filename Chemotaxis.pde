Bacteria [] bob;
void setup()   
{     
 	size(900,900);
    bob = new Bacteria[10000];
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
 		myX = myX + ((int)(Math.random() * 3)-1);
 		myY = myY + ((int)(Math.random() * 3)-1);
 	} 

 	void show()
 	{
 		//myColour = ((int)(Math.random()*255));
 		fill(0,200,0);
 		ellipse(myX,myY,5,5);
 	}
}