class Octopus extends Animal{

  // Fields
  color spColor;
  
  
  //Constuctor
  Octopus(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Octopus", 30);
    this.food =  new String[] {"Clownfish", "Turtle"};
    this.maxAge = 15;
    this.filling = 4;
    this.R = 255;
    this.G = 203;
    this.B = 164;
    this.spColor = color(R, G, B);

    this.food =  new String[] {"Clownfish", "Tuna", "Redsnapper"};

  }

  //Methods

  //Draw me method

  void drawMe(){
    fill(this.spColor);
    circle(this.pos.x, this.pos.y, diameter);
    PImage octopusImg;
    octopusImg = loadImage("OctopusImg.png");
    image(octopusImg,this.pos.x - 45,this.pos.y - 25, 50, 50);
    
    updatePos();

  }
}
