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
  print(count_hours());
}

void draw_trunc()
{
  int graineX = width/2;
  int graineY = 550;
  int time = expanded_time();
  int vitesse = 4;
  if (time > 200) time = 200;
  
  strokeWeight(1 + time/15*vitesse);
  stroke(45, 212, 65);
  line(graineX, graineY, graineX, graineY - time*2*vitesse);
}

void draw_background()
{
  
  if (count_days()%2 == 1)
  {
    background(89, 112, 255/12 - count_hours());
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

int count_days()
{
  return count_hours()/24;
}

int count_hours()
{
  int hour = millis()/1000%12;
  return hour;
}

int expanded_time()
{
  return millis()/1000;
}
