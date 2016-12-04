ArrayList<Wave> waves;

void setup()
{
  size(800, 600);
  
  waves = new ArrayList<Wave>();
  waves.add(new Wave(new PVector(0, height / 4), width, 50, 45, radians(45), 40, color(255, 0, 0)));
  waves.add(new Wave(new PVector(0, height / 2), width, 50, 120, radians(30), 40, color(0, 200, 255)));
  waves.add(new Wave(new PVector(0, height - (height / 4)), width, 50, 540, radians(15), 40, color(0, 255, 0)));
}

void draw()
{
  background(0, 0, 139);
  
  for(Wave w : waves)
  {
    w.oscillate();
  }
}
