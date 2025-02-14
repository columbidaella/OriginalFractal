public void setup(){
  size(500,500);
  noLoop();
  fill(#FF5690);
}
public void draw(){
  flower(250,250,200,0,255,80,130);
}
public void petal(int x, int y, float z, int t){
  bezier(x, y, x+(z)*s(t+15.5), y+(z)*c(t+15.5), x+(z)*s(t+27.3), y+(z)*c(t+27.3), x+(z)*s(t), y+(z)*c(t));
  bezier(x, y, x+(z)*s(t-15.5), y+(z)*c(t-15.5), x+(z)*s(t-27.3), y+(z)*c(t-27.3), x+(z)*s(t), y+(z)*c(t));
}
public float s(float x){
  return (float)(Math.sin(radians(x)));
}
public float c(float x){
  return (float)(Math.cos(radians(x)));
}
public void layer(int x, int y, float z, int t){
  for(int i = 0; i < 9; i++){
    petal(x,y,z,t);
    t+=40;
  }
}
public void flower(int x, int y, float z, int t, int r, int b, int g){
  if(z<=0){
    return;
}
  else{
    fill(r,b,g);
    layer(x,y,z,t);
    flower(x,y,z-20,t+60,r-5,b-15,g-10);
}
}
