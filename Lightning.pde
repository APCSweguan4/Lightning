int startX = 300;
int startY = 300;
int endX = 0;
int endY = 0;
int oP = 200;
void setup()
{
  size(600,600);
  background(0);
  fill(255);
  rect(280, 280, 40, 320);
  strokeWeight(1);
  fill(192);
  ellipse(300, 380, 120, 30);
  ellipse(300, 440, 160, 30);
  ellipse(300, 500, 200, 30);
  ellipse(300, 560, 240, 30);
  fill(255, 255, 0);
  strokeWeight(10);
  ellipse(300, 300, 65, 65);
}

void left(){
  line(startX, startY, endX = startX + (int)(Math.random() * 30) - 29, endY = startY + (int)(Math.random() * 41) - 20);
  oP -= 7;
}

void right(){
  line(startX, startY, endX = startX + (int)(Math.random() * 30), endY = startY + (int)(Math.random() * 41) - 20);
  oP -= 7;
}

void draw()
{
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
