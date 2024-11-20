class Octopus extends Animal{

  // Fields
  color spColor = color(255, 203, 164);
  int filling = 3;
  
  //Constuctor
  Octopus(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Octopus", 30);
    this.food =  new String[] {"Clownfish"};

  }

  //Methods

  //Draw me method

  void drawMe(){
    PImage octopusImg;
    octopusImg = loadImage("OctopusImg.png");
    image(octopusImg,this.pos.x - 45,this.pos.y - 25, 50, 50);
    
    updatePos();

  }
}
