LetterGenerator lg;
String input = "abcba";
PImage shark;
PGraphics pg;


int scaler = 4;

float scaler_f = 1.0 / scaler;

void setup() {
  size(900, 900, P3D);
  
  shark = loadImage("shark.jpg");

  lg = new LetterGenerator(input, 0, height/2);

  pg = createGraphics(width/scaler, height/scaler, P3D);

}

void draw() {
  pg.beginDraw();
  
  pg.background(127);
  pg.scale(scaler_f);
  lg.run(); 
  
  pg.endDraw();
  
  image(pg, 0, 0, width, height);
}
