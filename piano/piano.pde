import ddf.minim.*;
AudioPlayer duo,re,mi,fa,sol,la,si,du;
Minim minim;
PImage background;
int[] alpha = new int[8];
AudioPlayer[] music = new AudioPlayer[8];
ArrayList<Integer> records = new ArrayList<Integer>();
String[] symbols = new String[8];
boolean play = false;
int index=0;

void setup(){
  size(1920,1080);
  background = loadImage("12345.png");
  minim = new Minim(this);
  music[0]=duo = minim.loadFile("1.mp3");
  music[1]=re = minim.loadFile("2.mp3");
  music[2]=mi = minim.loadFile("3.mp3");
  music[3]=fa = minim.loadFile("4.mp3");
  music[4]=sol = minim.loadFile("5.mp3");
  music[5]=la = minim.loadFile("6.mp3");
  music[6]=si = minim.loadFile("7.mp3");
  music[7]=du = minim.loadFile("8.mp3");
  symbols[0] = "Do";
  symbols[1] = "Re";
  symbols[2] = "Mi";
  symbols[3] = "Fa";
  symbols[4] = "Sol";
  symbols[5] = "La";
  symbols[6] = "Si";
  symbols[7] = "Do";
   
  for(int i= 0;i<8;i++){
    alpha[i] = 0;  
  } 
}

void  draw(){
  background(background);
  for(int i = 0;i<8;i++){
    fill(158,10,10,alpha[i]);
    rect(590+i*96,570,95,400);
  }

  for(int i = 0;i<records.size();i++){
    fill(158,10,10);
    textSize(40);
    int row = i/8;
    int col = i%8;
    text(symbols[records.get(i)],700+col*80,140+row*90);
  
  }


}
  
void mouseClicked(){
 
  if(abs(mouseX-637)<45&&abs(mouseY-750)<200){
    duo.play();  
    duo.rewind();
     for(int i= 0;i<8;i++){
    alpha[i] = 0;  
  }
  alpha[0] = 100;
  records.add(0);
  }
  
    //re
  if(abs(mouseX-738)<45&&abs(mouseY-750)<200){
    re.play();  
    re.rewind();
     for(int i= 0;i<8;i++){
    alpha[i] = 0;  
  }
  alpha[1] = 100;
  records.add(1);
  }
  
      //mi
  if(abs(mouseX-832)<45&&abs(mouseY-750)<200){
    mi.play();  
    mi.rewind();
     for(int i= 0;i<8;i++){
    alpha[i] = 0;
    
  }
  alpha[2] = 100;
  records.add(2);
  }
  
        //fa
  if(abs(mouseX-932)<45&&abs(mouseY-750)<200){
    fa.play();  
    fa.rewind();
     for(int i= 0;i<8;i++){
    alpha[i] = 0;  
  }
  alpha[3] = 100;
  records.add(3);
  }
          //sol
  if(abs(mouseX-1028)<45&&abs(mouseY-750)<200){
    sol.play();  
    sol.rewind();
     for(int i= 0;i<8;i++){
    alpha[i] = 0;  
  }
  alpha[4] = 100;
  records.add(4);
  }
  
            //la
  if(abs(mouseX-1122)<45&&abs(mouseY-750)<200){
    la.play();  
    la.rewind();
     for(int i= 0;i<8;i++){
    alpha[i] = 0;  
  }
  alpha[5] = 100;
  records.add(5);
  }
              //si
  if(abs(mouseX-1214)<45&&abs(mouseY-750)<200){
    si.play();  
    si.rewind();
     for(int i= 0;i<8;i++){
    alpha[i] = 0;  
  }
  alpha[6] = 100;
  records.add(6);
  }
                //do
  if(abs(mouseX-1316)<45&&abs(mouseY-750)<200){
    du.play();  
    du.rewind();
     for(int i= 0;i<8;i++){
    alpha[i] = 0;  
  }
  alpha[7] = 100;
  records.add(7);
  }

    
    }
 
