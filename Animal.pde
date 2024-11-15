class animal {
  //Fields
  int age, hunger, vision, reproduction;
  String species;
  PVector speed, pos;
  boolean dead = false;
  int health = 100;
  boolean beingHunt = false;
  int diameter = 40;
  color status;
  
  //Constructor
  animal(int a, int h, PVector s, PVector p, int v, int r, String sp){
    this.age = a;
    this.hunger = h;
    this.speed = s;
    this.pos = p;
    this.vision = v;
    this.reproduction = r;
    this.species = sp;
    
  }
  
  //Methods
  //check Hunger
  void checkHunger(){
    
    if (this.hunger < 6) {
      rest();
    }
    
    else {
      hunt();    
    }
  } 
 
 
  // Hunt / search for a prey
  void hunt(Animal prey) {
    float distance = sqrt((pow((prey.pos.x - this.pos.x), 2))+ (pow((prey.pos.y - this.pos.y), 2)));
   
    if( distance < vision)
      chase(other);
    
  }
 
  void chase(Animal prey) {
  PVector path = new PVector();
    
    
  }


 //Eating method
 void eat(int filling, Animal other){
   
   this.hunger += filling;
   other.die();
   
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
 
 //Method to run when being attacked
 void run(Animal predator){
  
   //Makes sure run the correct way
   if (this.pos.x - predator.pos.x >= 0 && this.speed.x <= 0){
      this.speed.x *= -1;
     
   }
   
   else if (this.pos.x - predator.pos.x <= 0 && this.speed.x >= 0){
     this.speed.x *= -1;
     
   }
   
   //Run fast
   this.pos.x += this.speed.x * 4; 
 }

}
  
  ///////////uigigygiyg
