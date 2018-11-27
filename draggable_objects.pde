int x = 100;
int y = 100;
int sz = 100;
PImage img;

//tamanho da tela e cor de fundo;
void setup() {
  size(560, 600);
  background(0);
  noFill();
  
  //images
  img = loadImage("boat_test.png");
}

//some fancy stuuuufff here;
void draw() {
 image(img, 0, 0, width/4, height/4);
 ellipse(x, y, sz, sz);
 fill(255, 100, 200);
 
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
