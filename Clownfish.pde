class Clownfish extends Fish{
  
  // Fields
  
  //Constuctor
  Clownfish(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Clownfish", 18);
    this.maxAge = 15;
    this.filling = 1;
    this.food = new String[] {"Seaweed"};
  
  }

  //Draw me method

  void drawMe(){
    
    //println("I am Being Drawn");
    image(clownfishImg,this.pos.x - 22,this.pos.y - 13, 25, 25);

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
  Redsnapper(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Redsnapper", 18);
    
  }

  //Draw me method

  void drawMe(){

    image(redsnapperImg,this.pos.x - 22,this.pos.y - 13, 25, 25);


    
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

    image(tunaImg,this.pos.x - 22,this.pos.y - 13, 25, 25);

    
    updatePos();
  }
}
