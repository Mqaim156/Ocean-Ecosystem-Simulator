class Animal {
  
  // Animal Fields
  int age, hunger, vision, R, G, B;
  int reproduction;
  String species;
  PVector speed, pos;
  boolean dead = false;
  boolean isRunning = false;
  boolean beingHunt = false;
  boolean isFood;
  int diameter;
  int health = 100;
  int filling;
  String[] food = {};
  int maxAge;
  int lastAgeUpdated = 0;
  int lastBreedUpdated = 0;
  int lastHungerUpdated = 0;
  
  //Constructor
  Animal(int a, int h, PVector s, PVector p, int v, int r, String sp, int d){
    this.age = a;
    this.hunger = h;
    this.speed = s;
    this.pos = p;
    this.vision = v;
    this.reproduction = r;
    this.diameter = d;
    this.species = sp;
    this.filling = 0;
    
    // Make sure no speed is 0
    if(this.speed.x == 0 && this.species != "Seaweed")
      this.speed.x = 2;
    
  }
  
  // CHECK METHODS
  
  // check the age of the animals
  void checkAge(){
    
    if (this.age >= maxAge)
      this.die();
      
    updateAge();

    
  }
  
  // EATING METHODS
  
  //check Hunger of each animal
  void checkHunger(ArrayList<Animal> preys){

    if (this.hunger > 6) {
      hunt(preys);    
    }
    
    updateHunger();
  } 

  // EATING PROCESS
  
  // Hunt / search for a prey
  void hunt(ArrayList<Animal> preys) {
    
    Animal nearestPrey = null;
    
    // initial value of the minimum distance
    float minDist = 1000;
    
    // go to next iteration if the animal is 'this' or dead
    for(Animal prey : preys){
      if(prey.dead || prey == this) {
        continue;  
      }
        
      
      boolean isFood = false; 
      
      // check if the prey is edible
      for (String sp : food){
        if(prey.species.equals(sp)){
          isFood = true;
          break;
        }
      }
      
      // if its not edible, go to next iteration/prey
      if(!isFood)
        continue;
      
      //Checks distance
      float distance =  PVector.dist(this.pos, prey.pos);
      
      if(distance < vision && distance < minDist) {
        minDist = distance;
        nearestPrey = prey;
      }
      
    }
    
    // chase the prey
    if(nearestPrey != null)
      chase(nearestPrey);
      
    
  }
 
 
  //Chase method
  void chase(Animal prey) {
    
    PVector direction =  PVector.sub(prey.pos, this.pos);
    
    direction.normalize();
    
    //Speeds up
    float currSpeed = speed.mag();
    speed = direction.copy().mult(currSpeed);
    
    //makes prey run
    prey.run(this);
    
    updatePos();
    
    if(PVector.dist(this.pos, prey.pos) < ( (this.diameter/2) + (prey.diameter/2) )){
      eat(prey);
    }
    
  }
  
  //Eating method
  void eat( Animal prey ) {
    
    prey.die();
    
    // filling the predator
    float factor = 1; // for now 1
    float predFilling = ((float)prey.diameter/this.diameter) * prey.filling * factor; // random formula to check how much the prey will fill the predator
    this.hunger -= predFilling;

  }
  
  // UPDATE METHODS
  
  // update position / everything else
  void updatePos(){
  
    pos.add(speed);
    
    checkBorderCollision();
    
    checkAge();
    
    updateBreeding();
        
  }
  

  // update the Animal's age every 15 seconds
  void updateAge(){
    
    // check how much time has it been since the last time the age was updated
    int ageCurrTime = millis();
    int ageTimeElapsed = ageCurrTime - lastAgeUpdated;
    
    // if its been 10 seconds, increase the age and vision
    if(ageTimeElapsed >= 10000){
      this.age += 1;
      this.vision = this.age * 10;
      lastAgeUpdated = ageCurrTime; //reset the timer
    }
  };
  
  // declare to use on child Classes
  void spawn(){}

  // Method to spawn more animals 
  void updateBreeding(){
    
    int breedCurrTime = millis();
    int breedTimeElapsed = breedCurrTime - lastBreedUpdated;

    // check if the animal can breed
    if(this.reproduction > 0 && this.age > (maxAge - (5*this.reproduction)) && breedTimeElapsed >= (20000/this.reproduction) && (!this.dead)){
      spawn();
      lastBreedUpdated = breedCurrTime; // reset breed timer
    }

  }

    


  // Updates hunger 
  
  void updateHunger(){
    
    int currTime = millis();
    int timeElapsed = currTime - lastHungerUpdated;
    
    //After time updates hunger
    if(timeElapsed >= 15000){
      this.hunger += 1;
      
      lastHungerUpdated = currTime;
      
    if (hunger >= 15){ // die by hunger
      this.die();
    }

    }
    
  }
 
  //Dying method
  void die(){
    println(this.species, "Died");
    this.dead = true;
   
  }
  
  //Method to run when being attacked 
  void run(Animal predator){
    
    float predatorDis;
    
    //Randomizes run speed so fish might or might not get away
    float runSpeed = random(2,6);
    
    //Find distance between animal and predator
    predatorDis = sqrt(pow(this.pos.x - predator.pos.x, 2) + pow(this.pos.y - predator.pos.y, 2));
    
    //CODE TO CHECK FOR PREDATOR
    if (predatorDis < this.vision && isRunning == false){
      
        //Makes fish run away
        isRunning = true;
              
        if (this.speed.x <= 0 && predator.speed.x >= 0){
          this.speed.x *= -1;
        }
        
        else if (this.speed.x >= 0 && predator.speed.x <= 0){
          this.speed.x *= -1; 
        }

        if (this.speed.y <= 0 && predator.speed.y >= 0){
          this.speed.y *= -1;
        }
        
        else if (this.speed.x >= 0 && predator.speed.y <= 0){
          this.speed.y *= -1; 
        } 
    }
  }
  
  //Draw me method (used in child classes)
  void drawMe(){}
  
  // check the border collision
  void checkBorderCollision(){
  
    // chceck upper wall
    if(this.pos.y < diameter/2 )
      this.speed.y = abs(this.speed.y);
      
    // check bottom wall
    else if(this.pos.y > (height - diameter/2)){
      this.speed.y *= -1;
      this.pos.y = height - diameter/2; // Prevent overlap
    }  
    
    // check left wall
    if(this.pos.x < diameter/2){ 
      this.speed.x = abs(this.speed.x); 
    }
    
    // check right wall
    else if(this.pos.x > (width - diameter/2)) {
      this.speed.x *= -1;
      this.pos.x = width - diameter/2; // Prevent overlap

    }
    
    
    
  }
}
  

  
