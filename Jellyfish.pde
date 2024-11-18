class Jellyfish extends Animal{
  
  //Fields
  color spColor = color(0,0,255);
  int filling = 2;
  
  //Constructor 
  Jellyfish(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Jellyfish", 23);

  }


  //Methods

  //Draw me method

  void drawMe(){
    fill(spColor);
    circle(this.pos.x, this.pos.y, diameter);
    
    updatePos();

    ////////WILL BE DONE WITH VISUALS

  }

//Method to turn on defence
  void sting(Animal other){
    other.health -= 20;

  }

}
