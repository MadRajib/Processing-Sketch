class Trex{

 int sx=1854;
 int sy=2;
 int sw=88;
 int sh=93;
 int dx=20;
 int dy=height-50-sh-ground.sh+15;
 int stand_trex_px=1678;
 int stand_trex_py=2;
 int collison_x=dx+80/2;
 int collison_y=dy+80/2;
 int collion_radius=sw/2;
 
 float gravity = 9;
  float lift =-60;
  float velocity = 0;
 
 public void show(){
      if(dy==height-50-sh-ground.sh+15){
        copy(image,sx,sy,sw,sh,dx,dy,sw,sh);
      }else{
        copy(image,stand_trex_px,stand_trex_py,sw,sh,dx,dy,sw,sh);
      }
 }
 
 public void update(){
     sx+=88;
     if(sx%2030==0){
        sx=1854;
     }
    if(dy<height-50-sh-ground.sh+15){
      velocity += gravity;
      velocity *=0.9;
      dy +=velocity;
      collison_y=dy+floor((sh/2));
      
       if((dy>height-50-sh-ground.sh+15)){
          dy=height-50-sh-ground.sh+15;
          collison_y=dy+floor((sh/2));
          velocity=0;
       }
    
    }
     
    
 }
 
 public void jump(){
   
     if(dy==height-50-sh-ground.sh+15){
      velocity+=lift;
      dy +=velocity;
      collison_y=dy+floor((sh/2));
    } 
   
     
 }
 public void stop(){
       copy(image,2030,2   ,sw,sh,dx,dy,sw,sh);
       
 }
 public void restart(){
     velocity = 0;
     dy=height-50-sh-ground.sh+15;
     sx=1854;
     collison_y=dy+80/2;
 }
 
}