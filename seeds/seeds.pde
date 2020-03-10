String mode = "day";
//PImage soleil = loadImage("soleil.png");
//PImage lune = loadImage("lune.png");
PImage ciel, lune, soleil;

void setup()
{
  ciel = loadImage("sky.png");
  lune = loadImage("lune.png");
  soleil = loadImage("soleil.png");
  soleil.resize(150, 150);
  lune.resize(150, 150);
  size(800, 600);
  background(222, 184, 135);
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
  strokeWeight(1 + time/8);
  stroke(45, 212, 65);
  line(graineX, graineY, graineX, graineY - time*2);
}

void draw_background()
{
  noStroke();
  image(ciel, 0, 0);
  
  if (count_hours() >= 0 && count_hours() <= 12)
  { 
    int time_of_day = count_hours();
    mode = "day";
    image(soleil, time_of_day*width/12, 100);
  }
  else 
  {
    int time_of_night = count_hours() - 12;
    fill(0, 0, 0, float(time_of_night)*8/100);
    print(float(time_of_night)*8/100);
    rect(0, 0, 800, 500);
    image(lune, time_of_night * width/12, 100);
  }
  

}
