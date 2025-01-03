class Octopus extends Animal{

  // Fields  
  
  //Constuctor
  Octopus(int a, int h, int v, int r, PVector s, PVector p){
    super(a, h, s, p, v, r, "Octopus", 30);
    this.food =  new String[] {"Clownfish", "Turtle"};
    this.maxAge = 25;
    this.filling = 4;
    this.food =  new String[] {"Clownfish", "Tuna", "Redsnapper"};

  }

  //Methods

  //Draw me method
  void drawMe(){

    //Makes swim right way
    if (this.speed.x > 0){
    image(octopusImg,this.pos.x - 25,this.pos.y - 25, 50, 50);

    }
    
    else{
    image(octopusRImg,this.pos.x - 25,this.pos.y - 25, 50, 50);
      
    }

    updatePos();

  }
  
  void spawn(){
    
    int babyAge = 3;
    int babyHunger = 0;
    float babySpeedX = this.speed.x*0.5;
    PVector babySpeed = new PVector(babySpeedX, this.speed.y);
    PVector babyPos = new PVector(this.pos.x, this.pos.y+15);

    Octopus babyOcto = new Octopus(babyAge, babyHunger, OctopusVision, OctopusReproduction, babySpeed, babyPos);
    allAnimals.add(babyOcto);
    totalAnimals += 1;
    
  }
}
