Bun bun;

float GRAVITY = 0.3;
float WINDSPEED = 0;

void setup(){
  size(900, 900);
  bun = new Bun();
}

void draw(){
  background(100);
  bun.update();
}
