class Pluck{
  
  int x=-1;
  float y=0;
  int dia=20;
  int speedMag=4;
  int posx=width/2;
  int posy=height/2;
  
  public void show(){
    ellipse(posx,posy,dia,dia);
  }
  
  public void update(Score score){
    if((posy+dia/2>=height)){
      y*=-1;
    }
    if((posy-dia/2)<=0){
      posy=dia/2;
      y*=-1;
    }
    posx+=speedMag*x;
    posy+=speedMag*y;
    println(posy);
    
    
    if(posx>width){
      posx=width/2;
      posy=height/2;
      x=-1;
      y=0;
      score.updateLeft();
    }
    if(posx<0){
      posx=width/2;
      posy=height/2;
      x=1;
      y=0;
      score.updateRight();
    }
    
    
  }
  public void hit(Pads pad){
    if(pad.type==0){
        if(((this.posy+this.dia/2>=pad.ypos)||(this.posy-this.dia/2<=(pad.ypos+pad.ht)))&&((this.posx-this.dia/2)>pad.xpos&&(this.posx+this.dia/2)<(pad.xpos+pad.wd))){
            set_y();
        }
        if((((this.posx-this.dia/2)<(pad.xpos+pad.wd))&&((this.posx-this.dia/2)>=pad.xpos))&&((this.posy+this.dia/2)>=pad.ypos&&(this.posy-this.dia/2)<=(pad.ypos+pad.ht))){
            
            x*=-1;
            set_y();
           
        }
    }else if(pad.type==1){
        if(((this.posy+this.dia/2>=pad.ypos)||(this.posy-this.dia/2<=(pad.ypos+pad.ht)))&&((this.posx-this.dia/2)>pad.xpos&&(this.posx+this.dia/2)<(pad.xpos+pad.wd))){
            set_y();
        }
      
      
        if((((this.posx+this.dia/2)>pad.xpos)&&((this.posx+this.dia/2)<(pad.xpos+pad.wd)))&&((this.posy+this.dia/2)>=pad.ypos&&(this.posy-this.dia/2)<=(pad.ypos+pad.ht))){
            x*=-1;
            set_y();
        }
    }
    
  }
  void set_y(){
    
            int y_dir = floor(random(0,2));
            if(y!=0){
              if(y_dir==0){
              y*=-1;
              }else{
                y*=1;
              }
            }else{
              if(y_dir==0){
                y=-1;
              }else{
                y=1;
              }
            
            }
            
  }

}