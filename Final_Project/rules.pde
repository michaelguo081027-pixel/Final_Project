void rules(){
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if(f==n)f=0;
  text("HOW TO PLAY", width/2, height/6);
  text("WASD or Arrows to move.", width/2, height/3);
  text("Try to make the largest number you can!", width/4, 3*height/8, width/2, height/4);
  text("Click to continue", width/2, 3*height/4);
}

void rulesClicks(){
  view=game;
}
