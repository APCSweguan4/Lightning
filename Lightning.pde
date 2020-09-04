int startX = 300;
int startY = 300;
int endX = 0;
int endY = 0;
int oP = 200;
int cloud1StartX = 100;
int cloud2StartX = 200;
int cloud3StartX = 300;
int cloud4StartX = 400;
int cloud5StartX = 500;
int cloud6StartX = 600;
int cloud0StartX = 0;
int cloud1StartY = 10;
int cloud2StartY = 10;
int cloud3StartY = 10;
int cloud4StartY = 10;
int cloud5StartY = 10;
int cloud6StartY = 10;
int cloud0StartY = 10;
int cloud1EndX = 0;
int cloud2EndX = 0;
int cloud3EndX = 0;
int cloud4EndX = 0;
int cloud5EndX = 0;
int cloud6EndX = 0;
int cloud0EndX = 0;
int cloud1EndY = 0;
int cloud2EndY = 0;
int cloud3EndY = 0;
int cloud4EndY = 0;
int cloud5EndY = 0;
int cloud6EndY = 0;
int cloud0EndY = 0;

void setup()
{
  size(600,600);
  background(0);
  frameRate(80);
}

void left(){
  strokeWeight(3);
  line(startX, startY, endX = startX + (int)(Math.random() * 30) - 29, endY = startY + (int)(Math.random() * 41) - 20);
  oP -= 7;
}

void right(){
  strokeWeight(3);
  line(startX, startY, endX = startX + (int)(Math.random() * 30), endY = startY + (int)(Math.random() * 41) - 20);
  oP -= 7;
}

void down(){
  strokeWeight(5);
  stroke(255, 0, 255, 100);
  line(cloud1StartX, cloud1StartY, cloud1EndX = cloud1StartX + (int)(Math.random() * 7), cloud1EndY = cloud1StartY + (int)(Math.random() * 20));
  line(cloud2StartX, cloud2StartY, cloud2EndX = cloud2StartX + (int)(Math.random() * 7), cloud2EndY = cloud2StartY + (int)(Math.random() * 20));
  line(cloud3StartX, cloud3StartY, cloud3EndX = cloud3StartX + (int)(Math.random() * 7), cloud3EndY = cloud3StartY + (int)(Math.random() * 20));
  line(cloud4StartX, cloud4StartY, cloud4EndX = cloud4StartX + (int)(Math.random() * 7), cloud4EndY = cloud4StartY + (int)(Math.random() * 20));  
  line(cloud5StartX, cloud5StartY, cloud5EndX = cloud5StartX + (int)(Math.random() * 7), cloud5EndY = cloud5StartY + (int)(Math.random() * 20));
  line(cloud6StartX, cloud6StartY, cloud6EndX = cloud6StartX + (int)(Math.random() * 7), cloud6EndY = cloud6StartY + (int)(Math.random() * 20));
  line(cloud0StartX, cloud0StartY, cloud0EndX = cloud0StartX + (int)(Math.random() * 7), cloud0EndY = cloud0StartY + (int)(Math.random() * 20));
}

void cloud(){
  fill(169);
  ellipse(100, 10, 200, 200);
  ellipse(200, 10, 200, 200);
  ellipse(300, 10, 200, 200);
  ellipse(400, 10, 200, 200);
  ellipse(500, 10, 200, 200);
  ellipse(600, 10, 200, 200);
  ellipse(550, 10, 200, 200);
  ellipse(450, 10, 200, 200);
  ellipse(350, 10, 200, 200);
  ellipse(250, 10, 200, 200);
  ellipse(150, 10, 200, 200);
  ellipse(50, 10, 200, 200);
}

void tesla(){
  fill(255);
  rect(280, 280, 40, 320);
  strokeWeight(10);
  fill(192);
  ellipse(300, 380, 120, 30);
  ellipse(300, 440, 160, 30);
  ellipse(300, 500, 200, 30);
  ellipse(300, 560, 240, 30);
  fill(255, 255, 0);
  strokeWeight(10);
  ellipse(300, 300, 65, 65);
}

void draw()
{
  fill(0, 0, 0, 25);
  rect(-10, -10, 650, 650);
  stroke(255, 0, 255, oP);
  startX = startX + ((int)(Math.random() * 3) - 1);
  strokeWeight(3);
  if (startX < 300){
    tesla();
    cloud();
    left();
  } else if (startX >= 300) {
    tesla();
    cloud();
    right();
  }
  down();
  startX = endX;
  startY = endY;
  cloud1StartX = cloud1EndX;
  cloud1StartY = cloud1EndY;
  cloud2StartX = cloud2EndX;
  cloud2StartY = cloud2EndY;
  cloud3StartX = cloud3EndX;
  cloud3StartY = cloud3EndY;
  cloud4StartX = cloud4EndX;
  cloud4StartY = cloud4EndY;
  cloud5StartX = cloud5EndX;
  cloud5StartY = cloud5EndY;
  cloud6StartX = cloud6EndX;
  cloud6StartY = cloud6EndY;
  cloud0StartX = cloud0EndX;
  cloud0StartY = cloud0EndY;
}

void mousePressed()
{
  if ((startX > 600  && cloud0StartY > 600)|| (startX < 0 && cloud0StartY > 600)){
     oP = 200;
   startX = 300;
   startY = 300;
   endX = 0;
   endY = 0;
   cloud1StartX = 100;
   cloud2StartX = 200;
   cloud3StartX = 300;
   cloud4StartX = 400;
   cloud5StartX = 500;
   cloud6StartX = 600;
   cloud0StartX = 0;
   cloud1StartY = 10;
   cloud2StartY = 10;
   cloud3StartY = 10;
   cloud4StartY = 10;
   cloud5StartY = 10;
   cloud6StartY = 10;
   cloud0StartY = 10;
   cloud1EndX = 0;
   cloud2EndX = 0;
   cloud3EndX = 0;
   cloud4EndX = 0;
   cloud5EndX = 0;
   cloud6EndX = 0;
   cloud0EndX = 0;
   cloud1EndY = 0;
   cloud2EndY = 0;
   cloud3EndY = 0;
   cloud4EndY = 0;
   cloud5EndY = 0;
   cloud6EndY = 0;
   cloud0EndY = 0;
  }
}

public void keyPressed(){
  if ((startX > 600  && cloud0StartY > 600)|| (startX < 0 && cloud0StartY > 600)){
     oP = 200;
   startX = 300;
   startY = 300;
   endX = 0;
   endY = 0;
   cloud1StartX = 100;
   cloud2StartX = 200;
   cloud3StartX = 300;
   cloud4StartX = 400;
   cloud5StartX = 500;
   cloud6StartX = 600;
   cloud0StartX = 0;
   cloud1StartY = 10;
   cloud2StartY = 10;
   cloud3StartY = 10;
   cloud4StartY = 10;
   cloud5StartY = 10;
   cloud6StartY = 10;
   cloud0StartY = 10;
   cloud1EndX = 0;
   cloud2EndX = 0;
   cloud3EndX = 0;
   cloud4EndX = 0;
   cloud5EndX = 0;
   cloud6EndX = 0;
   cloud0EndX = 0;
   cloud1EndY = 0;
   cloud2EndY = 0;
   cloud3EndY = 0;
   cloud4EndY = 0;
   cloud5EndY = 0;
   cloud6EndY = 0;
   cloud0EndY = 0;
  }
}
