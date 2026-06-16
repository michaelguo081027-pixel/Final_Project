import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

final int menu=1;
final int game=2;
final int end=3;
final int pause=4;
final int rules=5;
int view;
int score, highscore;
float x, y;
int c;
PImage[] gif;
PImage icon;
int f;
int n;
int pins;

void setup(){
  size(800, 800);
  surface.setTitle("PIN IT!");
  icon= loadImage("Icon.png");
  surface.setIcon(icon);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  view=menu;
  highscore=0;
  //gif
  n=18;
  gif=new PImage[18];
  int k=0;
  while(k<n){
    gif[k]=loadImage("frame_"+k+"_delay-0.07s.gif");
    k=k+1;
  }
}

void draw(){
  if(view==menu)menu();
  else if(view==game)game();
  else if(view==end)end();
  else if(view==pause)pause();
  else if(view==rules)rules();
  else println("ERROR: INVALID ENTRY");
}
