class Seaweed extends Animal{

  // Fields
  color spColor = color(51, 69, 30);
  int filling =1;
 
  //Constuctor
  Seaweed(int a, int h, PVector p){
    super(a, h, new PVector(0,0), p, a*10, a*10, "Seaweed", 10); // zero is the velocity since they dont move

  }

  //Methods

  //Draw me method

  void drawMe(){
    fill(spColor);
    circle(this.pos.x, this.pos.y, diameter);
    
    updatePos();
    
    
    ////////WILL BE DONE WITH VISUALS

  }

  //Eating method

  void eat(){
    this.hunger += 1;
    
  }

}
