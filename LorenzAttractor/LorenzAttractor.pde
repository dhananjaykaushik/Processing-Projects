import peasy.*;

float x = 0.01, y = 0, z = 0;
PeasyCam cam;

float a = 10;
float b = 28;
float c = (8 / 3);

ArrayList<PVector> points = new ArrayList<PVector>();



void setup() {

  size(1366, 800, P3D);
  colorMode(HSB);
  cam = new PeasyCam(this, 600);
}


void draw() {
  
  background(0);
  
  float dt = 0.01;

  float dx = ( a * (y - x) ) * dt;
  float dy = ( x * (b - z) - y ) * dt;
  float dz = ( x * y - c * z ) * dt;
  x += dx;
  y += dy;
  z += dz;
  
  points.add(new PVector(x, y, z));
  
  scale(5);
  stroke(255);
  noFill();
  beginShape();
  float hu = 50;
  for(PVector p : points) {
    stroke(hu, 255, 255);
    vertex(p.x, p.y, p.z);
    hu += 0.5;
    if(hu >= 255) {
      hu = 0;
    }
    
    
  }
  endShape();
  
  //println(x + " : " + y + " : " + z);

}