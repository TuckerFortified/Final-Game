class background_details {

  //Establish varriables
  float speed = 0;
  int starSize = 0;
  
  //Establish vectors.
  PVector position;
  PVector velocity;
  
  background_details () {
    position = new PVector(0, 0);
    velocity = new PVector(0, 0);
  }
  
  void startUp () {
    
    //Set random position and speed for vectors
    position.x = random(420, 800);
    position.y = random(0, 400);
    velocity.x = random(-1, -10);
    velocity.y = random(-2, 2);
    
    //Set random size of the star
    starSize = int(random(1, 4.9));
  }
  
  void display () {

    //Change the value of the vector by adding the speed value
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;

    //Draw the star at the value of the vector
    fill(255);
    noStroke();
    ellipseMode(CENTER);
    ellipse(position.x, position.y, starSize, starSize);

    //If the star is off the screen reset the x position, and randomize the y position and speed
    if (position.x < -20) {
      position.x = 420;
      position.y = random(0, 400);
      velocity.x = random(-1, -10);
      velocity.y = random(-2, 2);
      print(velocity.x);
    }
    
  }
}
