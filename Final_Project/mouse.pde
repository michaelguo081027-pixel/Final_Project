void mouseReleased(){
  if(view==menu)menuClicks();
  else if(view==game)gameClicks();
  else if(view==pause)pauseClicks();
  else if(view==end)endClicks();
  else if(view==options)optionsClicks();
}
