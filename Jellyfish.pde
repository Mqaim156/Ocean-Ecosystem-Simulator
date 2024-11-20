class Jellyfish extends Animal{
  
  //Fields
  color spColor = color(0,0,255);
  int filling = 2;
  
  //Constructor 
  Jellyfish(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Jellyfish", 23);
    this.food = new String[] {"Clownfish", "Redsnapper", "Tuna"};

  }


  //Methods

  //Draw me method

  void drawMe(){
    PImage jellyfishImg;
    jellyfishImg = loadImage("JellyfishImg.png");
    image(jellyfishImg,this.pos.x - 25,this.pos.y - 15, 30, 30);
    
    updatePos();

  }
}
