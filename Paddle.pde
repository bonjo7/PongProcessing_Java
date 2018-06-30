

class Paddle{
  
  /* Declaring varibales to set size and 
  position of the triangle which will become
  the paddle to bounce the ball off
  
  Using width with - or + ensure's no matter the 
  screen size the paddle will always be the same size
  */
  
  private float triX1 = width/2 - 100;
  private float triX2 = width/2 + 100;
  private float triX3 = width/2;
  
  private float triY1 = height - 60;
  private float triY2 = height - 60;
  private float triY3 = height - 10;
  
  private float paddleSpeed = 5; //Set the speed of the paddle from left to right and right to left
                               //Higher the int faster it moves, lower int slower it moves
  void drawPaddle(){
    
    noStroke(); //No stroke around triangle
    fill(255); //Fill to white
    triangle(triX1, triY1, triX2, triY2, triX3, triY3); //Draw triangle using values above
    
  } //  Closing drawPaddle method
  
  /* Move paddle method will allow the paddle
  to move by using the direction keys left 
  and right
  */
  void movePaddle(){
    
      if(key == CODED){
        if( (keyPressed) && (keyCode == RIGHT) ){ //If right key pressed mve paddle right
        
          triX1 = triX1 + paddleSpeed; //move the x1 value by the size set to paddleSpeed
          triX2 = triX2 + paddleSpeed; //move the x2 value " 
          triX3 = triX3 + paddleSpeed; //move the x3 value " 
      
          } // Closing if key pressed z
    
        else if ( (keyPressed) && (keyCode == LEFT) ){ //If left key pressed move left
      
          triX1 -= paddleSpeed; //move the x1 value minus the size set to paddleSpeed
          triX2 = triX2 - paddleSpeed; //move the x2 value " 
          triX3 = triX3 - paddleSpeed; //move the x3 value " 
      
          } // Closing if key pressed v
          
        } // Closing key coded if function
        
  } // Closing movePaddle method
  
  /*
  paddleRestriction method will ensure
  the paddle stays within the peramaters
  of the screen.
  */
  void paddleRestrictions(){
    
    if (triX1 <= width - width + 10){ //If x1 is less than the width +10 move paddle right
      
      triX1 = triX1 + paddleSpeed; //move the x1 value by the size set to paddleSpeed
      triX2 = triX2 + paddleSpeed; //move the x2 value " 
      triX3 = triX3 + paddleSpeed; //move the x3 value "
      //Higher the value of paddleSpeed the faster the paddle moves, lower value moves slower
    }
    
    if (triX2 >= width - 10){ //If x2 is less than the width -10 move paddle left
      
      triX1 -= paddleSpeed; //move the x1 value minus the size set to paddleSpeed
      triX2 = triX2 - paddleSpeed; //move the x2 value " 
      triX3 = triX3 - paddleSpeed; //move the x3 value " 
    }
    
  } // Closing paddleRestrictions method
  
  /*
  paddleHit method will use an IF statement to ensure
  the ball bounces off the paddle, while ensuring if it 
  falls left of right of the paddle it will continue 
  to move down the y axis.
  
  I had to take into account the y value of the paddle
  and the x1 and x2 value points of the paddle (triangle)
  */
  void paddleHit(){
    
    if ( (ball.yPosition + 25 >= triY1) && (ball.xPosition >= triX1)  && (ball.xPosition <= triX2) ){
      
      ball.moveUp = false; /*Setting moveUp to false will now allow the ball to move up
                             the y axis making it appear to bounce off the paddle
                             */
      score.score = score.score +1; // Add to your score
      
    }
    
    /* If statement which will see
    if the ball is lower than the 
    paddle haight therefore not
    making contact
    If it is lower than the paddle y value
    height stop the ball and paddle moving and 
    display the showResult method from the
    score class
    */
    if (ball.yPosition + 25 > triY1 +40){
      
      ball.ballSpeed = 0.000;  //Set speed to 0 so it stops and does not move
      paddleSpeed = 0.000; //Set speed to 0 so it stops and does not move
      
      ball.moveUp = true;
      
      score.showResult(); //Display players score and level and other messages
      
      println("The position of ball x is: " + ball.getBallxPosition());
      println("The position of ball y is: " + ball.getBallyPosition());
      
    }
    
  } // close yourScore method
    

  
} // Closing Paddle class