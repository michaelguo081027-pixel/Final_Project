final int menu=1;
final int game=2;
final int end=3;
final int pause=4;
final int options=5;
final int rules=6;
int view;
int score, highscore;
int[] x;
int[] y;
int tx, ty;
int c;
String s;


void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  view=menu;
  highscore=0;
  s="Pause";

}

void draw(){
  if(view==menu)menu();
  else if(view==game)game();
  else if(view==end)end();
  else if(view==pause)pause();
  else if(view==options)options();
  else if(view==rules)rules();
  else println("ERROR: INVALID ENTRY");
}
