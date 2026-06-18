ArrayList<Needle> needles = new ArrayList<Needle>();

float wheelRadius = 80;
float rotationAngle = 0;
float rotationSpeed = 0.02;

Needle flyingNeedle = null;

boolean gameOver = false;
int score = 0;

float collisionAngle = radians(8);

Needle hitNeedle = null;
Needle failedNeedle = null;

void setup() {
  size(600, 800);
  strokeWeight(3);
}

void draw() {

  background(250);

  translate(width/2, height/2);

  if (!gameOver) {
    rotationAngle += rotationSpeed;
  }

  // 转盘
  fill(180);
  stroke(0);
  ellipse(0, 0, wheelRadius*2, wheelRadius*2);

  // 已插入针
  for (Needle n : needles) {
    n.display();
  }

  // 撞击后显示失败针
  if (failedNeedle != null) {
    failedNeedle.display();
  }

  // 飞行针
  if (flyingNeedle != null) {

    flyingNeedle.update();


    // 针头碰到圆盘
    if (flyingNeedle.y + 120 <= wheelRadius) {

      flyingNeedle.y = wheelRadius - 120;

      float targetAngle = HALF_PI - rotationAngle;

      for (Needle n : needles) {

        float diff =
          abs(angleDifference(targetAngle,
          n.relativeAngle));

        if (diff < collisionAngle) {

          hitNeedle = n;
          hitNeedle.isCrash = true;

          failedNeedle =
            new Needle(targetAngle, true);

          gameOver = true;
          break;
        }
      }

      if (!gameOver) {

        needles.add(new Needle(targetAngle));
        score++;
      }

      flyingNeedle = null;
    }else {

    // 只有没插入时才绘制飞行针
    flyingNeedle.displayFlying();
    }
  }

  resetMatrix();

  fill(0);
  textAlign(CENTER);
  textSize(24);

  text("Score: " + score, width/2, 50);

  if (gameOver) {

    fill(255, 0, 0);
    textSize(40);

    text("GAME OVER",
      width/2,
      height/2);

    textSize(20);

    text("Press R to Restart",
      width/2,
      height/2 + 50);
  }
}

void mousePressed() {

  if (gameOver) return;

  if (flyingNeedle == null) {
    flyingNeedle = new Needle();
  }
}

void keyPressed() {

  if (key == 'r' || key == 'R') {
    restartGame();
  }
}

void restartGame() {

  needles.clear();

  flyingNeedle = null;

  hitNeedle = null;
  failedNeedle = null;

  score = 0;

  gameOver = false;

  rotationAngle = 0;
}

float angleDifference(float a, float b) {

  float d = a - b;

  while (d > PI) d -= TWO_PI;
  while (d < -PI) d += TWO_PI;

  return d;
}

class Needle {

  float relativeAngle;

  float y;

  boolean isCrash = false;

  Needle() {
    y = 350;
  }

  Needle(float angle) {
    relativeAngle = angle;
  }

  Needle(float angle, boolean crash) {

    relativeAngle = angle;
    isCrash = crash;
  }

  void update() {

    // 发射速度提高
    y -= 40;
  }

  void displayFlying() {
  
    stroke(0);
  
    line(0, y, 0, y - 120);
  
    fill(0);
  
    ellipse(0, y - 120, 12, 12);
  }

  void display() {

    float currentAngle =
      relativeAngle + rotationAngle;

    float x1 = cos(currentAngle) * (wheelRadius + 2);
    float y1 = sin(currentAngle) * (wheelRadius + 2);

    float x2 =
      cos(currentAngle) * (wheelRadius + 120);

    float y2 =
      sin(currentAngle) * (wheelRadius + 120);

    if (isCrash) {
      stroke(255, 0, 0);
      fill(255, 0, 0);
    } else {
      stroke(0);
      fill(0);
    }

    line(x1, y1, x2, y2);

    ellipse(x2, y2, 12, 12);
  }
}
