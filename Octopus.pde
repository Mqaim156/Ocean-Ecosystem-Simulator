class Octopus extends Animal{

  // Fields  
  
  //Constuctor
  Octopus(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Octopus", 30);
    this.food =  new String[] {"Clownfish", "Turtle"};
    this.maxAge = 25;
    this.filling = 4;


    this.food =  new String[] {"Clownfish", "Tuna", "Redsnapper"};

  }

  //Methods

  //Draw me method

  void drawMe(){

    image(octopusImg,this.pos.x - 45,this.pos.y - 25, 50, 50);

    
    updatePos();

  }
}
