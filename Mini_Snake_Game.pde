
int Ppx = 0;
int Ppy = 0;

void setup () {
  size(800, 1050);
  background(255);
}

void draw () {
  board(); //has the fruits
  lines(); //makes it easier to find coords
  mousePressed(); //The game. Score, movement, fruit-counter etc.
  player(); //the player character
}

void player() {
  translate(Ppx,Ppy); //moves the player
  fill(0, 0, 255);
  rect(0, 0, 100, 100); //player
}

void mousePressed() {
  int x = mouseX;
  int y = mouseY;

  if (x>350 && x<450 && y>850 && y<950) { //moves player 100 up if not at top already
    if (Ppy == 0) Ppy = 0;
    Ppy = Ppy - 100;
  }
  if (x>350 && x<450 && y>950 && y<1050) { //moves player 100 down if not at bottom already
    if (Ppy == 700) Ppy = 700;
    Ppy = Ppy + 100;
  }
  if (x>250 && x<350 && y>950 && y<1050) { //moves player 100 left if not already full left
    if (Ppx == 0) Ppx = 0;
    Ppx = Ppx - 100;
  }
  if (x>450 && x<550 && y>950 && y<1050) { //moves player 100 right if not already full right
    if (Ppx == 700) Ppx = 700;
    Ppx = Ppx + 100;
  }
}

void board() { //whole board except lines, functions, and player
  fill(255, 0, 0); //colors stay the same for now
  rect(200, 300, 100, 100); //rect 1
  rect(100, 600, 100, 100); //rect 2
  rect(600, 400, 100, 100); //rect 3
  rect(400, 500, 100, 100); //rect 4
  rect(400, 100, 100, 100); //rect 5

  noFill(); //buttons
  strokeWeight(4);
  rect(350, 850, 100, 100); //UP button
  rect(350, 950, 100, 100); //DOWN button
  rect(250, 950, 100, 100); //LEFT button
  rect(450, 950, 100, 100); //RIGHT button

  fill(0); //buttons text
  textSize(40);
  text("UP", 375, 915); //UP button
  textSize(35);
  text("DOWN", 352.5, 1015); //DOWN button
  text("LEFT", 265, 1015); //LEFT button
  text("RIGHT", 455, 1015); //RIGHT button
}

void lines() { //makes it easier to find coords
  line(100, 0, 100, 800); //vert
  line(200, 0, 200, 800);
  line(300, 0, 300, 800);
  line(400, 0, 400, 800);
  line(500, 0, 500, 800);
  line(600, 0, 600, 800);
  line(700, 0, 700, 800);
  line(800, 0, 800, 800);

  line(0, 100, 800, 100); //hori lines
  line(0, 200, 800, 200);
  line(0, 300, 800, 300);
  line(0, 400, 800, 400);
  line(0, 500, 800, 500);
  line(0, 600, 800, 600);
  line(0, 700, 800, 700);
  line(0, 800, 800, 800);
}
