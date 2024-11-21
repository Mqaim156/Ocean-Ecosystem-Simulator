class Jellyfish extends Animal{
  
  //Fields
  color spColor;
  
  //Constructor 
  Jellyfish(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Jellyfish", 23);
    this.food = new String[] {"Seaweed", "Clownfish"};
    this.maxAge = 10;
    this.filling = 3;
    this.R = 0;
    this.G = 0;
    this.B = 190;
    this.spColor = color(R, G, B);

    this.food = new String[] {"Clownfish", "Redsnapper", "Tuna"};

  }


  //Methods

  //Draw me method

  void drawMe(){
    //fill(this.spColor);
    //circle(this.pos.x, this.pos.y, diameter);

    
    
    image(jellyfishImg,this.pos.x - 25,this.pos.y - 15, 30, 30);
    
    updatePos();

  }
}
