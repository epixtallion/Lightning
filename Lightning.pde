int startX = 0;
int startY = 150;
int endX = 300;
int endY = 150;
void setup()
{
	size(300,300);
	background(29, 32, 35);
	strokeWeight(3);
}
void draw()
{
	stroke(randomRGB(),randomRGB(),randomRGB());
	while(startX < 300){
		endX = startX + (int) (Math.random()*10);
		endY = startY + (int) (Math.random()*19)-9;
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed()
{
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}
int randomRGB(){
	return (int) (Math.random()*200)+56;
}