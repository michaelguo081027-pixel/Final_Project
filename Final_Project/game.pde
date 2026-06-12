void game(){
  background(135, 206, 250);
  fill(0);
  textSize(50);
  text("Score: "+score, width/6, height/12);
  text("Click to Pause", 3*width/4, height/12);
  square(h,v,l);
  if(akey==true||leftkey==true)h=h-5;
  if(dkey==true||rightkey==true)h=h+5;
  if(wkey==true||upkey==true)v=v-5;
}

void gameClicks(){
  view=pause;
}
