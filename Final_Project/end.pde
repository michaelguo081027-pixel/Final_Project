void end(){
    background(255, 0, 0);
    textSize(100);
    text("GAME OVER", width/2, 3*height/8);
    textSize(50);
    text("Main Menu", width/2, 3*height/4);
}

void endClicks(){
    view=menu;
}