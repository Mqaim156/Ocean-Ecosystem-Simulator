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

    PImage sharkImg;
    sharkImg = loadImage("SharkImg.png");
    image(sharkImg, this.pos.x - 45, this.pos.y - 25, 50, 50);

    updatePos();

  }
}
