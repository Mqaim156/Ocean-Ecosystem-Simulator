class Seaweed extends Animal{

  // Fields
 
  //Constuctor
  Seaweed(int a, int h, int r, PVector p){
    super(a, h, new PVector(0,0), p, a*10, r, "Seaweed", 10); // zero is the velocity since they dont move
    this.food = new String[] {""};
    this.maxAge = 30;
    this.maxAge = 100;
    this.filling = 1;
  }

  //Methods

  //Draw me method

  void drawMe(){
        
    image(seaweedImg,this.pos.x - 45,this.pos.y - 25, 50, 50);

    
    updatePos();
    
  }

  //Eating method
  void eat(){
    this.hunger += 1;
    
  }
  
  void spawn(){
    
    int babyAge = 3;
    int babyHunger = 0;
    PVector babyPos = new PVector(this.pos.x+15, this.pos.y);

    Seaweed babySeaweed = new Seaweed(babyAge, babyHunger, 10, babyPos);
    allAnimals.add(babySeaweed);
    totalAnimals += 1;
    
  }

}
