//music
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer background, shoot, failure;
//views
final int menu=1;
final int game=2;
final int end=3;
final int pause=4;
final int rules=5;
int view;
//gif&icon
PImage[] gif;
PImage icon;
//variables
int score, highscore;
int f, n;
float x, y, t;
float wheelRadius;
float rotationAngle;
float rotationSpeed;
float collisionAngle;
ArrayList<Needle> needles = new ArrayList<Needle>();
boolean gameOver = false;
Needle flyingNeedle = null;
Needle hitNeedle = null;
Needle failedNeedle = null;

void setup(){
  size(800, 800);
  surface.setTitle("P-INTEREST!");
  icon= loadImage("Icon.png");
  surface.setIcon(icon);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  view=menu;
  highscore=0;
  wheelRadius = 80;
  rotationAngle = 0;
  rotationSpeed = 0.02;
  collisionAngle = radians(4);
  minim=new Minim(this);
  failure=minim.loadFile("FAILURE.wav");
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
