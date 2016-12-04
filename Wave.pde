class Wave
{
  PVector position;
  float x, y;
  float w;
  float amplitude;
  float period;
  float angleIncrement;
  int points;
  color c;
  
  Wave(PVector position, float w, float amplitude, float period, float angleIncrement, int points, color c)
  {
    this.position = position;
    this.w = w;
    this.amplitude = amplitude;
    this.period = period;
    this.angleIncrement = angleIncrement;
    this.points = points;
    this.c = c;
  }
  
  void oscillate()
  {
    fill(c);
    
    for(int i = 0; i < points; ++i)
    {
      y = amplitude * sin((TWO_PI * frameCount / period) + angleIncrement * i);
      x = i * w / (points - 1);
      
      ellipse(position.x + x, position.y + y, w / points, w / points);
    }
  }
}
