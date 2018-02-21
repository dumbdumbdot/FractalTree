private double fractionLength = .73; 
private int smallestBranch = 5; 
private double branchAngle = .55;

public void setup() 
{   
  size(640, 480);    
  noLoop();
} 
public void draw() 
{   
  background(190, 216, 216);   
  stroke(108, 91, 91);   
  strokeWeight(3);
  line(325, 480, 325, 380);
  drawBranches(325,380,150,3*Math.PI/2);  
} 
public void drawBranches(int x, int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle; 
  double angle2 = angle - branchAngle;
  //double angle3 = angle - branchAngle*2;
  branchLength = branchLength*fractionLength;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  //int endX3 = (int)(branchLength*Math.cos(angle3) + x/2);
  //int endY3 = (int)(branchLength*Math.sin(angle3) + y/2);
  
  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);
  //line(x, y, endX3, endY3);

  if(branchLength > smallestBranch)
  {
    stroke(7, 131, 66);
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
   //drawBranches(endX3, endY3, branchLength, angle3);
  }
} 