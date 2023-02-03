//Star[] starArray = new Star[50]; // array of 50 Stars
//Circle[] circleArray = new Circle[50]; // array of 50 Circles
//Square[] squareArray = new Square[50]; // array of 50 Squares

Shape[] shapes = new Shape[150];

void setup() {
size( 500, 500 );

  // create some random circles and stars
  for (int i = 0; i < 50; i++ ) {
    float x = random(width);
    float y = random(height);
    float size = random(height * 0.1);
    color colour = randomColour();
    
    int numPoints = (int)random( 4, 10 );

    shapes [i] = new Circle(x, y, size, colour );
    shapes [i+50] = new Star(x, y, size, colour, numPoints );
    shapes [i+100] = new Square(x, y, size, colour);
  }

  //for (int i = 0; i < starArray.length; i++ ) {
  //  float x = random(width);
  //  float y = random(height);
  //  float size = random(height * 0.1);
  //  color colour = randomColour();
  //  int numPoints = (int)random( 4, 10 );

  //  starArray[i] = new Star(x, y, size, colour, numPoints );
  //}

//for (int i = 0; i < squareArray.length; i++ ) {
//    float x = random(width);
//    float y = random(height);
//    float size = random(height * 0.1);
//    color colour = randomColour();

//    squareArray[i] = new Square(x, y, size, colour);
//  }

}

void draw() {
  background(255); // set background to white
  //// draw the circles -> enhanced for loop
  //for ( Circle circle : shapes ) {
  //  circle.update();
  //}
  //// draw the stars
  //for ( Star star : starArray ) {
  //  star.update();
  //}
  //// draw the squares
  //for ( Square square : squareArray ) {
  //  square.update();
  //}
  
  for(Shape shapes : shapes) {
      shapes.update();
  }
  
}
color randomColour() {
  return color( (int)random(256), (int)random(256), (int)random(256) );
}
