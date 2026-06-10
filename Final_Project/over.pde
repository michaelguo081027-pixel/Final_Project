void over(){
  t=t-0.01;
  fill(0);
  textSize(100);
  text("NO MORE MOVES", width/2, height/2);
  if(t<0)view=end;
}
