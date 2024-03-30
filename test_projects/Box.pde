class Head extends Box{
  Head(int x,int y, int sz){
    super(x,y,sz);
  }
  void update(){
    x +=spdx;
    y += spdy;
    handleCollision();
  }
  
  void handleCollision(){
    if(spdx > 0 &&  x >= (width - sz/2)){
        x -= spdx;
        spdx = 0;
        spdy = 0;
        
    }else if(spdx <0 && x <= 0){
        x -= spdx;
        spdx = 0;
        spdy = 0;
        
    }else if(spdy > 0 &&  y >= (height - sz/2)){
        y -= spdy;
        spdx = 0;
        spdy = 0;
      
    }else if(spdy <0 && y <= 0){
        y -= spdy;
        spdx = 0;
        spdy = 0;
    }
  }
  
}

class Body extends Box{
  Body(int x,int y, int sz){
    super(x,y,sz);
  }
  void update(){
    x += spdx;
    y += spdy;
  }
}

class Food extends Box{
  Food(int x,int y,int sz){
    super(x,y,sz);
  }
  
  void setPos(int x,int y){
    this.x = x;
    this.y = y;
  }
  
}

class Box{
  int x;
  int y;
  int sz;
  int spdx;
  int spdy;
  int MAX_SPEED;
  
  Box(int x,int y, int sz){
    this.x= x;
    this.y = y;
    this.sz =sz;
    this.spdx = 0;
    this.spdy = 0;
  }
  void render(){
    fill(255);
    rect(this.x,this.y,this.sz,this.sz);
  }
  
  void setSpeed(int spdx,int spdy){
    this.spdx = spdx;
    this.spdy = spdy;
  }
  
  int getXSpeed(){
    return this.spdx;
  }
  
  int getYSpeed(){
    return this.spdy;
  }
  
  void moveLeft(){
    spdx = -sz;
    spdy = 0;
  }
  
  void moveRight(){
    spdx = sz;
    spdy = 0;
  }
  
  void moveUp(){
    spdx = 0;
    spdy =- sz;
  }
  
  void moveDown(){
    spdx = 0;
    spdy = sz;
  }
  
  
  
}
