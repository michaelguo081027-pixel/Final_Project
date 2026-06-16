void pause(){
  strokeWeight(3);
  stroke(0);
  fill(255);
  circle(650, 100, 100);
  triangle(635, 75, 635, 125, 665, 100);
  fill(0);
  text("PAUSED", width/2, height/2);
}

void pauseClicks(){
  if(dist(mouseX, mouseY, 650, 100)<50)view=game;
}
