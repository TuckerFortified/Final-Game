class background_details {

  //Establish varriables
  float speed = 0;
  int starSize = 0;
  
  //Establish vectors.
  PVector position;
  PVector velocity;
  PVector shootDirection;
  
  background_details () {
    position = new PVector(0, 0);
    velocity = new PVector(0, 0);
    shootDirection = PVector.random2D();
    println(shootDirection);
    print('A');
  }
  
  void startUp () {
    
    //Set random position and speed for vectors
    position.x = random(0, 800);
    position.y = random(0, 400);
    velocity.x = random(-10, -1);
    velocity.y = random(-0.2, 0.2);
    
    //Set random size of the star
    if (velocity.x > -5) {
    starSize = int(random(1, 2.9));
    }
    else {
      starSize = int(random(3, 4.9));
    }
  }
  
  void display () {

    //Change the value of the vector by adding the speed value
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;

    //Draw the star at the value of the vector
    fill(255);
    noStroke();
    ellipse(position.x, position.y, starSize, starSize);

    //If the star is off the screen reset the x position, and randomize the y position and speed
    if (position.x < -20) {
      position.x = random(420, 700);
      position.y = random(0, 400);
      velocity.x = random(-10, -1);
      velocity.y = random(-0.2, 0.2);
      //print(velocity.x);
      if (velocity.x > -5) {
        starSize = int(random(1, 2.9));
      }
      else {
        starSize = int(random(3, 4.9));
      }
    }
    
  }
  
  //Shooting star function (makes it so when you start the game there is a chance a shooting star will fly by you)
  void shoot () {
    fill(random(0, 255));
    ellipse(position.x, position.y, 10, 10);
    position.x = position.x + shootDirection.x;
    position.y = position.y + shootDirection.y;
    println('a');
    println(shootDirection.x);
    
    //Makes it so the star stops moving after it has left the screen
    if (frameCount > 1000) {
      if (position.x > 410 || position.x < -10 || position.y > 410 || position.y < -10) {
        position.set(-10, -10);
        shootDirection.set(0, 0);
      }
    }
  }
  
}
