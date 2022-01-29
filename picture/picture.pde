PImage image;
int direction = 1;
void setup(){
size(640,455);
image = loadImage("123.png");
background(image);
frameRate(5);
}

void draw()
{
  

for(int i =0;i<width;i+=5){
  for(int j =0;j<height;j+=5){
    color c = get(i, j);
noStroke();
fill(c);
switch(direction){
  case 1:circle(i-random(5),j-random(5),5);break;
  case 2:circle(i+random(5),j-random(5),5);break;
  case 3:circle(i+random(5),j+random(5),5);break;
  case 4:circle(i-random(5),j+random(5),5);break;
}

}

}

}

void mouseClicked(){

  if(mouseX<50&&mouseX>0&&mouseY>0&&mouseY<50){
  direction = 1;  
  }
    if(mouseX<width&&mouseX>width-50&&mouseY>0&&mouseY<50){
  direction = 2;  
  }
    if(mouseX<width&&mouseX>width-50&&mouseY>height-50&&mouseY<height){
  direction = 3;  
  }
    if(mouseX<50&&mouseX>0&&mouseY>height-50&&mouseY<height){
  direction = 4;  
  }


}
