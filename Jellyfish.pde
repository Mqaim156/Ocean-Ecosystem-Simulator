class Jellyfish extends Animal{
  
  //Fields
  
  //Constructor 
  Jellyfish(int a, int h, int v, int r, PVector s, PVector p){
    super(a, h, s, p, v, r, "Jellyfish", 23);
    this.food = new String[] {"Seaweed", "Clownfish"};
    this.maxAge = 30;
    this.filling = 3;


    this.food = new String[] {"Seaweed"};

  }


  //Methods

  //Draw me method

  void drawMe(){
   
    //Makes swim right way

    if (this.speed.x > 0){
    image(jellyfishImg,this.pos.x - 22,this.pos.y - 13, 25, 25);

    }
    
    else{
    image(jellyfishRImg,this.pos.x - 22,this.pos.y - 13, 25, 25);
      
    }
    
    updatePos();

  }
  void spawn(){
    
    int babyAge = 3;
    int babyHunger = 0;
    float babySpeedX = this.speed.x*0.5;
    PVector babySpeed = new PVector(babySpeedX, this.speed.y);
    PVector babyPos = new PVector(this.pos.x, this.pos.y+15);

    Jellyfish babyJelly = new Jellyfish(babyAge, babyHunger, JellyfishVision, JellyfishReproduction, babySpeed, babyPos);
    allAnimals.add(babyJelly);
    totalAnimals += 1;
    
  }
}
