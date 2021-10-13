
float positionX;
float positionY;
float velocityX;
float velocityY;
int score;
void setup() {
  size(300, 500);
  positionX= (width/2);
  positionY=(height/2);
  velocityX=3;
  velocityY=-3;
}

void draw() {
  background(150, 0, 150);
  fill(200, 200, 0, 255);
  ellipse(positionX, positionY, 20, 20);
  positionX = (positionX+(velocityX+0.5));
  positionY = positionY+velocityY;
  if (width<positionX||positionX<0) {
    velocityX= velocityX*-1;
  }
  if (positionY<0) {
    velocityY=velocityY*-1;
    fill(200, 200, 0);
  }
  rect(mouseX, height-100, 100, 20);
  if (positionY+10 >= height-100 && positionX>(mouseX)&&positionX<(mouseX+100)) {
    velocityY=-velocityY;
    score= score+1;
  }
  println(score);
  textSize(30);
  text(score, 20, 20);
  if (positionY>height){
    
    textSize(50);
  
  text("Gaym over",width/2-100,height/2);
  stop();

  
}
}
