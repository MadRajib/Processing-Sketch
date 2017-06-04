Ball ball;
ArrayList<Pipes> pipes;
Score score;
Boolean stop= false;
int stage;
int count=0;
int cnt=0;

void setup(){
  stage = 1;
  size(400,600);
  
  ball = new Ball();
  pipes = new ArrayList<Pipes>(); 
  pipes.add(new Pipes());
  score = new Score();

}

void draw(){
  background(0);
  if(stage==1){
     ball.show();
     textSize(32);
     textAlign(CENTER);
     text("Bounce Ball", width/2, 100);
     
     textAlign(CENTER);
     text("\"Tap To Bounce\"", width/2, height/2+100);
     if(keyPressed==true){
      stage =2;
     }
   
    
  }else if(stage==2){
       if(count>=1){
         cnt++;
       }
       if(cnt==4){
         stage=3;
         delay(1000);
       }
       for(Pipes pp :pipes){
        
          
        pp.show();
        pp.update();
        if(pp.x<-pp.wd){
          pipes.remove(pipes.indexOf(pp));
        }
        
        if(pp.hits(ball)&&pp.highlight){
          
          count = 1;
          pp.highlight();
          
          
        }
        
        if((pp.x+pp.wd)<(ball.x-ball.dia/2)&&!pp.pass&&!pp.highlight){
          println("pass");
          score.add();
          pp.pass=true;
        }
        
        
      }
      
      ball.show();
      ball.update();
       
      Pipes pp_top = pipes.get(0); 
      if((pp_top.x+pp_top.wd )== width/2){
        pipes.add(new Pipes());
      }
      /*
      if(frameCount % 120 ==0){
        pipes.add(new Pipes());
      } */ 
        fill(0,0,255);
        textSize(32);
        textAlign(CENTER);
        text("Score:"+score.show(), width/2, 100); 
  }else if(stage==3){
        
    
        
        fill(255);
        textSize(32);
        textAlign(CENTER);
        text("Game Over!", width/2, 100);
        fill(0,0,255);
        textSize(32);
        textAlign(CENTER);
        text("Score:"+score.show(), width/2, 100+50); 
        fill(255);
        textAlign(CENTER);
        text("\"Tap To Bounce\"", width/2, height/2+100);
        
       if(keyPressed==true){
          ball = new Ball();
          pipes = new ArrayList<Pipes>(); 
          pipes.add(new Pipes());
          score = new Score();
          stage =2;
          cnt=0;
          count=0;
       }
  
  }
  
}

void keyPressed(){
   ball.up();
}