Pluck pluk;
Pads leftPad;
Pads rightPad;
Score score;
float error;
boolean rotate;
void setup(){
 size(700,400);
  pluk= new Pluck();
  leftPad = new Pads(0) ;
  rightPad = new Pads(1) ;
  score = new Score();
  rotate= false;
  error= random(0.6,1.7);
}

void draw(){
  background(0);
  drawCenterLine();
  noStroke();
  score.show();
  pluk.show();
  pluk.update(score);
  
  pluk.hit(leftPad);
  pluk.hit(rightPad);
  
  stroke(255,0,0);
  fill(255,0,0);
  leftPad.show();
  noStroke();
  fill(255);
  
  rightPad.show();
  enemyAI();
}

void keyPressed(){

  if(keyCode==DOWN){
    rightPad.move(1);
  }else if(keyCode==UP){
    rightPad.move(-1);
  }
  
}
void drawCenterLine(){
  int wd =20;
  int rows = width/wd;
  for(int i =0;i<=(rows-2);i+=2){
       strokeWeight(4);
       stroke(255);
       line(width/2, i*wd, width/2,(i+1)*wd);
  }


}

void enemyAI()
{   
    if((pluk.x<0)&&!rotate){
      if(score.leftScore==0&&score.rightScore==0){
        error= 1.0;
      }else if(score.leftScore>(score.rightScore+2)){
        while(!(error>1.5||error<0.4)){
          error=random(0.6,1.7);
        }
        
      }else if((score.leftScore+2)<(score.rightScore)){
          error=1.0;
      }else if(score.leftScore-score.rightScore==0){
          error=random(0.6,1.7);
      }
        rotate=true;
    }else if(pluk.x>0){
        rotate= false;
    }
    if ( pluk.x <0 ) {
      if ((leftPad.ypos +leftPad.ht/2)< pluk.posy*error) {
          leftPad.move(1);
      }
      
      if ((leftPad.ypos +leftPad.ht/2)> pluk.posy*error) {
          leftPad.move(-1); 
      }
    
    
    }
}