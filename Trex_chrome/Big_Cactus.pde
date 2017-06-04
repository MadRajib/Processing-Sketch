class Big_Cactus {
   int sx=652;
   int sy=2;
   int sw=50;
   int sh=100;
   int dx=width;
   int dy=height-50-sh-ground.sh+15;
   int speed=20;
   boolean hit= false;
   int collison_x=dx+sw/2;
   int collison_y=dy+50/2;
   int collion_radius=53/2;
   
  
   
   public void increaseSpeed(){
    speed+=5;
   }
   
   public void show(){
    copy(image,sx,sy,sw,sh,dx,dy,sw,sh);
   }
  
  
  public void update(){
    dx-=speed;
    
    if(dx<=-sw){
      dx=width;
      hit = false;  
    }
    collison_x=dx+sw/2;
  }
  
  public void stop(){
    copy(image,sx,sy,sw,sh,dx,dy,sw,sh);
  }
}