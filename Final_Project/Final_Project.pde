final int menu=1;
final int game=2;
final int end=3;
final int pause=4;
final int over=5;
final int rules=6;
int view;
int score, highscore;
int[] x;
int[] y;
int tx, ty;
int c;
int space;
float t;
boolean wkey, skey, upkey, downkey, akey, dkey, leftkey, rightkey;

void setup(){
  size(800, 800);
  textAlign(CENTER, CENTER);
  view=menu;
  highscore=0;
}

void draw(){
  if(view==menu)menu();
  else if(view==game)game();
  else if(view==end)end();
  else if(view==pause)pause();
  else if(view==over)over();
  else if(view==rules)rules();
  else println("ERROR: INVALID ENTRY");
}
