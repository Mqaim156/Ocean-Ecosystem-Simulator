class Clownfish extends Fish{
  
  //Constuctor for Clownfish
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
    
    // use reverse img for negative velocity
    else{
    image(clownfishRImg,this.pos.x - 13,this.pos.y - 13, 25, 25);
      
    }

    updatePos();
  }
  
  // Method to spawn more species
  void spawn(){
    
    // baby attributes
    int babyAge = 3;
    int babyHunger = 0;
    float babySpeedX = this.speed.x*0.5;
    PVector babySpeed = new PVector(babySpeedX, this.speed.y);
    PVector babyPos = new PVector(this.pos.x, this.pos.y+15);

    // create new instance of this species
    Clownfish babyClown = new Clownfish(babyAge, babyHunger, FishVision, FishReproduction, babySpeed, babyPos);
    allAnimals.add(babyClown); // add to allAnimals arraylist
    totalAnimals += 1;    
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
  
  void spawn(){
    
    int babyAge = 3;
    int babyHunger = 0;
    float babySpeedX = this.speed.x*0.5;
    PVector babySpeed = new PVector(babySpeedX, this.speed.y);
    PVector babyPos = new PVector(this.pos.x, this.pos.y+15);

    Redsnapper babySnapper = new Redsnapper(babyAge, babyHunger, FishVision, FishReproduction, babySpeed, babyPos);
    allAnimals.add(babySnapper);
    totalAnimals += 1;
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
  
  void spawn(){
    
    int babyAge = 3;
    int babyHunger = 0;
    float babySpeedX = this.speed.x*0.5;
    PVector babySpeed = new PVector(babySpeedX, this.speed.y);
    PVector babyPos = new PVector(this.pos.x, this.pos.y+15);

    Tuna babyTuna = new Tuna(babyAge, babyHunger, FishVision, FishReproduction, babySpeed, babyPos);
    allAnimals.add(babyTuna);
    totalAnimals += 1;
    
  }
}
