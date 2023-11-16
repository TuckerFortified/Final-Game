class meteor {
  
  //Establish variables
  float collision = 0;
  
  //Establish vectors
  PVector position;
  PVector velocity;
  
  meteor () {
    position = new PVector(500, 200);
    velocity = new PVector(0, 0);
  }
  
  //Set a random direction for the meteor to move in
  void reset () {
    position.x = values(0);
    position.y = values(1);
    velocity.x = values(2);
    velocity.y = values(3);
    println(position.x);
  }
  
  void display () {

    //Update the position of the vector
    position.x = position.x + velocity.x;
    position.y = position.y + velocity.y;
    println(position.x);
    
    //Draw the meteor at the position of the vector
    if (velocity.x < -7) {
      fill(100, 51, 51);
      ellipse(position.x, position.y, 20, 20);
      fill(70, 20, 20);
      ellipse(position.x + 2, position.y - 5, 4, 4);
      ellipse(position.x, position.y + 4, 4, 4);
    }
    if (velocity.x < -3 && velocity.x > -7) {
      fill(100, 51, 51);
      ellipse(position.x, position.y, 40, 40);
      fill(70, 20, 20);
      ellipse(position.x - 10, position.y, 10, 10);
      ellipse(position.x + 7, position.y - 3, 10, 10);
    }
    if (velocity.x > -3) {
      fill(100, 51, 51);
      ellipse(position.x, position.y, 60, 60);
      fill(70, 20, 20);
      ellipse(position.x - 10, position.y - 10, 2, 2);
      ellipse(position.x + 15, position.y + 2, 4, 4);
      ellipse(position.x - 5, position.y + 20, 8, 8);
    }
    
    //Update the collision values of the meteor

    //If the collision is overlapping with the player collision, then draw a death screen, and then set the gamestart to false
    collision = dist(position.x, position.y, playerPosition.x, playerPosition.y);
    if (velocity.x < -7) {
      if (collision < 10) {
        gameState = 2;
      }
    }
    if (velocity.x < -3 && velocity.x > -7) {
      if (collision < 20) {
        gameState = 2;
      }
    }
    if (velocity.x > -3) {
      if (collision < 30) {
        gameState = 2;
      }
    }
    
    
    
    //If the meteor is off of the screen, reset the position and randomize the direction
    if (position.x < -40 || position.y > 440 || position.y < -40) {
    position.x = values(0);
    position.y = values(1);
    velocity.x = values(2);
    velocity.y = values(3);
    }
  }
    
  //Function that generates x & y for position and velocity vectors depending on what number is put in it  
  float values (float i) {
    float s = 0;
    if (i == 0) {
      s = random(450, 700);
    }
    if (i == 1) {
      s = random(0, 400);
    }
    if (i == 2) {
      s = random(-10, -1);
    }
    if (i == 3) {
      s = random(-2, 2);
    }
    println(s);
    return s;
  }
}
