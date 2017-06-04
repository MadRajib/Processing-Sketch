class Pads{
 int xpos;
 int ypos;
 int ht=100;
 int wd=20;
 int speed=10;
 int type;
  Pads(int pad){
   if(pad==0){
     xpos=0+wd;
     ypos=height/2-ht/2;
     
   }
   if(pad==1){
     xpos=width-2*wd;
     ypos=height/2-ht/2;
   }
   this.type=pad;
  }
  public void show(){
    
    rect(xpos,ypos,wd,ht);
  
  }
  public void move(int direct){
    if(direct==-1){
      ypos-=speed;
      
    }else if(direct==1){
      ypos+=speed;
    }
    
    ypos=constrain(ypos,0-ht/2,height-ht/2);
  
  }

}