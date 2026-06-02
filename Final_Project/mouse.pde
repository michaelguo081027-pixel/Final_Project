void mouseReleased(){
  if(mode==menu)menuClicks();
  else if(mode==game)gameClicks();
  else if(mode==pause)pauseClicks();
  else if(mode==end)endClicks();
}
