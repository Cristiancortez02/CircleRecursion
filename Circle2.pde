void setup() {
  size(800, 800);
  noStroke();
  noLoop();
}

void draw() {
  drawCircle(height/2, 280, 6);
}

void drawCircle(int y, int radius, int level) {                    
  float tt = 126 * level/4.0;
  fill(tt);
/**
    https://processing.org/reference/ellipse_.html
a   float: x-coordinate of the ellipse
b   float: y-coordinate of the ellipse
c   float: width of the ellipse by default
d   float: height of the ellipse by default
**/

  ellipse(width/2, y, radius*2, radius*2);      
  if(level > 1) {
    level = level - 1;
    drawCircle(y - radius/2, radius/2, level);
    drawCircle(y + radius/2, radius/2, level);
    
  }
  
}
