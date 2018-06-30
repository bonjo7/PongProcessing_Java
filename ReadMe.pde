/*
Name: Bernard Thompson
Student Number : 20020038

*** Warning message, level three simulates changing colours (small sqaures) which may 
effect someone if they are epileptic ***

Brief description of the animation achieved: I set out to acheive a half pong themed game
which I call keepie Up's. One paddle and one ball. The ball will bounce off the top, sides and 
the paddle (triangle shape) which will move left and right with the use of the keyboard 
left and right arrows, trying to keep the ball active or alive. 

Each time the ball makes contact with the paddle the user
is awarded a point. At each stage of five points the level increases and the ball speed will also
increase. 

At level 1, only one ball is present

Level 2, an extra ball is added to put off the user

Level 3, squares changing colour are present to put off the user

Level 4, the paddle reduces in size

Level 5, (max level) balls are drawn randomly to once agin try and put the user off

For each level the ball speed and paddle speed will increase

If the ball misses the paddle the game is over and the player is presented with their
score and level reached. The user then has the option to click the mouse button and restart the game
to play again.

Once the game ends the x and y positions of the ball, user's name, expected socre, final score and
difference between scores are printed to the console.

Known bugs/problems: Bug 1: Fixed the following problem! While
using a float I was increased the speed by a whole number, I reduced this to 0.005 to gradually
increase the speed and bingo we're sucking diesel!

After thinking I fixed the below bug, I ran a print statement to ensure it was working properly,
but the problem is still there. The ball continues to move extremly slowly down.

The game works great (in my opinion) with the exception of moving up
through the levels. On level one if you miss the ball, the ball stops and user is presented with
their score/level and can restart with no issuse. As the level increases (level 2,3,4,5) if the 
ball misses the paddle the ball continues to move down the y axis and reappears. Hopefully by the 
time I submit this I will have resolved the issue.

Bug 2:The only other bug I can find at present is when the game starts, if the ball touches the righthand side
of the paddle it issues two point insetad of one.

Bug 3: sometimes I need to click a mouse button to move the paddle at the start.

Any sources referred to during the development of the assignment: For this assignment I read and watched
a few pong tutorials so I had an idea of what I was trying to achieve.

The tutorials which I found helpful were as follows....

Thinking through a basic pong game in processing by William E.J. Doane

"Processing to make pong" via youtube https://www.youtube.com/watch?v=vGLXx_OEtc4

I also found the processing forums very helpfull.

I tried not to re use any code from the tutorials above as I wanted to figure a lot out
for myself, hence the few bugs that still exist or future bugs which I may create while
trying to resolve the present bugs :-)

*/