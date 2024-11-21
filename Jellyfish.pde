class Jellyfish extends Animal{
  
  //Fields
  
  //Constructor 
  Jellyfish(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Jellyfish", 23);
    this.food = new String[] {"Seaweed", "Clownfish"};
    this.maxAge = 10;
    this.filling = 3;


    this.food = new String[] {"Seaweed"};

  }


  //Methods

  //Draw me method

  void drawMe(){
   
    //Makes swim right way

    if (this.speed.x > 0){
    image(jellyfishImg,this.pos.x - 22,this.pos.y - 13, 25, 25);

    }
    
    else{
    image(jellyfishRImg,this.pos.x - 22,this.pos.y - 13, 25, 25);
      
    }
    
    updatePos();

  }
}
