int cols =0;
int rows =0;
int wd=20;
int x_width=1200;
int y_height=1200;
float translate_z[][];
float flying=0;
void setup(){
  size(600,600,P3D);
  cols = floor(x_width/wd);
  rows = floor(y_height/wd);
  translate_z= new float[rows][cols];
}

void draw(){
  background(0);
  stroke(255);
  noFill();
  flying-=0.1;
  float yoff=flying;
  for(int y=0;y<rows;y++){
    float xoff=0;  
    for(int x=0;x<cols;x++){
         translate_z[x][y]=map(noise(xoff,yoff),0,1,-100,100);
         xoff+=0.2;
      }
      yoff+=0.2;
   }
  
  
  translate(width/2,height/2);
  
  rotateX(PI/3);
  translate(-x_width/2,-y_height/2);
    for(int y=0;y<rows-1;y++){
      beginShape(TRIANGLE_STRIP);
      for(int x=0;x<cols;x++){
        vertex(x*wd,y*wd,translate_z[x][y]);
        vertex(x*wd,(y+1)*wd,translate_z[x][y+1]);
      }
      endShape();
    }
}