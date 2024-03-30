ArrayList<Circle> circles;
int size;

void setup(){
  size(800,800);
  size = 40;
  int cx = width/2 - size;
  int cy = height/2 - size;
  
  circles = new ArrayList();
  float pd = 0.30;
  
  for (int i =1;i <= 80; i++){
    for(int j = 1;j<= 80;j++){
        float x = dist(i*size,j*size,cx,cy);
        x = map(x,cx,0,pd,pd*(cx/size));
        
        circles.add(new Circle((size*j),(size*i), size,x));
    }
  }
 
}

void draw(){
  background(39,40,56);
  noStroke();
  //fill(255);
  for (Circle c : circles) {
        c.update();
        c.render();
  }
 
}
