class player {
    
  //Establish vectors
  PVector position;
  
  //Making an array that will create a smoke effect behind the space ship
    float [] smokeTrail = new float [6];
    
  player (float x, float y) {
    
    //Establishing vectors
    position = new PVector(x, y);
    
    //Making an array that will create a smoke effect behind the space ship
    smokeTrail[0] = 70;
    smokeTrail[2] = 70;
    smokeTrail[4] = 70;
    smokeTrail[1] = 200;
    smokeTrail[3] = 200;
    smokeTrail[5] = 200;
    
  }
  
  //Function to hide the player off camera
  void reset () {
    position.x = 70;
    position.y = 200;
  }
  
  void move () {
    
    //Check the direction values, and change the vector values based on the direction. (the direction is determined by the variables inside the key pressed and released functions)
    if (goUp == true) {
      position.y = position.y - 1;
    }
    if (goDown == true) {
      position.y = position.y + 1;
    }
    if (goLeft == true) {
      position.x = position.x - 1;
    }
    if (goRight == true) {
      position.x = position.x + 1;
    }
    
    //Making it so the player cannot leave the screen
    position.x = constrain(position.x, 45, 360);
    position.y = constrain(position.y, 15, 385);
    
    //Draw the spaceship at the position of the vector
    fill(100);
    triangle(position.x - 20, position.y - 15, position.x - 20, position.y, position.x + 40, position.y);
    fill(130);
    ellipse(position.x - 20, position.y, 40, 7);
    fill(100);
    triangle(position.x - 20, position.y + 15, position.x - 20, position.y, position.x + 40, position.y);
    fill(106, 103, 216);
    ellipse(position.x + 20, position.y, 35, 8);
    fill(206, 107, 0);
    triangle(position.x - 20, position.y, position.x - 40, position.y - 5, position.x - 40, position.y + 5);
    triangle(position.x - 45, position.y, position.x - 40, position.y - 2, position.x - 40, position.y + 2);
    triangle(position.x - 45, position.y - 4, position.x - 40, position.y - 2, position.x - 40, position.y - 5);
    triangle(position.x - 45, position.y + 4, position.x - 40, position.y + 5, position.x - 40, position.y + 2);
    
    //Moving and drawing the smoke effect
    for (int i = 5; i > -1; i--) {
      if (i > 1) {
        smokeTrail[i - 2] = smokeTrail[i];
      }
    }
    smokeTrail[4] = position.x - 40;
    smokeTrail[5] = position.y;
    fill(150, 150, 150, 200);
    ellipse(smokeTrail[4] - 5, smokeTrail[5] - 2, 7, 7);
    fill(150, 150, 150, 140);
    ellipse(smokeTrail[2] - 10, smokeTrail[3] - 5, 10, 10);
    fill(150, 150, 150, 80);
    ellipse(smokeTrail[0] - 15, smokeTrail[1] - 10, 15, 15);

    //Update the collision values of the spaceship
    //playerPosition = position;
    //print(playerPosition);
    //playerCollisionX = int(position.x);
    //playerCollisionY = int(position.y);
    //print(playerCollisionX);
    //print(playerCollisionY);
  }
}
