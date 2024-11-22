class Clownfish extends Fish{
  
  // Fields
  
  //Constuctor

  Clownfish(int a, int h, int v, int r, PVector s, PVector p){
    super(a, h, s, p, v, r, "Clownfish", 18);
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
  
  void spawn(){
    
    int babyAge = 3;
    int babyHunger = 0;
    float babySpeedX = this.speed.x*0.5;
    PVector babySpeed = new PVector(babySpeedX, this.speed.y);
    PVector babyPos = new PVector(this.pos.x, this.pos.y+15);

    Clownfish babyClown = new Clownfish(babyAge, babyHunger, babySpeed, babyPos);
    allAnimals.add(babyClown);
    totalAnimals += 1;
    println("CLOWNFISH SPAWNNED");
    
  }
}

class Redsnapper extends Fish{
  
  // Fields
  color spColor = color(255,140,0);
  int filling = 2;
  String[] food = {"Seaweed"};
  
  
  //Constuctor
  Redsnapper(int a, int h, int v, int r, PVector s, PVector p){
    super(a, h, s, p, v, r, "Redsnapper", 18);
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
  Tuna(int a, int h, int v, int r, PVector s, PVector p){
    super(a, h, s, p, v, r, "Tuna", 18);
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
