void rules(){
  image(gif[f], 0, 0, width, height);
  f=f+1;
  if(f==n)f=0;
  text("HOW TO PLAY", width/2, height/6);
  text("Use the mouse to shoot pins", width/2, height/3);
  text("Pin as many pins as you can!", width/2, height/2);
  text("Click to continue", width/2, 3*height/4);
}

void rulesClicks(){
  view=game;
}
