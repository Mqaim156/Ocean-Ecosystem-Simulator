class Animal {
  //Fields
  int age, hunger, vision, reproduction;
  String species;
  PVector speed, pos;
  boolean dead = false;
  int health = 100;
  boolean beingHunt = false;
  int diameter;
  int filling = 0;
  int lastHungerUpdated = 0;
  String[] food = {};
  boolean isRunning = false;
  
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
  
  //Methods
  //check Hunger
  void checkHunger(ArrayList<Animal> preys){

    if (this.hunger < 6) {
      rest();
    }
    
    else {
      //println("going to hunt");
      hunt(preys);    
    }
  } 
 

  // Hunt / search for a prey
  void hunt(ArrayList<Animal> preys) {
    //println("hunting");
    
    Animal nearestPrey = null;
    
    // initial value of the minimum distance
    float minDist = 1000;
    
    for(Animal prey : preys){
      if(prey.dead || prey == this) {
        //println("cannot eat this");
        continue;  
      }
        
      
      boolean isFood = false; 
      println("dsadfasfs");
      
      for (String sp : food){
        
        println("species: ", sp);
        if(prey.species.equals(sp)){
          isFood = true;
          break;
        
        }
      
      }
      
      if(!isFood)
        continue;
      
      float distance =  PVector.dist(this.pos, prey.pos);
      
      if(distance < vision && distance < minDist) {
        minDist = distance;
        nearestPrey = prey;
      }
      
    }
   
    if(nearestPrey != null)
      //println("chasing");
      chase(nearestPrey);
      
    
  }
 
 
//Chase method
  void chase(Animal prey) {
    
    
    PVector direction =  PVector.sub(prey.pos, this.pos);
    
    direction.normalize();
    
    float currSpeed = speed.mag();
    speed.set(direction.mult(currSpeed));
    
    //prey.run(this);
    
    updatePos();
    
    if(PVector.dist(this.pos, prey.pos) < ( (this.diameter/2) + (prey.diameter/2) )){
      eat(prey);
    
    }
    
    
  }
  
//Update position methods
  void updatePos(){
  
    pos.add(speed);
    
    //deadYet();
    
    checkBorderCollision();
    
    updateHunger();
    
  }
  
  

  // check whether the animal is dead or not
  //void deadYet(){};
    

  //Eating method
  void eat( Animal prey ) {
    
    prey.die();
    
    float factor = 1; // for now 1
    float predFilling = ((prey.diameter/this.diameter) * prey.filling ) * factor; // random formula to check how much the prey will fill the predator
    this.hunger -= predFilling;
    
    
   
  }
  
  void updateHunger(){
    int currTime = millis();
    int timeElapsed = currTime - lastHungerUpdated;
    
    if(timeElapsed >= 5000){
      this.hunger += 1;
      
      lastHungerUpdated = currTime;
      
      if (this.hunger > 10)
        this.hunger = 10;
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
  // CAUSING MANY BUGS
  
  ////Method to run when being attacked 
  void run(Animal predator){
    float predatorDis;
    //Randomizes run speed so fish might or might not get away
    float runSpeed = random(2,6);
    
    //Find distance between animal and predator
    predatorDis = sqrt(pow(this.pos.x - predator.pos.x, 2) + pow(this.pos.y - predator.pos.y, 2));
    
    //CODE TO CHECK FOR PREDATOR
    if (predatorDis < this.vision && isRunning == false){
        //Makes fish run faster
        isRunning = true;
              
        this.speed.x *= runSpeed;
        this.speed.y *= runSpeed;
        
    }
    
        //Makes fish stop running
    if (predatorDis > this.vision + 10 && isRunning == true){
        isRunning = false; 
        
        this.speed.x /= runSpeed;
        this.speed.y /= runSpeed;
      }
    
    
  }
  
 
 
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
  

  
