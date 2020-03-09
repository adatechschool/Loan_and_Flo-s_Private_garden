String mode = "day";

void setup()
{
  size(800, 600);
  background(89, 112, 245);
}

void draw()
{
  draw_background();
  draw_trunc();
}

void draw_trunc()
{
  int graineX = width/2;
  int graineY = 550;
  int time = expanded_time();
  if (time > 100) time = 100;
  print(time);
  strokeWeight(1 + time/8);
  stroke(45, 212, 65);
  line(graineX, graineY, graineX, graineY - time*2);
}

void draw_background()
{
  
  if (count_days()%2 == 1)
  {
    fill(255, 0, 0, constrain(count_hours(), 0, 1));
    rect(0, 0, width, height - 100);
    mode = "night";
  }
  else 
  {
    background(89, 112, 21.25*count_hours());
    mode = "day";
  }
  
  noStroke();
  fill(222, 184, 135);
  rect(0, 500, width, 100);
}
