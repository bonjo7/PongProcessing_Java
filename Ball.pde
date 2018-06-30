class Ball{
  
  private float xPosition; // ball x postion
  private float yPosition; // ball y position
  private float diameter;  // ball size
  
  private float ballSpeed = 5; //speed of ball
  
  private boolean moveRight = true; // boolean for ball to move left/right
  private boolean moveUp = false; // boolean for ball to move up/down
  
  private int colorWhite = 255; // ball color
  
  /*
  Ball constructor
  */
  Ball(float xPosition, float yPosition){
    
    this.xPosition = xPosition;
    this.yPosition = yPosition;
    
  } // Closing ball constructor
  
  
  void drawBall(){
    
    noStroke();
    fill(colorWhite);
    ellipse(xPosition, yPosition, diameter, diameter);
    
  } // Closing drawBall method
  
  void moveBall(){
    /* The following if conditions
    check the balls position and move
    left,right,up or down depending 
    on its location
    */
    if (moveRight == true){//if move right is true add ball speed to the xPosition to move ball right
      xPosition = xPosition + ballSpeed;
    } // Closing if statement right
    else{
      xPosition = xPosition - ballSpeed; // else take away ball speed to move ball left
    } // Closing else after moveRight
    
    if (moveUp != false){// if not false move ball down by adding ball speed
      yPosition = yPosition + ballSpeed;
    } // Closing if statement up
    else{ // if it is true take away ballspeed to move ball up the y axis
      yPosition = yPosition - ballSpeed;
    } // Closing else after moveUp
    
  } // Closing moveBall method
  
  /* Ball restriction method
  will set resctrictions on where and 
  where not the ball can move to i.e the edge
  of the screen to give the impression if
  is bouncing off the upper and side edges
  
  Using width with - or + ensure's no matter the 
  screen size the bal will always be the bouce size
  off the sides and top
  */
  void ballRestrictions(){
    
    if (xPosition <= width - width + 40){
      moveRight = true;
    }
    
    if (xPosition >= width - 40){
      moveRight = false;
    }
    
    if (yPosition <= 100){
      moveUp = true;
    }
    
    /*
    Removed this if as I initally had it in
    just to ensure the ball was moving all
    around the screen, as I will now be using the 
    paddle as opposed to the bottom y value
    
    if (yPosition >= height - 80){
      moveUp = false;
    }
    */
  } // Closing ballRestrictions ethod
  
  /* The following getter methods will
  allow to check the position of the ball
  on the x and y axis
  */
  public float getBallxPosition(){
    return xPosition;
  }
  
  public float getBallyPosition(){
    return yPosition;
  }
  
  /*Mutator method will allow to set
  the dismeter of of the ball.
  It will also ensure that the only size
  of the ball can be 50
  */
  public void setDiameter(float diameter){
  if((diameter >= 50) && (diameter <= 50)){
    this.diameter = diameter;
  }
  else{
    this.diameter = 50;
  }
  
  } // closing setDiameter
  
      
} // Closing Ball class