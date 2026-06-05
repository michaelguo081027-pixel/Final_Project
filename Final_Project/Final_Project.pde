final int menu=1;
final int game=2;
final int end=3;
final int pause=4;
final int options=5;
int view;

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  view=menu;
}

void draw(){
  if(view==menu)menu();
  else if(view==game)game();
  else if(view==end)end();
  else if(view==pause)pause();
  else if(view==options)options();
  else println("ERROR: INVALID ENTRY");
}
