/*
Assigning variables 
for my other classes
so I can use their methods
*/
Ball ball;
Paddle paddle;
Score score;
Newball newBall;


/* 
Variables for background color
*/
int redBg = 120;
int greenBg = 200;
int blueBg = 100;

int gameColorR = 0;
int gameColorG = 0;
int gameColorB = 0;

PFont font; // font variable

void setup(){
  
  size (800,600); //window size
  background(0); //bg color black
  
  font = loadFont("AgencyFB-Bold-30.vlw"); //Creating customfont importing from processing
  textFont(font);
  
  frameRate(60); //setting framerate to 60 fps
  
  ball = new Ball(width/2, height/2); //Set ball position
  paddle = new Paddle();
  score = new Score();
  newBall = new Newball();

  
  ball.setDiameter(10); // Set diameter of ball
  
  score.enterName(); // Invoking enterName method
  
} // closing setup

void draw(){
  
  background(redBg, greenBg, blueBg); //BG color using the variables above
  
  fill(gameColorR, gameColorG, gameColorB); //filling the color of the game area
  rect(10, 80, width - 20, height - 90); //game area where ball and paddle will be present
  
  cursor(HAND); //setting cursor to hand symbol
  /*
  Invoking methods from
  ball, paddle and score classes
  */
  ball.drawBall();
  ball.moveBall();
  ball.ballRestrictions();
  
  paddle.drawPaddle();
  paddle.movePaddle();
  paddle.paddleRestrictions();
  paddle.paddleHit();
  
  score.yourScore();
  score.increaseSpeed();
  
} //closing draw