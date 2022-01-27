class LetterGenerator {
  
  PShape a, b, c;
  ArrayList<Letter> letters;
  PVector position;
  float offset = 150;
  
  LetterGenerator(String input, float x, float y) {
    initShapes();
    position = new PVector(x, y);
    letters = new ArrayList<Letter>();
    
    for (int i=0; i<input.length(); i++) {     
      char ch = input.charAt(i);
      
      float px = position.x + ((i+1) * offset);
      float py = position.y;
      
      switch(ch) {
        case 'a':
          letters.add(new Letter(a, px, py));
          break;
        case 'b':
          letters.add(new Letter(b, px, py));
          break;
        case 'c':
          letters.add(new Letter(c, px, py));
          break;
      }
    }
    
  }

  void initShapes() {
    a = createShape();
    a.beginShape();
a.fill(-16770432);
a. translate(241.004, 138.17099);
   a.vertex(-3.9761505, 6.958252);
   a.vertex(-72.56465, 174.9503);
 a.  vertex(54.671967, 139.16502);
 a.  vertex(63.618317, 96.42148);
  a. vertex(92.44531, 147.11732);
 a. vertex(-120.278366, 215.7058);
 a.vertex(-41.749527, 29.821075);
 a.vertex(-157.0577, 55.666016);
 a.vertex(-166.00403, 98.40956);
 a.vertex(-212.7237, 50.69583);
    a.endContour();
    a.endShape(CLOSE);
    
    b = createShape();
b.  beginShape();
b.  fill(-6730394);
b.  translate(609.7913, 106.36184);
b.  vertex(0.0, 0.0);
b.  vertex(19.880676, 49.70179);
 b. vertex(-14.358485, 34.4968);
b.  vertex(-91.451294, 84.49306);
 b. vertex(-60.63617, 126.24255);
b.  vertex(-2.9820862, 105.3678);
 b. vertex(29.609581, 81.84196);
b.  vertex(37.207817, 116.02538);
b.  vertex(-41.74951, 157.05766);
b.  vertex(-17.89264, 223.65807);
b.  vertex(66.97409, 208.8457);
 b. vertex(71.57062, 163.02188);
b.  vertex(101.39166, 214.71176);
b.  vertex(-41.66128, 278.25986);
b.  vertex(-142.14716, 64.61233);
    b.endContour();
    b.endShape(CLOSE);   
    
    c = createShape();
    c.beginShape();
 c. beginShape();
   c.fill(-32640);
c.  translate(48.58, 50);
  c.vertex(0.0, 0.0);
 c. vertex(-5.9887047, 58.41774);
 c. vertex(25.985294, 40.214096);
 c. vertex(110.12959, 43.731926);
c.  vertex(93.43939, 135.18887);
  c.vertex(58.648132, 154.07556);
c.  vertex(134.41045, 169.37563);
  c.vertex(140.3098, 58.040173);
c.  vertex(239.50903, 108.736725);
 c. vertex(248.99515, 31.547226);
  c.vertex(221.93335, 50.508125);
  c.vertex(154.20955, 29.205025);
 c. vertex(173.35045, -36.237072);
 c. vertex(204.56715, -49.528576);
 c. vertex(150.70299, -68.09152);
  c.vertex(121.8671, 17.178486);
    c.endShape(CLOSE);
  }
  
  void update() {
    //
  }
  
  void draw() {
    for (Letter letter : letters) {
      letter.run();
    }
  }
  
  void run() {
    update();
    draw();
  }

}
