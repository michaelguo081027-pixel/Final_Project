final int menu=1;
final int game=2;
final int end=3;
final int pause=4
int view;

void setup(){
  size(800, 800);
  int=menu;
}

void draw(){
  if(mode==menu)menu();
  else if(mode==game)game();
  else if(mode==end)end();
  else if(mode==pause)pause;
  else println("ERROR: INVALID ENTRY");
}