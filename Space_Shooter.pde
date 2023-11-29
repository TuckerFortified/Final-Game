//Declare varriables
int gameState = 0;
boolean goUp = false;
boolean goDown = false;
boolean goLeft = false;
boolean goRight = false;

//Declare vectors
PVector playerPosition;

//Declare objects
ArrayList<background_details> star = new ArrayList<background_details>();
background_details shootingStar;
player spaceShip;
meteor[] asteriod = new meteor[3];

void setup () {
  
  //Setting the size and background
  size(400, 400);
  background(10, 0, 50);
  
  //Setting up vectors
  playerPosition = new PVector(0,0);
  
  //Setting up player object
  spaceShip = new player(-200, 200);
  
  //Set up a for loop with an array to create multiple meteor objects
  for (int i = 0; i < 3; i++) {
    asteriod[i] = new meteor();
  }
  
  //Set up a for loop with an arrayList to create multiple background detail objects
  for (int i = 0; i < 40; i++) {
    //Skills Inventory 36. Use an ArrayList Method.
    star.add(new background_details());
    background_details Star = star.get(i);
    Star.startUp();
  }
  
  //Setting up the shooting star object (basically making it so there is a chance a shooting star may appear when the game starts)
  shootingStar = new background_details();
  shootingStar.startUp();
}


void draw () {
  
  //Draw the background
  background(10, 0, 50);
  
  //Update the players collision
  playerPosition = spaceShip.position;
  
  //Call the background details display function that will move and display the stars flying past the player (along with the shooting star).
  for (int i = 0; i < 40; i++) {
      background_details Star = star.get(i);
      Star.display();
      shootingStar.shoot();
    }
    
  //Use an IF statement to see if the game has started or not, and if not then put a start screen.
  if (gameState == 0) {
    
    //Drawing the main menu
    //Skills Inventory 3. Modes.
    rectMode(CENTER);
    fill(0);
    rect(200, 20, 400, 40);
    rect(200, 380, 400, 40);
    fill(255);
    textSize(20);
    text("Space Shooter", 150, 120);
    textSize(15);
    text("Press Space", 170, 170);
    
    //making it so asteriods do not launch while the player is still in the menu
    for (int i = 0; i < 3; i++) {
      asteriod[i].reset();
    }
  }
  
  //This IF statement checks if the player has began the game
  if (gameState == 1) {
  
    //Call the player objects move function that will receive input from the key pressed and released functions.
    spaceShip.move();  
    
    //Call the meteor objects display function that will move and draw the meteor objects, as well as randomize their spawn locations, speeds, loop their movements, and check for the player collision.
    for (int i = 0; i < 3; i++) {
      asteriod[i].display();
    }

  }
  
  //This IF statement checks if the player died
  if (gameState == 2) {
    
    //Drawing the death screen
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
  if (key == 'w' || key == 'W') {
    goUp = true;
  }
  
  //If S key pressed, set goDown to true
  if (key == 's' || key == 'S') {
    goDown = true;
  }
  
  //If A key pressed, set goLeft to true
  if (key == 'a' || key == 'A') {
    goLeft = true;
  }
  
  //If D key pressed, set goRight to true
  if (key == 'd' || key == 'D') {
    goRight = true;
  }
  
  //If Space bar pressed, begin game and reset the player's location
  if (key == ' ' && gameState == 0) {
    gameState = 1;
    spaceShip.reset();
  }
  
  //If the player is dead, press R to go back to tile screen
  if (key == 'r' && gameState == 2) {
    gameState = 0;
    
  }
}

void keyReleased () {
  
  //If w key pressed, set goUp to false
  if (key == 'w' || key == 'W') {
    goUp = false;
    print(goUp);
  }
  
  //If S key pressed, set goDown to false
  if (key == 's' || key == 'S') {
    goDown = false;
  }
  
  //If A key pressed, set goLeft to false
  if (key == 'a' || key == 'A') {
    goLeft = false;
  }
  
  //If D key pressed, set goRight to false
  if (key == 'd' || key == 'D') {
    goRight = false;
  }
}
