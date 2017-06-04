int rows;
int cols;
int gap;
int run;
long previousMillis;
long currentMillis;
int interval = 1000;
int speedFactore;
Car car;
int score;
int speed;
ArrayList<Traffic> traffics;
void setup(){
  size(400,800);
  rows = height/40;
  cols = width/40;
  gap=4;
  run =1;
  previousMillis =0;
  car = new Car();
  speedFactore =20;
  score=1;
  traffics = new ArrayList<Traffic>(); 
  traffics.add(new Traffic());
  
  speedFactore =40;
  speed=1;
}
void draw(){
  background(200);
  
  
  
  if(traffics.get(0).collide(car)){
    showAll();
    
    reset();
  }
  if(frameCount%speedFactore==0){
      run+=1;
      score++;
      run= (run%5==0)?1:run%5;
      
      for(Traffic tra :traffics){
        
        tra.update();

      }
      
      if(score-20==0){
        speedFactore-=10;
        speed++;
      }
      if(score-50==0){
        speedFactore-=2;
        speed++;
      } 
      if(score-90==0){
        speedFactore-=2;
        speed++;
      }/*
      if(score-150==0){
        speedFactore-=1;
        
      }*/
      if(score-200==0){
        speedFactore-=2;
        speed++;
      }
      if(score-450==0){
        speedFactore-=1;
        speed++;
      }
      if(score-600==0){
        speedFactore-=1;
        speed++;
      }
      
      speedFactore = constrain(speedFactore,2,20);
      
      Traffic tra_top = traffics.get(0); 
      if(tra_top.y+3==12){
            traffics.add(new Traffic());
      }
      if(tra_top.y==20){
          traffics.remove(traffics.indexOf(tra_top));
        }
      
      
      
  }
  
  showLane(run);
   for(Traffic tra :traffics){
        
        tra.show();
  
   }
   
  
  
  car.show();
  
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text("SCORE:"+score, width/2-10, 40);
  noFill();
  fill(255,0,0);
  textSize(32);
  textAlign(CENTER);
  text("SPEED:"+speed, width/2-10, 40+40);
  noFill();
  
}
void reset(){
  traffics = new ArrayList<Traffic>();
  traffics.add(new Traffic());
  speedFactore=40;
  score=1;
  speed=1;
}
void showAll(){
  for(int i=rows;i>=0;i--){
    
   
    for(int j=0;j<cols;j++){
        
        noFill();
        strokeWeight(4);
        rect(j*40, i*40, 40, 40);
        fill(0);
        rect(j*40+10, i*40+10, 20, 20);
        
    }
    
  
  }

}

void keyPressed(){
  if(keyCode==LEFT){
  
    car.moveLeft();
  
  }else if(keyCode==RIGHT){
    
    car.moveRight();
  
  }
}

void showLane(int cnt){
  
  int count =cnt;
  for(int i=1;i<=rows;i++){
             
            if(i==count){
                count+=4;
            }else{
            
              strokeWeight(4);
              noFill();
              
              rect(0, (i-1)*40, 40, 40);
              fill(0);
              rect(10, (i-1)*40+10, 20, 20);
              
              noFill();
              rect(width-40, (i-1)*40, 40, 40);
              fill(0);
              rect(width-40+10, (i-1)*40+10, 20, 20);
            
            }
            
  }

}