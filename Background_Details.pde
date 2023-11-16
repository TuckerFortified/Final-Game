class background_details {

  //Establish varriables
  float speed = 0;
  int x = 0;
  int y = 0;
  
  //Establish vectors.
  PVector position;
  
  background_details () {
    position = new PVector(x, y);
  }
  
  //Inside setup:

    //Set random position and speed for vectors

  //Inside draw:

    //Change the value of the vector by adding the speed value

    //Draw the star at the value of the vector

    //If the star is off the screen reset the x position, and randomize the y position and speed

}
