void game(){
  background(0, 255, 0);
  stroke(0);
  fill(0);
  line(width/2, height, width/2, 7*height/8);
  circle(width/2, height-6, 12);
  fill(255);
  circle(650, 100, 100);
  strokeWeight(3);
  line(635, 75, 635, 125);
  line(665, 75, 665, 125);
  fill(0);
  textSize(50);
  if(!gameOver){
    rotationAngle += rotationSpeed;
  }
  //pad
  fill(0);
  stroke(0);
  strokeWeight(3);
  circle(width/2, height/2, wheelRadius*2.25);
  textSize(75);
  fill(255);
  text(score, width/2, height/2);
  translate(width/2, height/2);
  for (Needle n : needles) {
    n.display();
  }
    if (failedNeedle != null) {
      failedNeedle.display();
    }
    if (flyingNeedle != null) {  
      flyingNeedle.update();

      if (flyingNeedle.y + 120 <= wheelRadius) {  
        flyingNeedle.y = wheelRadius - 120;  
        float targetAngle = HALF_PI - rotationAngle;  
        for (Needle n : needles) {  
          float diff =
            abs(angleDifference(targetAngle,
            n.relativeAngle));  
          if (diff < collisionAngle) {  
            hitNeedle = n;
            hitNeedle.isCrash = true;  
            failedNeedle =
              new Needle(targetAngle, true); 
            gameOver = true;
            break;
          }
        }  
        if (!gameOver) {  
          needles.add(new Needle(targetAngle));
          score++;
        }  
        flyingNeedle = null;
      }else {  

      flyingNeedle.displayFlying();
      }
    }  
    resetMatrix();  
    //let user to see where they miss
    if (gameOver) {
    failure.play();
    t=t-0.01;
    if(t<0)view=end;
    }
  }
  
  void keyPressed() {
    if(key==' '){
      if (gameOver)return;    
      if (flyingNeedle == null) {
        flyingNeedle = new Needle();
      }
    }
  } 
    
  float angleDifference(float a, float b) {  
    float d = a - b; 
    while (d > PI) d -= TWO_PI;
    while (d < -PI) d += TWO_PI;  
    return d;
  }
  
  class Needle {
    float relativeAngle;
    float y;
    boolean isCrash = false;
    Needle() {
      y = 350;
    }
    Needle(float angle) {
      relativeAngle = angle;
    }
  
    Needle(float angle, boolean crash) {
  
      relativeAngle = angle;
      isCrash = crash;
    }
  
    void update() {  
      y -= 50;
    }
  
    void displayFlying() {    
      stroke(0);    
      line(0, y, 0, y + 120);    
      fill(0);
      ellipse(0, y + 120, 12, 12);
    }
 
    void display() {
      float currentAngle =relativeAngle + rotationAngle;
      float x1=cos(currentAngle)*(wheelRadius + 2);
      float y1=sin(currentAngle)*(wheelRadius + 2);
      float x2=cos(currentAngle)*(wheelRadius + 120);
      float y2=sin(currentAngle)*(wheelRadius + 120); 
      if (isCrash) {
        stroke(255, 0, 0);
        fill(255, 0, 0);
      } else {
        stroke(0);
        fill(0);
      }  
      line(x1, y1, x2, y2);
      ellipse(x2, y2, 12, 12);
    }
}

void gameClicks(){
  //pause
  if(dist(mouseX, mouseY, 650, 100)<50){
    view=pause;
  }
}
