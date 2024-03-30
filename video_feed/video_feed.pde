import processing.video.*;

Capture cam;

int rows, cols;
int scale;

char char_pixels[] = {'█', '▓','▒', '◆','✖','+','-',' '};
char ch = ' ';


void setup() {
  size(1280, 960);
  scale = 20;  
  cols = width/scale;
  rows =  height/scale;
  
  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    exit();
  } else {
    cam = new Capture(this,cols,rows, cameras[0]);
    cam.start();     
  }      
}

// Read image from the camera
void captureEvent(Capture video) {  
  video.read();
}

void draw() {
  background(255);
  cam.loadPixels();
  fill(0);
  textSize(15);
  
  for(int c = 0;c < cols; c++){
    for(int r =0; r< rows; r++){
      int x = c*scale;
      int y = r*scale;
      
      //cols - 1 -c to flip vertically
      color cr = cam.pixels[(cols-1 -c)+r*cam.width];
      float avg = (red(cr) + green(cr) + blue(cr))/3;
      
      ch = char_pixels[int(avg/32)];
      
      text(ch,x,y);
    }
  }
  
  
}
