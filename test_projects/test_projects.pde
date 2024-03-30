Snake s1;
Food f1;
void setup(){
  size(640,640);
  frameRate(5);
  
  int sz = 40;
  s1 = new Snake(width/2 - sz/2,height/2 -sz/2,sz);
  f1 = new Food((int)random(0,width),(int)random(0,height),sz);
}

void draw(){
  background(0);
  
  s1.update(); 
  s1.render();
  
  f1.render();
}


void keyPressed() {
  if (key == CODED) {
    switch(keyCode){
      case UP:
        s1.moveUp();
        break;
      case DOWN:
        s1.moveDown();
        break;
      case LEFT:
        s1.moveLeft();
        break;
      case RIGHT:
        s1.moveRight();
    }
  }
    
}
