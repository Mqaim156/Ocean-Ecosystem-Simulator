class Animal {
  //Fields
  int age, hunger, vision, reproduction;
  String species;
  PVector speed, pos;
  boolean dead = false;
  int health = 100;
  
  //Constructor
  Animal(int a, int h, PVector s, PVector p, int v, int r, String sp){
    this.age = a;
    this.hunger = h;
    this.speed = s;
    this.pos = p;
    this.vision = v;
    this.reproduction = r;
    this.species = sp;
    
  }
  
 //Methods

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
  
