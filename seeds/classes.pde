class Plant
{
  int rate, type, health;
  Plant (int a, int b)
  {
    rate = a;
    type = b;
    health = 100;
  }
  
  void display()
  {
     //tronc();
     //branches();
     //leaves();
     //fruits();
  }
  
  void grow()
  {
     
  }
}

class Water
{
  int quantity;
  Water (int a)
  {
    quantity = a;
  }
  
  void poor()
  {
    
  }
}

class Light
{
  int photons;
  Light (int a)
  {
    photons = a;
  }
  
  void shine()
  {
     
  }
}
