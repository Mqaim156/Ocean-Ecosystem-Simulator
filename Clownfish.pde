class Clownfish extends Fish{
  
  // Fields
  color spColor;
  
  //Constuctor
  Clownfish(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Clownfish", 18);
    this.maxAge = 8;
    this.filling = 1;
    this.R = 255;
    this.G = 140;
    this.B = 0;
    this.spColor = color(R, G, B);
    this.food = new String[] {"Seaweed"};
  
  }

  //Draw me method

  void drawMe(){
    
    fill(this.spColor);
    circle(this.pos.x, this.pos.y, diameter);
    
    updatePos();

    
  ////////WILL BE DONE WITH VISUALS

  }

  void school(Clownfish a, Clownfish b){
    
    ////////////ILL DO LATER


  }

}
