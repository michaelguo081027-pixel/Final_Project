void rules(){
  background(192);
  text("RULES", width/2, height/4);
  text("Survive as long as you can in the attack.", width/2, height/3);
  text("You have 10 seconds warming up before a wave.", width/2, 5*height/8);
  text("Use mouse to fire, WASD to move, and 1-5 keys to switch weapons.", width/2, 3*height/4);
  text("OK", width/2, 7*height/8);
}

void rulesClicks(){
  view=game;
}
