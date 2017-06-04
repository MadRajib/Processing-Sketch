class Cactus{
  
 
 Big_Cactus bigCactus = new Big_Cactus();
  boolean hit= false;
  
  
  public void increaseSpeed(){  
    bigCactus.increaseSpeed();
  
  }
  
  public void show(){
    bigCactus.show();
  }
  
  
  public void update(){
  
   bigCactus.update(); 
  }  
  boolean hit(Trex trex){
    
    float dist=dist(trex.collison_x,trex.collison_y,bigCactus.collison_x,bigCactus.collison_y);
    
    if((dist<=(trex.collion_radius+bigCactus.collion_radius))&&!bigCactus.hit){
        println("hit");
        bigCactus.hit = true;
        hit= true;
        return true;
    }
    
    return bigCactus.hit;
  }
  public void stop(){
   bigCactus.stop();
  }
  
  public void restart(){
     hit= false;
     bigCactus = new Big_Cactus();
  }
}