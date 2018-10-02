Bacteria [] colony; 
int i;
 void setup()   
 {     
 	size(900,900);
 	colony = new Bacteria[2];
 	for (i = 0; i < colony.length; i++)
 	{
 		colony[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	colony[i].move();
 	colony[i].show(); 
 }  
 class Bacteria    
 {  
 	int myX, myY, rgb;
 	Bacteria()
 	{
 		myX = 0;
 		myY = 0;
 		rgb = ((int)(Math.random() * 256));
 	}
 	void move()
 	{
 		myX = ((int)(Math.random() * 3)-1);
 		myY = ((int)(Math.random() * 3)-1);
 	} 

 	void show()
 	{
 		fill(rgb,rgb,rgb);
 		ellipse(myX,myY,5,5);
 	}
 }    