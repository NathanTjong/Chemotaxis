 Germ [] colony; 
void setup(){
  noStroke();
  size(400, 400);
  colony=new Germ[300];
  for(int i=0; i<colony.length; i++){
    colony[i]=new Germ();
  }
}
void draw(){
  fill(255, 255, 255, 20);
  rect(-1, -1, 402, 402);
for(int i=0; i<colony.length; i++)
  {
    colony[i].move();
    colony[i].show();

}
}

class Germ{
  int myX, myY, col;
  Germ(){
    myX=(int)(Math.random()*400);
    myY=(int)(Math.random()*400);
    col=color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
  }
  void move(){
    myX+=(int)(Math.random()*3)-1;
    myY+=(int)(Math.random()*3)-1;
  }
  void show(){
    fill(col);
    ellipse(myX, myY, 5, 5);
  }
}
