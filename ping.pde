float speed = 20;
float bspeed = 4;
float hsizex=20;
float hsizey=100;
float ballr=20;
float ballx=width/2;
float bally=height/2;
float y1=height/2;
float y2=height/2;
int v=1;
int z=1;
boolean go=true;

void setup(){
size(1000,600);
background(0);
}
void ball(){
  if(bally>=height)v=-1;
  if(bally<=0)v=1;
  if(ballx>=(width-hsizex-20) && bally<y2+hsizey/2 && bally>y2-hsizey/2)z=-1;
  if(ballx<=(hsizex+20) && bally<y1+hsizey/2 && bally>y1-hsizey/2)z=1;
  if(ballx<0)go=false;
  if(ballx>width)go=false;
  if(go==false){
    //setup();
    draw();
background(255,0,0);
}
  ellipse(ballx+=bspeed*z,bally+=bspeed*v,ballr,ballr);
}
void heros(){
  rect(hsizex,y1,hsizex,hsizey);
  rect(width-hsizex-10,y2,hsizex,hsizey);
}
void keyPressed(){
  if(keyCode==UP)y1-=speed;
  if(keyCode==DOWN)y1+=speed;
  if(y1<-hsizey/2){
    y1+=speed;
  }
  if(y1>height-hsizey/2){
    y1-=speed;
  }
  if(key=='w' || key=='W')y2-=speed;
  if(key=='s' || key=='S')y2+=speed;
  if(y2<-hsizey/2){
    y2+=speed;
  }
  if(y2>height-hsizey/2){
    y2-=speed;
  }
}
void draw(){
background(0);
heros();
ball();
}
