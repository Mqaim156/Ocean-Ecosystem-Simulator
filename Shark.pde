class Shark extends Animal{

  // Fields
  color spColor = color(128,128,128); 
  
  //Constuctor
  Shark(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Shark", 35); // change the 10 for vision and rep rate
    this.food = new String[] {"Clownfish", "Jellyfish", "Octopus", "Turtle"};


  }

  //Draw me method

  void drawMe(){
    fill(spColor);
    circle(this.pos.x, this.pos.y, diameter);

    updatePos();
    //println(this.hunger);

    ////////WILL BE DONE WITH VISUALS

  }

}
