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
    
    //Draw the spaceship at the position of the vector

    //Update the collision values of the spaceship
  }
}
