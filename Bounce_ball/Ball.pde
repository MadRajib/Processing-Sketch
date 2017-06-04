 class Ball {
  int y = height/2;
  int x = 64;
  
  int dia = 32;
  
  int floor =height-this.dia/2;
  int roof =this.dia/2;
  
  float gravity = 0.9;
  float lift =-20;
  float velocity = 0;
  
  public void up(){
    this.velocity += this.lift;
  
  }
  
  
  public void show(){
    fill(255);
    ellipse(this.x,this.y,this.dia,this.dia);
  
  }
  
  public void update(){
    this.velocity += this.gravity;
    this.velocity *=0.9;
    this.y +=this.velocity;
    
    
    if(this.y>floor){
      this.y = floor;
      this.velocity = 0;
    }
    
    if(this.y<roof){
      this.y = roof;
      this.velocity = 0;
    }
  }
  
 }
 