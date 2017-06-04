class Vehicle{
 PVector pos = new PVector(random(-width/2,width/2),random(-height/2,height/2));
 PVector vel = PVector.random2D();
 PVector acc = new PVector();
 PVector target = new PVector();
 
 Vehicle(float x, float y){
   target.set(x,y);
   //pos.set(x,y);
 }
 
 void update(){
   pos.add(vel);
   vel.add(acc);
   acc.mult(0);   
 }
 
 void show(){
   stroke(255);
   //stroke(floor(random(0,256)),floor(random(0,256)),floor(random(0,256)));
   strokeWeight(10);
   
   point(pos.x, pos.y);
 }
 
 void applyForce(PVector force){
   acc.add(force);
 }
 
 void behaviour(){
   PVector arrive = arrive(target);
   PVector mouse = new PVector(map(mouseX,0,width,-width/2,width/2),map(mouseY,0,height,-height/1.5,height-height/1.5));
  
   PVector flee = flee(mouse);
   
   arrive.mult(1);
   flee.mult(5);
   
   applyForce(arrive);
   applyForce(flee);
 }
 
 
 
 PVector arrive(PVector target){
  PVector desire = PVector.sub(target,pos);
  float d = desire.mag();
  desire.setMag(2);
  if(d<100){
   desire.setMag(map(d,0,100,0,2));
  }
  
  PVector steer = desire.sub(vel);
  steer.limit(1);
  return steer;
 }
 
 PVector flee(PVector target){
  PVector desire = PVector.sub(target,pos);
  float d = desire.mag();
  
  if(d<50){
    desire.setMag(5);
    desire.mult(-1);
    PVector steer = desire.sub(vel);
    steer.limit(1);
    return steer;
  }else{
    return new PVector();
  }
  
  
 }

}