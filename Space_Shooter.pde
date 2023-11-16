//Declare varriables
int gameState = 0;

//Declare objects
background_details[] star = new background_details[40];

void setup () {
  
  //Setting the size and background
  size(400, 400);
  background(10, 0, 50);
  
  //Setting up player object
  
  //Set up a for loop with an array to create multiple meteor objects
  
  //Set up a for loop with an array to create multiple background detail objects
  for (int i = 0; i < 40; i++) {
    star[i] = new background_details();
    star[i].startUp();
  }
}


void draw () {
  
  //Draw the background
  background(10, 0, 50);
  
  //Call the background details display function that will move and display the stars flying past the player.
  for (int i = 0; i < 40; i++) {
      star[i].display();
    }
    
  //Use an IF statement to see if the game has started or not, and if not then put a start screen.
  if (gameState == 0) {
    rectMode(CENTER);
    fill(0);
    rect(200, 20, 400, 40);
    rect(200, 380, 400, 40);
    fill(255);
    textSize(20);
    text("Space Shooter", 150, 120);
    textSize(15);
    text("Press Space", 170, 170);
  }
  
  //This IF statement checks if the player has began the game
  if (gameState == 1) {
  
    //Call the player objects move function that will receive input from the key pressed and released functions.
  
    //Call the meteor objects display function that will move and draw the meteor objects, as well as randomize their spawn locations, speeds, loop their movements, and check for the player collision.
  }
  
  //This IF statement checks if the player died
  if (gameState == 2) {
    rectMode(CENTER);
    fill(0);
    rect(200, 20, 400, 40);
    rect(200, 380, 400, 40);
    fill(255);
    textSize(20);
    text("You Died!", 175, 160);
    textSize(15);
    text("Press R to return to title screen", 120, 190);
  }
}

void keyPressed () {
  print(key);
  //If w key pressed, set goUp to true
  
  //If S key pressed, set goDown to true
  
  //If A key pressed, set goLeft to true
  
  //If D key pressed, set goRight to true
  
  //If Space bar pressed, begin game
  if (key == ' ' && gameState == 0) {
    gameState = 1;
  }
  
  //If the player is dead, press R to go back to tile screen
  if (key == 'r' && gameState == 2) {
    gameState = 0;
  }
}

void keyReleased () {
  //If w key pressed, set goUp to false
  
  //If S key pressed, set goDown to false
  
  //If A key pressed, set goLeft to false
  
  //If D key pressed, set goRight to false
  
}
