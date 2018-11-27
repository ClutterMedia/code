float xos, yos;
int x = 100;
int y = 100;
int sz = 100;
PImage img;

//tamanho da tela e cor de fundo;
void setup() {
  fullScreen();
  background(0);
  noFill();
  
  //images
  img = loadImage("arrow.png");
}

//some fancy stuuuufff here;
void draw() {
 background (#441177);
 translate(-xos, -yos);
 
 
 image(img, x, y, sz, sz);
  fill(255, 100, 200);
 
   
   ellipse(x, y+100, sz, sz);
  fill(0, 200, 0);
  ellipse(x, y, sz, sz);
  fill(0, 0, 200);
  ellipse(x, y-100, sz, sz);


 
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
