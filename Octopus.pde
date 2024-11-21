class Octopus extends Animal{

  // Fields  
  
  //Constuctor
  Octopus(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Octopus", 30);
    this.food =  new String[] {"Clownfish", "Turtle"};
    this.maxAge = 15;
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
}
