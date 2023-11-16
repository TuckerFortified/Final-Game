class player {
    
  //Establish vectors
  PVector position;
  
  player () {
    position = new PVector(0, 0);
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


    //Update the collision values of the spaceship
    playerCollisionX = int(position.x);
    playerCollisionY = int(position.y);
    print(playerCollisionX);
    print(playerCollisionY);
  }
}
