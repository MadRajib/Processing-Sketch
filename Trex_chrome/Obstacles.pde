class Obstacles{
  
   ArrayList<Object> obstacles = new ArrayList<Object>();
   
   Obstacles(){
     obstacles.add(new Big_Cactus());
   }
   
   public void show(){
     for(Object obs : obstacles){
        if(obs instanceof Big_Cactus){
            Big_Cactus cact = (Big_Cactus)obs;
            cact.show();
        }
        
        
     }
   
   }
   
   boolean hit= false;
  
  
  public void increaseSpeed(){  
     for(Object obs : obstacles){
        if(obs instanceof Big_Cactus){
            Big_Cactus cact = (Big_Cactus)obs;
            cact.increaseSpeed();
        }
     }
  }
  
  
  
  public void update(){
    
    for(Object obs : obstacles){
        if(obs instanceof Big_Cactus){
            Big_Cactus cact = (Big_Cactus)obs;
            cact.update(); 
        }
        
        
     }
     
  }  
  
  boolean hit(Trex trex){
    for(Object obs : obstacles){
        if(obs instanceof Big_Cactus){
            Big_Cactus bigCactus = (Big_Cactus)obs;
            float dist=dist(trex.collison_x,trex.collison_y,bigCactus.collison_x,bigCactus.collison_y);
    
            if((dist<=(trex.collion_radius+bigCactus.collion_radius))&&!bigCactus.hit){
                println("hit");
                bigCactus.hit = true;
                hit= true;
                return true;
            }
        }
        
        
     }
    
    
    return false;
  }
  public void stop(){
   
   for(Object obs : obstacles){
        if(obs instanceof Big_Cactus){
            Big_Cactus cact = (Big_Cactus)obs;
            cact.stop(); 
        }
        
        
     }
  }
  
  public void restart(){
     hit= false;
     //bigCactus = new Big_Cactus();
  }
   
   
   

}