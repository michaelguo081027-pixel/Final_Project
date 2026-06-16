void game(){
  background(135, 206, 250);
  stroke(0);
  //pause button
  fill(255);
  circle(650, 100, 100);
  strokeWeight(3);
  line(635, 75, 635, 125);
  line(665, 75, 665, 125);
  fill(0);
  textSize(50);
  //scoring:1 pin=1 pt
  text("Score: "+score, width/6, height/12);
  fill(255);
  circle(width/2, height/2, 200);
  circle(width/2, 15*height/16, 20);
  //rotate the pad & pins
  
  //game over when a pin overlaps another pin
  
}

void gameClicks(){
  //pause
  if(dist(mouseX, mouseY, 650, 100)<50){
    view=pause;
  }else{//pins
    if(y>=7*width/8){
    circle(width/2, y, 20);
    y=y-50;
    }else
    line(width/2, height/2, width/2, y);
    circle(width/2, y, 20);
    score++;
  }  
}
