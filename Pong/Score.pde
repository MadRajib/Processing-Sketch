class Score{
  
 int leftScore =0;
 int rightScore =0;
 void show(){
     textSize(32);
     text(leftScore, 50, 42);
     text(rightScore, width-50, 42);
 }
 void updateLeft(){
   leftScore+=1;
 }
 void updateRight(){
   rightScore+=1;
 }
}