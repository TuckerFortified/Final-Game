class meteor {
  
  //Establish vectors
  PVector position;
  PVector velocity;
  
  void meteor () {
    position = new PVector(500, 200);
    velocity = new PVector(0, 0);
  }
  
  //Set a random direction for the meteor to move in
  void reset () {
    position.x = values(0);
    position.y = values(1);
    velocity.x = values(2);
    position.x = values(3);
  }
  
  //Inside the display function:

    //Update the position of the vector

    //Draw the meteor at the position of the vector

    //Update the collision values of the meteor

    //If the collision is overlapping with the player collision, then draw a death screen, and then set the gamestart to false

    //If the meteor is off of the screen, reset the position and randomize the direction
    
  //Function that generates x & y for position and velocity vectors depending on what number is put in it  
  float values (float i) {
    if (i == 0) {
      i = 450;
    }
    if (i == 1) {
      i = random(0, 400);
    }
    if (i == 2) {
      i = random(-10, -1);
    }
    if (i == 3) {
      i = random(-2, 2);
    }
    return i;
  }
}
