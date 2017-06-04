class Ground{
 int sx=2;
 int sy=103;
 int sw=2400;
 int sh=24;
 int dx=0;
 int dy=height-sh-50;
 int speed=20;
 
 public void increaseSpeed(){
    speed+=5;
  }
  
 public void show(){
     copy(image,sx,sy,sw,sh,dx,dy,sw,sh);
     copy(image,sx,sy,sw,sh,dx+sw,dy,sw,sh);
 }
 
 public void update(){
     dx-=speed;
     if(dx<=-sw){
         dx=0;
     }
 }
 public void stop(){
     copy(image,sx,sy,sw,sh,dx,dy,sw,sh);
     copy(image,sx,sy,sw,sh,dx+sw,dy,sw,sh);
     copy(image,1294,29,381,21,width/2-381/2,height/2-21/2,381,21);
     copy(image,2,2,72,64,width/2-36/2,height/2+21+10,36,32);
     
 }
 public void restart(){
     dx=0;
     speed=20;
 }
}