
class Shark extends Animal{

  // Fields  
  
  //Constuctor
  Shark(int a, int h, int v, int r, PVector s, PVector p){
    super(a, h, s, p, v, r, "Shark", 35); // change the 10 for vision and rep rate
    this.food = new String[] {"Clownfish", "Jellyfish", "Octopus", "Turtle", "Shark"};
    this.maxAge = 30;
    this.food = new String[] {"Clownfish", "Jellyfish", "Octopus", "Turtle", "Redsnapper", "Tuna"};


  }

  //Draw me method

  void drawMe(){

    //Makes swim right way
    println(this.hunger);

    if (this.speed.x > 0){
    image(sharkImg,this.pos.x - 25,this.pos.y - 25, 50, 50);

    }
    
    else{
    image(sharkRImg,this.pos.x - 25,this.pos.y - 25, 50, 50);
      
    }


    updatePos();

  }
  void spawn(){
    
    int babyAge = 3;
    int babyHunger = 0;
    float babySpeedX = this.speed.x*0.5;
    PVector babySpeed = new PVector(babySpeedX, this.speed.y);
    PVector babyPos = new PVector(this.pos.x, this.pos.y+15);

    Shark babyShark = new Shark(babyAge, babyHunger, SharkVision, SharkReproduction, babySpeed, babyPos);
    allAnimals.add(babyShark);
    totalAnimals += 1;
    
  }
}
