class Square extends Shape {

  Square( float x, float y, float size, color colour)
  {
    super (x, y, size, colour);
    // set a target to move towards
    xt = x;
    yt = y;
  }
  
  @Override
  void render() 
  {
    fill( colour );
    rect( x, y, size*2, size*2 );
  }
  
  @Override
  void move() 
  {
    if ( (x-xt)*(x-xt) + (y-yt)*(y-yt) < 1 )
    {
      // choose a new target
      xt = x + random( -50, 50 );
      yt = y + random( -50, 50 );
    }
    // move towards target
    x = xt * 0.05 + x * 0.95;
    y = yt * 0.05 + y * 0.95;
  }
  
}
