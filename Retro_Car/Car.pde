class Car{
  int x=5;
  int y=16;
  void show(){
              strokeWeight(4);
              
              //head
              noFill();
              rect((x+1)*40, y*40, 40, 40);
              fill(0);
              rect((x+1)*40+10, y*40+10, 20, 20);
              
              //top body
              noFill();
              rect((x+1)*40, (y+1)*40, 40, 40);
              fill(0);
              rect((x+1)*40+10, (y+1)*40+10, 20, 20);
              
              //top left
              noFill();
              rect(x*40, (y+1)*40, 40, 40);
              fill(0);
              rect(x*40+10, (y+1)*40+10, 20, 20);
              
              //top right
              noFill();
              rect((x+2)*40, (y+1)*40, 40, 40);
              fill(0);
              rect((x+2)*40+10, (y+1)*40+10, 20, 20);
              
              //mid body
              noFill();
              rect((x+1)*40, (y+2)*40, 40, 40);
              fill(0);
              rect((x+1)*40+10, (y+2)*40+10, 20, 20);
              
              //bottom left
              noFill();
              rect(x*40, (y+3)*40, 40, 40);
              fill(0);
              rect(x*40+10, (y+3)*40+10, 20, 20);
              
              //bottom right
              noFill();
              rect((x+2)*40, (y+3)*40, 40, 40);
              fill(0);
              rect((x+2)*40+10, (y+3)*40+10, 20, 20);
  
  }
  
  void moveLeft(){
    x-=3;
    
    x = constrain(x,2,5);
  
  }
  
  void moveRight(){
    x+=3;
    
    x = constrain(x,2,5);
  
  }


}