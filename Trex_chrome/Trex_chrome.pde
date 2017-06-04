PImage image;
Ground ground;
Cactus cactus;
Trex trex;
Score score;
Background background;
long previousMillis=0;
long currentMillis=0;
boolean start = false;
void setup(){
  
 image = loadImage("game.png");
 size(1200,360);
 frameRate(20);
 ground = new Ground();
 cactus = new Cactus();
 trex = new Trex();
 score = new Score();
 background = new Background();
 

}

void draw(){
 
  background(255);
  if(!start){
    ground.show();
    cactus.show();
    trex.show();
    background.show();
  }else if(!cactus.hit){
      if(cactus.hit(trex)){
        
      }else{
        ground.show();
      ground.update();
      
      background.show();
      background.update();
      
      cactus.show();
      cactus.update();
      
      
      
      trex.show();
      trex.update();
      
      score.show();
      score.update();
      if(score.getScore()%100==0){
        cactus.increaseSpeed();
        ground.increaseSpeed();
      }
      }
      
      previousMillis=millis();
  }else{
      currentMillis=millis();
      ground.stop();
      cactus.stop();
      trex.stop();
      score.show();
  }
  
}

void keyPressed(){
  start= true;
  if(!cactus.hit){
     trex.jump();
  }else if(cactus.hit&&((currentMillis-previousMillis)>2000)){
      previousMillis=0;
      currentMillis=0;
      cactus.hit= false;
      ground.restart();
      cactus.restart();
      trex.restart();
      score.restart();
    
  }
}