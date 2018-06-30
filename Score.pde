import java.util.Random;
import javax.swing.JOptionPane;

class Score{
 
  private int score = 0; // variable score which will display player score
  private int level = 1; // varibale level which will display player level
  private String name;
  private int expectedScore;
  private String gameOver = "Game Over";
  private float randomX, randomY;
  
  Random colour = new Random();
  
   
  /*
  yourScore method will display socre and level on upper screen
  while increasing ball and paddle speed as player prgresses 
  through the levels
  */
  void yourScore(){
    
    fill(0,0,255); //bg color of socre/level area
    rect(0,0,width,70); //socre and level will be displayed in this rect
    
    
    
    if ( score == 0 ){//if score is 0 set level to 1 and bg color to red
      redBg = 255;
      greenBg = 0;
      blueBg = 0;
      
      fill(255); //Score/ level color white
      text("Welcome to my game",((width/2) - 220), 50); //score and position
      text("Good Luck - " + name.toUpperCase(), ((width/2) + 150), 50); //level and position
    }
    else if ( score > 0){//if score > 0 (ball hit paddle at least once change bg to green
      redBg = 0;
      greenBg = 255;
      blueBg = 0;
      
      fill(255); //Score/ level color white
      text(name.toUpperCase() + "'s Score = " + score, ((width/2) - 220), 50); //score and position
      text("Level " + level, ((width/2) + 150), 50); //level and position
    }
    
  }   // Close your score
  
  /* Show Result methid will display
  the players score and level reached 
  should the ball not hit the paddle
  */
  void showResult(){
    
    for (int i = 2; i < 5; i++) { //Displaying text dividers, draw three dividers
      
      noStroke(); //No stroke on the dividers
      fill(255, 0, 0); //Set color to red
      
      rect(10, i * 100, width-20, 20); //draw dividers, i =2 multiply i each time by 100
      
    }
      /*setting the text which shoulD de displayed
      if the ball does no hit the paddle
      */
      
      fill(0, 255, 0); // Color of text
      
      text(gameOver, width/2 - 50, (height/2) - 150); //Game over and position of text
      
      text("y".toUpperCase() + "OUR ".toLowerCase() + "S".toUpperCase() + "CORE = ".toLowerCase() + score, width/2 - 60, (height/2) - 30); //Displaying player score and position of text
      
      text("Level reached = " + level, width/2 - 70, height/2 + 70); // Displaying level reached and position of text
      
      text("Better luck next time - ".toUpperCase() + name.toUpperCase() + "\n" + "* Click " + "mouse ".toUpperCase() + "to play again *" , width/2 - 160, height/2 +170); //Better luck next time while converting it to upperCase
    
      println("The length of the string " + "\"game over\"".toUpperCase() + " is: " +gameOver.length());
      println("The user's name was: " + name.toUpperCase());
      
      println("Your expected score was: " + expectedScore + " - Your actual score is: " + score + " - Difference = " + (expectedScore-score));
    /*
    If the mouse is pressed it will
    reset the game so the player can 
    play again
    */
      if(mousePressed){
      
        ball.xPosition = width/2; //set the ball to center of x axis
        ball.yPosition = width/2; //set the ball to centre of y axis
        ball.moveUp = false; //move the ball up so the player has a chance to hit it!
        ball.ballSpeed = 5; //reset the ball speed to 5
        paddle.paddleSpeed = 5; // reset the paddle to 5
        score = 0; //reset score
        level = 1; // reset level
        paddle.triX1 = width/2 - 100; //reset paddle dimensions ans position
        paddle.triX2 = width/2 + 100;
        paddle.triX3 = width/2;
        gameColorR = 0; //reset game area color
        gameColorG  = 0;
        gameColorB = 0;
      
    }
    
  } // Close showResult
  
  void increaseSpeed(){
    /*
    The following If statements will increase the ball and
    paddle speed as the player progresses through
    the levels, while also changing the game area colour
    At level four the paddle size will decrease
    */
    if ( (score >= 5) && (score <= 10)){
      ball.ballSpeed = ball.ballSpeed + 0.005; //Increase ball speed
      paddle.paddleSpeed += 0.005; //Increase paddle speed
      
      level = 2; //Increase level
      
      gameColorR = 100; // Change game area color
      gameColorG = 50;
      gameColorB = 50;
     
      newBall.drawNewBall();
      newBall.moveNewBall();
      newBall.newBallRestrictions();
      
    }

    
    if ( (score >= 10) && (score <=15)){
      ball.ballSpeed = ball.ballSpeed + 0.008;
      paddle.paddleSpeed += 0.008;
      
      level = 3;
      
      gameColorR = 50;
      gameColorG = 100;
      gameColorB = 50;
      
      /*Nested For loop will display
      small boxes which will change colour
      in order to put off the user
      */
      for(int y = 80; y < height - 60; y += 50){
          for(int x =20; x < width - 20; x+=50){
            fill(colour.nextInt(256),colour.nextInt(256),colour.nextInt(256));
            rect(x, y, 10, 10);
            }
  
        }
   
    }
    
    if ( (score >= 15) && (score <= 20) ){
      ball.ballSpeed = ball.ballSpeed + 0.009;
      paddle.paddleSpeed += 0.009;
      
      level = 4;
      
      gameColorR = 50;
      gameColorG = 50;
      gameColorB = 100;
      
      paddle.triX1 = paddle.triX1 + 0.08; //Decrease paddle size of x1
      paddle.triX2 = paddle.triX2 - 0.08; //Decrease paddle size of x2
      
      
    }
    
    if ( score >= 20){
      ball.ballSpeed += 0.020;
      paddle.paddleSpeed += 0.020;
      
      level = 5;
      
      gameColorR = 0;
      gameColorG = 0;
      gameColorB = 0;
      
      /*Using a while loop to draw
      6 circles at random x and y
      loacations to try to confuse the
      user as they continue to hit the
      ball off the paddle
      */
      
      randomX = random(width);// setting randomX to a random value on the x axis
      randomY = random(height);// setting randomY to a random value on the y axis
      
      int i = 2;
      while( i < 8 ){
        
        fill(255);
        ellipse(randomX*i, randomY*i, ball.diameter, ball.diameter);
        i++;
      }// close while loop
      
    }//closing level 5
      
    }//clsoing increaseSpeed
    
    /*
    entername method using a JOption to allow the user enter their name
    Their name will then be displayed throughout the game. 
    
    Once the user enters their name they will then be asked to enter their
    expected score, this will take in a string and convert it to an integer
    
    Once the game is complete their expected score and actual score will be
    printed to the console.
    
    After they enter their name they will then be provided with the rules 
    of the game via another dialog box
    */
    public void enterName(){
      
      name =  JOptionPane.showInputDialog(
     "Welcome to Keep Ups the Game \n\n " + "Please enter your name",
     "Name");
    
      expectedScore = Integer.parseInt(
      JOptionPane.showInputDialog("Enter your expected score between 0 and 40", "0")
      );
    
      JOptionPane.showMessageDialog(null,
      "Welcome " + name + "\n\nRules ***\n User arrow keys to move left and right\nKeep the ball up by using the paddle\nReceive 1 point everytime you hit the paddle\nBall speed increases with each level\n\nGood Luck\n\nPress ok to play\n\n ***WARNING***\n Simulating flashing lights on level 3 do not play if epileptic",
      "Keepie Up's Game",
      JOptionPane.PLAIN_MESSAGE);
    }
    
    
  } // Score
  