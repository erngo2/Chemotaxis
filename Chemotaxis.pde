Bacteria[] bob; 
int c = 10;
 void setup()   
 {     
 	size(1000,1000);
 	frameRate(200);
 	noStroke();
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
 		myX = (int)(Math.random() * 10) + 500;
 		myY = (int)(Math.random() * 10) + 500;
 		colour = new int[4];
 		colour[0] = (int)(Math.random() * 255);
 		colour[1] = (int)(Math.random() * 255);
 		colour[2] = (int)(Math.random() * 255);
 		colour[3] = (int)(Math.random() * 255);
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
 		fill(colour[0], colour[1], colour[2], colour[3]);
 		ellipse(myX, myY, c, c);
 	}
 }    
void keyPressed(){
	if(keyCode == TAB){
		for(int i = 0; i < bob.length; i++){
			for(int a = 0; a < 4; a++){
				bob[i].colour[a] = (int)(Math.random() * 255);
			}
		}
	}
	if(keyCode == UP)
		c++;
	if(keyCode == DOWN)
		c--;
}
 void mousePressed()
 {
 	if(mouseButton == RIGHT){
 		for(int i = 0; i < bob.length; i++)
 		{
 		bob[i].myX = (int)(Math.random() * 10) + 500;
 		bob[i].myY = (int)(Math.random() * 10) + 500;
 		}
 	}
 }

