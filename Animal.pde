class Animal {
  //Fields
  int age, hunger, vision, reproduction, R, G, B;
  String species;
  PVector speed, pos;
  boolean dead = false;
  int health = 100;
  boolean beingHunt = false;
  int diameter;
  int filling;
  int lastHungerUpdated = 0;
  String[] food = {};
  boolean isFood;
  boolean isRunning = false;
  int maxAge;
  int lastAgeUpdated = 0;

  
  //Constructor
  Animal(int a, int h, PVector s, PVector p, int v, int r, String sp, int d){
    this.age = a;
    this.hunger = h;
    this.speed = s;
    this.pos = p;
    this.vision = v;
    this.reproduction = r;
    this.species = sp;
    this.diameter = d;
    this.filling = 0;
    
    if(this.speed.x == 0 && this.species != "Seaweed")
      this.speed.x = 2;
    
  }
  
  // CHECK METHODS
  void checkAge(){
    
    if (this.age >= maxAge)
      this.die();
      
    updateAge();

    
  }
  
  // EATING METHODS
  //check Hunger
  void checkHunger(ArrayList<Animal> preys){

    if (this.hunger > 6) {
      hunt(preys);    
    }
    
    updateHunger();
  } 
 

  // Hunt / search for a prey
  void hunt(ArrayList<Animal> preys) {
    //println("hunting");
    
    Animal nearestPrey = null;
    
    // initial value of the minimum distance
    float minDist = 1000;
    
    for(Animal prey : preys){
      if(prey.dead || prey == this) {
        continue;  
      }
        
      
      boolean isFood = false; 
      
      for (String sp : food){
        if(prey.species.equals(sp)){
          if(prey.species.equals("Shark"))
            println(prey.species);
          isFood = true;
          break;
        }
      }
      
      if(!isFood)
        continue;
      
      //Checks distance
      float distance =  PVector.dist(this.pos, prey.pos);
      
      if(distance < vision && distance < minDist) {
        minDist = distance;
        nearestPrey = prey;
      }
      
    }
   
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
    //println(this.species, " was filled: ", predFilling);
    this.hunger -= predFilling;
 
  }
  
  // UPDATE METHODS
  void updatePos(){
  
    pos.add(speed);
    
    checkBorderCollision();
    
    checkAge();    
        
  }
  

  // update the Animal's age every 15 seconds
  void updateAge(){
    
    // check how much time has it been since the last time the age was updated
    int ageCurrTime = millis();
    int ageTimeElapsed = ageCurrTime - lastAgeUpdated;
    
    if(ageTimeElapsed >= 15000){
      this.age += 1;
      this.vision = this.age * 10;
      lastAgeUpdated = ageCurrTime;
    }
  };
    


  //Updates hunger 
  void updateHunger(){
    int currTime = millis();
    int timeElapsed = currTime - lastHungerUpdated;
    
    //After time updates hunger
    if(timeElapsed >= 30000){
      this.hunger += 1;
      
      lastHungerUpdated = currTime;
      
    if (hunger >= 15);
      this.die();

    }
    
  }
 
  //Dying method
  void die(){
    this.dead = true;
   
  }
 
  //Base resting method (For movement)
  void rest(){
    this.pos.x += this.speed.x;
    this.pos.y += this.speed.y;
   
  }
  
  ////Method to run when being attacked 
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
  
 //Draw me 
  void drawMe(){
    
  
  }
  
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
  

  
