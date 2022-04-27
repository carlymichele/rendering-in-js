import peasy.*;

// dimensions
int DIM = 32;
PeasyCam cam;

void setup() {
  size(800, 800, P3D);
  windowMove(100, 100);
  cam = new PeasyCam(this, 500);
}


void draw() {
  background(0);
 //visualizing voxels of a cube
  for (int i = 0; i < DIM; i++) {
    for (int j = 0; j < DIM; j++){
      for (int k = 0; k < DIM; k++){
        float x = map(i, 0, DIM, -100, 100);
        float y = map(j, 0, DIM, -100, 100);
        float z = map(k, 0, DIM, -100, 100);
        stroke(255);
        point(x,y,z);
      }
    }
  }
}
