int startX = 300;
int startY = 300;
int endX = 0;
int endY = 0;
int oP = 200;
void setup()
{
  size(600,600);
  background(0);
  frameRate(40);
}

void left(){
  line(startX, startY, endX = startX + (int)(Math.random() * 30) - 29, endY = startY + (int)(Math.random() * 41) - 20);
  oP -= 7;
}

void right(){
  line(startX, startY, endX = startX + (int)(Math.random() * 30), endY = startY + (int)(Math.random() * 41) - 20);
  oP -= 7;
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
  fill(0, 0, 0, 15);
  rect(-10, -10, 650, 650);
  tesla();
  cloud();
  strokeWeight(3);
  stroke(255, 0, 255, oP);
  startX = startX + ((int)(Math.random() * 3) - 1);
  if (startX < 300){
    left();
  } else if (startX >= 300) {
    right();
  }
  startX = endX;
  startY = endY;
}

void mousePressed()
{
   oP = 200;
   startX = 300;
   startY = 300;
   endX = 0;
   endY = 0;
}
