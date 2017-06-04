class Score{
 int sx=1294;
 int sy=2;
 int sw=18;
 int sh=21;
 int dx=width-60;
 int dy=20;
 int score = 0;
 int high=0;

  public void show(){
       
      int dig[] = getDigits(score);
         for(int i=0;i<5;i++){
           copy(image,sx+(20*dig[i]),sy,sw,sh,dx-20*(4-i),dy,sw,sh);
         }
       if(score>high){
         high=score;
       }
       if(high>0){
         int hi[] = getDigits(high);
         copy(image,1494,sy,38,sh,(dx-248),dy,38,sh);
         for(int i=0;i<5;i++){
           copy(image,sx+(20*hi[i]),sy,sw,sh,(dx-120)-20*(4-i),dy,sw,sh);
         }
         
       }
      
  }
 
   public void update(){
       
       score++;
      
   }
   public int getScore(){
     return score;
   }
   
   public void restart(){
     score = 0;
   }
   private int[] getDigits(int num){
     int digits[] = new int[5];
   
       
       digits[0]=((num>=10000)?num/10000:0)%10;
       num=(num>10000)?num-(digits[0]*10000):num;
       digits[1]=((num>=1000)?num/1000:0)%10;
       num=(num>1000)?num-(digits[1]*1000):num;
       digits[2]=((num>=100)?num/100:0)%10;
       num=(num>100)?num-(digits[2]*100):num;
       digits[3]=((num>=10)?num/10:0)%10;
       num=(num>10)?num-(digits[3]*10):num;
       digits[4]=num%10;
     
     return digits;
   }
 
 
}