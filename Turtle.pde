
class Turtle extends Animal{
  
  //Fields
  boolean isDefending = false;
  int filling;
  
  //Constructor 
  Turtle(int a, int h, int v, int r, PVector s, PVector p){
    super(a, h, s, p, v, r, "Turtle", 20);
    this.food = new String[] {"Seaweed"};
    this.maxAge = 35;
    this.filling = 3;
    this.food = new   String[] {"Jellyfish"};

  }


  //Methods

  //drawMe
  void drawMe(){

    //Makes swim right way
    if (this.speed.x > 0){
    image(seaturtleImg,this.pos.x - 30,this.pos.y - 30, 60, 60);

    }
    
    else{
    image(seaturtleRImg,this.pos.x - 30,this.pos.y - 30, 60, 60);
      
    }
    
    updatePos();
  }
  
  void spawn(){
    
    int babyAge = 3;
    int babyHunger = 0;
    float babySpeedX = this.speed.x*0.5;
    PVector babySpeed = new PVector(babySpeedX, this.speed.y);
    PVector babyPos = new PVector(this.pos.x, this.pos.y+15);

    Turtle babyTurtle = new Turtle(babyAge, babyHunger, TurtleVision, TurtleReproduction, babySpeed, babyPos);
    allAnimals.add(babyTurtle);
    totalAnimals += 1;
    
  }
}
