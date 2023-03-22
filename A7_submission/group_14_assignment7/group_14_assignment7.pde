invaderRows Army;
GUI gui;
Ship ship;

Bullet bullet;
boolean bulletShot = false;
ArrayList<Bullet> bullets = new ArrayList<Bullet>(); 
PFont ocr_a_extended; // initialize pfont object
PVector play_button_pos; // PVector to store position of play button on menu screen
String to_play; // text that functions as play button
float to_play_width; // width of play button
float string_height; // height of play button
boolean startGame = false; // boolean to control when to start the game (start after "play" is clicked)
boolean showPause = false;

void setup() {
  size(800, 800);

  Army = new invaderRows(4, 20, 25, 250);
  gui = new GUI(4,20, Army.numTotalInvaders);
  String image_name = "ship.png"; // name of ship image
  ship = new Ship(image_name);
  
  ocr_a_extended = createFont("OCR A Extended", 32); // create font
  textFont(ocr_a_extended); // set font
  textSize(32);
  float string_ascent = textAscent();
  float string_descent = textDescent();
  string_height = string_ascent + string_descent;
  showMenu(); 
}

void draw() {
  if (startGame && (Army.win == false && Army.lose == false)) {
    startGame();
  }
  if (Army.win){
    winscreen();
  }
  if (Army.lose){
    losescreen();
  }
}

// game dynamics
void startGame() {
  background(0);

  Army.display();
  Army.move();
  Army.checkWin();

  gui.display(Army.numTotalInvaders,ship.tot_bullets);

  ship.display(); // display ship
  ship.update();

  Army.checkCollision(ship.Bullets);

}

void shoot () {
  bullet = new Bullet(300, 300, 5, 200);
  bullet.create ();
  bullet.move();
}

void keyPressed() {
  if (key == ' ') {
    ship.fire();
  }
  if (key =='x'){
    setup();
  }
}

// displays a menu screen with title and game rules
void showMenu() {
  background(0);

  // titles
  String game_title = "SPACE INVADERS";
  to_play = "CLICK HERE TO PLAY!";
  String rules_title = "*GAME RULES AND CONDITIONS*";
  
  // rules
  String alien_rule = "ALIENS MOVE DOWNWARD FROM THE TOP OF THE SCREEN";
  String shoot_rule = "PRESS SPACEBAR TO SHOOT BULLETS";
  String move_rule = "USE LEFT AND RIGHT ARROW KEYS TO MOVE SHIP";
  String win_rule = "TO WIN, SHOOT AND ELIMINATE ALL ALIENS";
  String lose_rule = "IF ALIENS REACH YOUR SHIP, YOU LOSE";
  
  // string widths used for centering text
  textSize(40);
  float title_width = textWidth(game_title);
  to_play_width = textWidth(to_play);
  textSize(20);
  float rules_title_width = textWidth(rules_title);
  float alien_rule_width = textWidth(alien_rule);
  float shoot_rule_width = textWidth(shoot_rule);
  float move_rule_width = textWidth(move_rule);
  float win_rule_width = textWidth(win_rule);
  float lose_rule_width = textWidth(lose_rule);
  
  // assign PVector values for the play button position
  play_button_pos = new PVector(width/2 - to_play_width/2, 148);
  
  // display text in center
  textSize(40);
  text(game_title, width/2 - title_width/2, 100);
  text(to_play, play_button_pos.x, play_button_pos.y);
  textSize(20);
  text(rules_title, width/2 - rules_title_width/2, 400);
  text(alien_rule, width/2 - alien_rule_width/2, 430);
  text(shoot_rule, width/2 - shoot_rule_width/2, 460);
  text(move_rule, width/2 - move_rule_width/2, 490);
  text(win_rule, width/2 - win_rule_width/2, 520);
  text(lose_rule, width/2 - lose_rule_width/2, 550);
}


// when mouse clicked, check if over "click here to play"; if so, game will start
void mouseClicked() {
  if (mouseX > play_button_pos.x && mouseX < play_button_pos.x + to_play_width
      && mouseY > play_button_pos.y - string_height && mouseY < play_button_pos.y) {
    startGame = true;
  }
}

void winscreen(){
  fill(40,180,40);
  rect(width*.15,height*.10,width*.7,height*.6);
  fill(255);
  textSize(105);
  String winner = "You won!";
  float winwidth = textWidth(winner);
  text(winner,(width/2)-(winwidth/2),height*.35);
  textSize(40);
  String cont = "Press x to restart the game";
  float contwidth = textWidth(cont);
  text(cont,(width/2)-(contwidth/2),height*.6);
}

void losescreen(){
  fill(180,40,40);
  rect(width*.15,height*.10,width*.7,height*.6);
  fill(255);
  textSize(105);
  String loser = "You lost!";
  float winwidth = textWidth(loser);
  text(loser,(width/2)-(winwidth/2),height*.35);
  textSize(40);
  String cont = "Press x to restart the game";
  float contwidth = textWidth(cont);
  text(cont,(width/2)-(contwidth/2),height*.6);
}
