void setup () {
  size(800,800);
  background(255);
}

void draw () {
  board(); //has the fruits
  lines(); //makes it easier to find coords
}

void board(){
  fill(255,0,0);
  rect(200,300,100,100);
  rect(100,600,100,100);
  rect(600,400,100,100);
  rect(400,500,100,100);
  rect(400,100,100,100);
}

void lines() {
  line(100,0,100,800); //vert
  line(200,0,200,800);
  line(300,0,300,800);
  line(400,0,400,800);
  line(500,0,500,800);
  line(600,0,600,800);
  line(700,0,700,800);
  
  line(0,100,800,100); //hori lines
  line(0,200,800,200);
  line(0,300,800,300);
  line(0,400,800,400);
  line(0,500,800,500);
  line(0,600,800,600);
  line(0,700,800,700);
}
