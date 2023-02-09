double slice = 0;
int clicked = 0;

public void myFractal(int x, int y, int siz, int col){
  if(clicked%2 == 0){
    fill(col,0,0);
  }
  if(clicked%2 != 0){
    fill(0, 0, col);
  }
  ellipse(x, y, siz, siz);
  if(siz > 1 && clicked%2 == 0)
  {
    myFractal((int)((x)+50*Math.cos(PI*slice)), (int)((y)+50*Math.sin(PI*slice)), siz-50, col+30);
  }
  if(siz > 1 && clicked%2 != 0)
  {
    myFractal((int)((x)+50*Math.cos(PI*slice)), (int)(y+50*Math.sin(PI*slice)), siz-50, col+30);
  }
}

public void setup(){
  size(1000, 1000);
  noStroke();
  background(0);
}

public void draw(){
  myFractal(500, 500, 500, 0);
  slice += PI/180;
}

public void mouseClicked(){
  clicked++;
}
