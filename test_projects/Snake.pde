class Snake{

  int x;
  int y;
  int sz;
  Head head;
  ArrayList<Body> body;
  
  Snake(int x, int y,int sz){
    this.x = x;
    this.y = y;
    this.sz = sz;
    
    head = new Head(this.x,this.y,this.sz);
    body = new ArrayList();
    addBody();
    addBody();
    addBody();
    addBody();
    
    
  }
  
  void addBody(){
    if(body.isEmpty())
      body.add(new Body(this.x+sz,this.y,this.sz));
    else {
      Body last_part = body.get(body.size() -1);
      body.add(new Body(last_part.x+sz,last_part.y,this.sz));
    }
  }
  void removeBody(){
  }
  
  void render(){
    head.render();
    
    for(Body b: body){
      b.render();
    }
    
  }
  
  void update(){
    //if(head.spdx == 0 && head.spdy == 0) return;
    
    int x = head.x;
    int y = head.y;
    
    head.update();
    
    Box h = head;
    for (int i = 0; i < body.size(); i++) {
         Body b = body.get(i);    
         calcuateDirection(h,b,x,y);
         b.update();
         h = b;
         x = h.x;
         y = h.y;  
    }
    
  }
  
  void moveLeft(){
    head.moveLeft();
  }
  
  void moveRight(){
    head.moveRight();
  }
  
  void moveUp(){
    head.moveUp();
  }
  
  void moveDown(){
    head.moveDown();
  }
  
  void calcuateDirection(Box h,Box p,int x,int y){
      if(h.spdx == 0 && h.spdy ==0){
        p.setSpeed(0,0);
      }else{
        if((y == p.y) && (x < p.x)){
          p.moveLeft();
        }else if((y == p.y) && (x > p.x)){
          p.moveRight();
        }else if((x == p.x) && (y > p.y)){
          p.moveDown();
        }else if((x == p.x) && (y < p.y)){
          p.moveUp();
        }
      }    
  }


}
