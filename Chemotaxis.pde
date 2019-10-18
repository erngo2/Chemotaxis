Bacteria[] bob; 
 void setup()   
 {     
 	size(700,700);
 	frameRate(200);
 	bob = new Bacteria[1250];
 	for(int i = 0; i < bob.length; i++){
 		bob[i] = new Bacteria();
 	}
 }   
 void draw()   
 {    
 	background(192);
 	for(int i = 0; i < bob.length; i++){
 		bob[i].move();
 		bob[i].show();
 	}
 }  
 class Bacteria    
 {     
 	int myX, myY;
 	int[] colour;
 	Bacteria()
 	{
 		myX = (int)(Math.random() * 10) + 345;
 		myY = (int)(Math.random() * 10) + 345;
 		colour = new int[3];
 		colour[0] = (int)(Math.random() * 255);
 		colour[1] = (int)(Math.random() * 255);
 		colour[2] = (int)(Math.random() * 255);
 	}
 	void move()
 	{
 		myX += (int)(Math.random() * 5) - 2;
 		myY += (int)(Math.random() * 5) - 2;
 		if(mouseButton == LEFT){
 			if(myX > mouseX)
 				myX--;
 			if(myX < mouseX)
 				myX++;
 			if(myY > mouseY)
 				myY--;
 			if(myY < mouseY)
 				myY++;
 		}
 	}
 	void show()
 	{
 		fill(colour[0], colour[1], colour[2]);
 		ellipse(myX, myY, 10, 10);
 	}
 }    
void keyPressed(){
	for(int i = 0; i < bob.length; i++){
		for(int a = 0; a < 3; a++){
			bob[i].colour[a] = (int)(Math.random() * 255);
		}
	}
}
 void mousePressed()
 {
 	/*if(mouseButton == LEFT){
 		for(int i = 0; i < bob.length; i++)
 		{
 			bob[i].myX = ((int)(Math.random()* 4) - 1) + mouseX;
 			bob[i].myY = ((int)(Math.random()* 5) - 2) + mouseY;
		}
 	} Useless, first attempt at if mouseButton == LEFT in move();
 	*/
 	if(mouseButton == RIGHT){
 		for(int i = 0; i < bob.length; i++)
 		{
 		bob[i].myX = (int)(Math.random() * 10) + 345;
 		bob[i].myY = (int)(Math.random() * 10) + 345;
 		}
 	}
 }

