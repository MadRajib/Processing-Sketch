class Pipes{
  int space = floor(random(120,200));
  int hole = floor(random(space,height-space));
  int top = height-(hole+space);
  int bottom = hole;
  boolean highlight = false;
  boolean pass=false;
  int x = width;
  int wd = 40;
  int speed =2;
  
  
  public boolean hits(Ball ball){
    if((ball.y-ball.dia/2)<this.top||(ball.y+ball.dia/2)>(height - this.bottom)){
      if((ball.x+ball.dia/2)> this.x && (ball.x-ball.dia/2)<this.x+wd){
        this.highlight =true;
        return true;
      }
    }
    return false;
  }
  
  public void highlight(){
    fill(255,0,0);
    rect(this.x,0,this.wd,this.top);
    rect(this.x,height-hole,this.wd,this.bottom);
  }
  public void show(){
      fill(255);
      if(this.highlight){
        fill(255,0,0);
      }
      rect(this.x,0,this.wd,this.top);
      rect(this.x,height-hole,this.wd,this.bottom);
  }
  
  public void update(){
    this.x -= this.speed;
  }
  
  
  
}