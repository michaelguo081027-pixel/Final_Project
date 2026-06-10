void end(){
  background(255, 0, 0);
  fill(255);
  textSize(100);
  text("GAME OVER", width/2, height/4);
  textSize(50);
  if (score>=highscore) {
    highscore=score;
    text("NEW HIGHSCORE!!!", width/2, 13*height/32);
    text("HIGHSCORE: "+score, width/2, 15*height/32);
  }else if(score<highscore)text("HIGHSCORE: "+highscore, width/2, 15*height/32);
  text("YOUR SCORE: "+score, width/2, 17*height/32);
  text("Click to Main Menu", width/2, 3*height/4);
}

void endClicks(){
  view=menu;
}
