int count_days()
{
  return count_hours()/24;
}


int count_minutes()
{
  return millis()/(1000/60);
}

int count_hours()
{
  int hour = millis()/1000%24;
  return hour;
}

int expanded_time()
{
  return millis()/1000;
}
