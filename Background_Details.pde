class background_details {

  //Establish varriables
  float speed = 0;
  
  //Establish vectors.
  PVector position;
  PVector velocity;
  
  background_details () {
    position = new PVector(0, 0);
    velocity = new PVector(0, 0);
  }
  
  void setup () {
    //Set random position and speed for vectors
    position.x = 420;
    position.y = random(0, 400);
    velocity.x = random(-1, -10);
    velocity.y = random(-2, 2);
  }
  
  void display () {

    //Change the value of the vector by adding the speed value

    //Draw the star at the value of the vector

    //If the star is off the screen reset the x position, and randomize the y position and speed
  }
}
