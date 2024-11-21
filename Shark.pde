
class Shark extends Animal{

  // Fields
  color spColor; 
  
  
  //Constuctor
  Shark(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Shark", 35); // change the 10 for vision and rep rate
    this.food = new String[] {"Clownfish", "Jellyfish", "Octopus", "Turtle", "Shark"};
    this.maxAge = 20;
    this.R = 128;
    this.G = 128;
    this.B = 128;
    this.spColor = color(R, G, B);

    this.food = new String[] {"Clownfish", "Jellyfish", "Octopus", "Turtle", "Redsnapper", "Tuna"};


  }

  //Draw me method

  void drawMe(){
    
    
    //fill(this.spColor);
    //circle(this.pos.x, this.pos.y, diameter);
    
    //updatePos();
    ////println(this.age);
    
    //// vision radius
    //noFill();
    //circle(this.pos.x, this.pos.y, vision);
    
    //println(this.hunger);
    ////////WILL BE DONE WITH VISUALS

    image(sharkImg, this.pos.x - 45, this.pos.y - 25, 50, 50);

    updatePos();

  }
}
