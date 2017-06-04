class Background{
   int sx=166;
   int sy=2;
   int sw=92;
   int sh=27;
   int dx=width;
   int dx_1=dx+400;
   int dx_2=dx_1+400;
   int dx_3=dx_2+400;
   int dy=52;
   int speed=10;
 
  
  public void show(){
    copy(image,sx,sy,sw,sh,dx,dy,sw,sh);
    copy(image,sx,sy,sw,sh,dx_1,dy+100,sw,sh);
    copy(image,sx,sy,sw,sh,dx_2,dy,sw,sh);
    copy(image,sx,sy,sw,sh,dx_3,dy+100,sw,sh);
    
  }
  
  
  public void update(){
    dx-=speed;
    dx_1-=speed;
    dx_2-=speed;
    dx_3-=speed;
    
    if(dx<=-sw){
      dx=width;
    }
    if(dx_1<=-sw){
      dx_1=width;
    }
    if(dx_2<=-sw){
      dx_2=width;
    }
    if(dx_3<=-sw){
      dx_3=width;
    }
 
  }
  public void stop(){
    copy(image,sx,sy,sw,sh,dx,dy,sw,sh);
    copy(image,sx,sy,sw,sh,dx+60,dy,sw,sh);
    copy(image,sx,sy,sw,sh,dx-80,dy-20,sw,sh);
  }

}