private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(100,200,100); 
  strokeWeight(2);
  line(320,480,320,380);
  line(300,480,300,380); 
  drawBranches(310,380,100,3*Math.PI/2);
  stroke(255, 255, 255);
  drawBranches(320,380,100,3.2*Math.PI/2);
  drawBranches(300,380,100,6.8*Math.PI/2);
  stroke(0,200,100); 
  drawBranches(300,380,100,3.5*Math.PI/2);
  drawBranches(320,380,100,6.5*Math.PI/2);
  stroke(0,200,200); 
  drawBranches(300,380,100,3.4*Math.PI/2);
  drawBranches(320,380,100,6.6*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  
  branchLength = branchLength*fractionLength;
  
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  
  if(branchLength > smallestBranch){
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
} 
}
