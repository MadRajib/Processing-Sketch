class Traffic{
  int x=5;
  
  int y=-5;
  Traffic(){
      x =(floor(random(0,2))==0)?2:5;
  }
  
  void show(){
              strokeWeight(4);
              
              
              
              // left
              noFill();
              rect(x*40, y*40, 40, 40);
              fill(0);
              rect(x*40+10, y*40+10, 20, 20);
              
              
              //top right
              noFill();
              rect((x+2)*40, y*40, 40, 40);
              fill(0);
              rect((x+2)*40+10, y*40+10, 20, 20);
              
              //mid body
              noFill();
              rect((x+1)*40, (y+1)*40, 40, 40);
              fill(0);
              rect((x+1)*40+10, (y+1)*40+10, 20, 20);
              
              //bottom left
              noFill();
              rect(x*40, (y+2)*40, 40, 40);
              fill(0);
              rect(x*40+10, (y+2)*40+10, 20, 20);
              
              //bottom right
              noFill();
              rect((x+2)*40, (y+2)*40, 40, 40);
              fill(0);
              rect((x+2)*40+10, (y+2)*40+10, 20, 20);
              
              //bottom body
              noFill();
              rect((x+1)*40, (y+2)*40, 40, 40);
              fill(0);
              rect((x+1)*40+10, (y+2)*40+10, 20, 20);
              
              //head
              noFill();
              rect((x+1)*40, (y+3)*40, 40, 40);
              fill(0);
              rect((x+1)*40+10, (y+3)*40+10, 20, 20);
  
  }
  
  void update(){
      y++;
     
  }
  boolean collide(Car car){
    
    for(int j=y;j<=y+3;j++){
      for(int l=car.y;l<=car.y+3;l++){
        if(j==l){
          for(int i=x;i<=x+2;i++){
          for(int k=car.x;k<=car.x+2;k++){
              if(i==k){
                return true;
              }
          } 
        }
      }
    
    
    }
    
    
    
    }
    
    
    return false;
  }
  
  


}