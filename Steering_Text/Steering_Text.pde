import geomerative.*;

RShape shape;
RPoint[] points; 
ArrayList<Vehicle> vehicles;

void setup(){
 size(1200, 500);

 vehicles = new ArrayList<Vehicle>();
 
 
 RG.init(this);
 shape = RG.getText("Akhil","Roboto-Bold.ttf",250,RG.CENTER);
 points = shape.getPoints();
 
 
 int count =0;
 for(RPoint pt : points){
    if(count%3==0){
      vehicles.add(new Vehicle(pt.x,pt.y));
    }
    count++;
 }
}

void draw(){
  background(51);
  translate(width/2,height/1.5);
 for(Vehicle vec : vehicles){
   vec.behaviour();
   vec.update();
   vec.show();
 }

}