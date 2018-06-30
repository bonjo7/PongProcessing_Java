class Newball{
  
  private boolean moveRight = true; // boolean for ball to move left/right
  private boolean moveUp = false; // boolean for ball to move up/down
  
  private float circleX = width/2;
  private float circleY = width/2;
  private float circleDiameter = 50;
  
  void drawNewBall(){
 
    noStroke();
    fill(255);
    ellipse(circleX, circleY, circleDiameter, circleDiameter); 
    //creating a black dot at the center of the circle so the user knows which ball to aim for
    fill(0);
    ellipse(circleX, circleY, circleDiameter-40, circleDiameter-40);
  }
  
  /*The following methid will be used to add
  a ball to level two in order to try and
  put off the user. This will replicate
  the initial moveBall method
  */
  void moveNewBall(){
    /* The following if conditions
    check the balls position and move
    left,right,up or down depending 
    on its location
    */  
    if (moveRight == true){//if move right is true add ball speed to the xPosition to move ball right
      circleX = circleX + ball.ballSpeed;
    } // Closing if statement right
    else{
      circleX = circleX - ball.ballSpeed; // else take away ball speed to move ball left
    } // Closing else after moveRight
    
    if (moveUp != false){// if not false move ball down by adding ball speed
      circleY = circleY + ball.ballSpeed;
    } // Closing if statement up
    else{ // if it is true take away ballspeed to move ball up the y axis
      circleY = circleY - ball.ballSpeed;
    } // Closing else after moveUp
    
  }
  
  void newBallRestrictions(){
    
    if (circleX <= width - width + 40){
      moveRight = true;
    }
    
    if (circleX >= width - 40){
      moveRight = false;
    }
    
    if (circleY <= 100){
      moveUp = true;
    }
    
    if (circleY >= height - 80){
      moveUp = false;
    }
    
  } // Closing ballRestrictions ethod
  
}