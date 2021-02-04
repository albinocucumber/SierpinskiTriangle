public void setup(){
  size(1000,1000);
  background(0);
}
public void draw(){
  sierpinski(25,950,950);
}
public void mouseDragged(){

}
public void sierpinski(int x, int y, int len) {
  if(len <= 5){
    triangle(x,y, x + len/2, y-len, x+len, y);
    arc(x, y/2, len/2, y-len, PI / 2, 3 * PI / 2);
  } else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
