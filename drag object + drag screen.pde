float xos, yos;
int x = 100;
int y = 100;
int sz = 100;
PImage imga;
PImage imgb;
PImage imgc;
PImage imgd;

//tamanho da tela e cor de fundo;
void setup() {
  fullScreen();
  background(0);
  noFill();
  
  //images
  imga = loadImage("1.png");
  imgb = loadImage("2.png");
  imgc = loadImage("3.png");
  imgd = loadImage("4.png");
}

//some fancy stuuuufff here;
void draw() {
  background(0);
  translate(-xos, -yos);
  
  image(imga, x, y, sz, sz);
  image(imgb, x, sz+y, sz, sz);
  image(imgc, x, sz+sz+y, sz, sz);
  image(imgd, x, sz+sz+sz+y, sz, sz);



// x,y -> centre of the circle; when distance is half the diameter, then mouse is inside circle
 if(dist(x, y, mouseX, mouseY) < sz / 2){ //sz -> diametro; sz / 2 = raio!
   //inside image
   cursor(HAND);
   stroke(255);
   if(mousePressed){
     x = mouseX; //moving circle to wherever the mouse is!
     y = mouseY;
     strokeWeight(5);
   } else{
     strokeWeight(2);
   }
   //outside image
  } else{
   noStroke();
   cursor(ARROW);
  }
}


void mouseDragged() {
  xos += pmouseX - mouseX;
  yos += pmouseY - mouseY;
  xos = constrain(xos,0,3000);
  yos = constrain(yos,0,3000);

}
