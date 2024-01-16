class Bun {

  float xPos, yPos, xSpeed, ySpeed, yAcceleration, xAcceleration, angle, angularVelocity;

  PImage img;

  Bun() {
    xPos = random(50, width - 50);
    yPos = random(50, height - 50);
    xSpeed = 2;
    ySpeed = -10;
    yAcceleration = GRAVITY;
    xAcceleration = WINDSPEED;
    angle = 0;
    angularVelocity = 0.1;

    img = loadImage("images/kanelbulle.png");
    img.resize(50,0);
  }

  void update() {
    move();
    bounce();
    render();
  }

  void move() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
    ySpeed = ySpeed + yAcceleration;
    xSpeed = xSpeed + xAcceleration;
    angle = angle + angularVelocity;
  }

  void bounce() {
    if (xPos > width - 25 || xPos < 0 + 25) {
      xSpeed = xSpeed*(-1);
    }

    if (yPos > height - 25 || yPos < 0 + 25) {
      ySpeed = ySpeed*(-1);
    }
  }


  void render() {
    imageMode(CENTER);
    pushMatrix();
    translate(xPos, yPos);
    rotate(angle);
    image(img, 0, 0);
    popMatrix();
  }
}
