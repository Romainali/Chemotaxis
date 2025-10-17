Bacteria bob;
Bacteria [] colony;
class Bacteria {
  int myX, myY, myColor;
  boolean change;
   
  Bacteria(){ //constructor, initialize member variables
    myX = 750;
    myY = 250;
    myColor = color(255,0,0);
  }

  void move(){
   myX = myX + (int)(Math.random()*3)-1;
   myY = myY + (int)(Math.random()*3)-1;
  }
  void show(){
    // color changes once you touch it
   if(dist(mouseX,mouseY,myX,myY) < 15){
       change = true;
       myColor = color(0,255,0);
   }
   
fill(myColor);
 ellipse(myX, myY, 30,30);
// for following the mouse
    if( mouseX > myX)
  myX = myX + (int)(Math.random()*5)-1;
    else  
     myX = myX + (int)(Math.random()*5)-3;
    if( mouseY > myY)
  myY = myY + (int)(Math.random()*5)-1;
   else  
     myY = myY + (int)(Math.random()*5)-3;

}
 
}//end of Bacteria class

void setup(){
 size(1000,500);
 bob = new Bacteria();
 colony = new Bacteria[100];
 for( int i = 0; i< colony.length; i++){
   colony[i] = new Bacteria();
 }
 }

void draw(){
 background(0);
 bob.show();
 bob.move();
 for( int i = 0; i < colony.length ; i++){
 colony[i].show();
 colony[i].move();
 }
}
