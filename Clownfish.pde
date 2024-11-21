class Clownfish extends Fish{
  
  // Fields
  
  //Constuctor
  Clownfish(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Clownfish", 18);
    this.maxAge = 30;
    this.filling = 1;
    this.food = new String[] {"Seaweed"};
  
  }

  //Draw me method

  void drawMe(){

    //Makes swim right way

    if (this.speed.x > 0){
    image(clownfishImg,this.pos.x - 13,this.pos.y - 13, 25, 25);

    }
    
    else{
    image(clownfishRImg,this.pos.x - 13,this.pos.y - 13, 25, 25);
      
    }

    
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
    this.maxAge = 30;
    this.filling = 1;
    this.R = 255;
    this.G = 140;
    this.B = 0;
    this.spColor = color(R, G, B);
    this.food = new String[] {"Seaweed"};
    
  }

  //Draw me method

  void drawMe(){
    
    //Makes swim right way 
    
    if (this.speed.x > 0){
    image(redsnapperImg,this.pos.x - 9,this.pos.y - 9, 18, 18);

    }
    
    else{
    image(redsnapperRImg,this.pos.x - 9,this.pos.y - 9, 18, 18);
      
    }
    

    
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
    this.maxAge = 30;
    this.filling = 1;
    this.R = 255;
    this.G = 140;
    this.B = 0;
    this.spColor = color(R, G, B);
    this.food = new String[] {"Seaweed"};
    
  }

  //Draw me method

  void drawMe(){

    //Makes swim right way
    
    if (this.speed.x > 0){
    image(tunaImg,this.pos.x - 15,this.pos.y - 15, 30, 30);

    }
    
    else{
    image(tunaRImg,this.pos.x - 15,this.pos.y - 15, 30, 30);
      
    }

    
    updatePos();
  }
}
