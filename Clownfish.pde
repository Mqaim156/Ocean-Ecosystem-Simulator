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

    PImage clownfishImg;
    clownfishImg = loadImage("ClownfishImg.png");
    image(clownfishImg,this.pos.x - 22,this.pos.y + 13, 25, 25);

    
    updatePos();
  }
}

class Redsnapper extends Fish{
  
  // Fields
  color spColor = color(255,140,0);
  int filling = 2;
  String[] food = {"Seaweed"};
  
  
  //Constuctor
  Redsnapper(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Redsnapper", 18);
    
  }

  //Draw me method

  void drawMe(){
    PImage redsnapperImg;
    redsnapperImg = loadImage("RedsnapperImg.png");
    image(redsnapperImg,this.pos.x - 22,this.pos.y + 13, 25, 25);

    
    updatePos();
  }
}

class Tuna extends Fish{
  
  // Fields
  color spColor = color(255,140,0);
  int filling = 2;
  String[] food = {"Seaweed"};
  
  
  //Constuctor
  Tuna(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Tuna", 18);
    
  }

  //Draw me method

  void drawMe(){
    PImage tunaImg;
    tunaImg = loadImage("TunaImg.png");
    image(tunaImg,this.pos.x - 22,this.pos.y + 13, 25, 25);

    
    updatePos();
  }
}
