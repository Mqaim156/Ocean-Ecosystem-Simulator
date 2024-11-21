
class Shark extends Animal{

  // Fields  
  
  //Constuctor
  Shark(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Shark", 35); // change the 10 for vision and rep rate
    this.food = new String[] {"Clownfish", "Jellyfish", "Octopus", "Turtle", "Shark"};
    this.maxAge = 30;

    this.food = new String[] {"Clownfish", "Jellyfish", "Octopus", "Turtle", "Redsnapper", "Tuna"};


  }

  //Draw me method

  void drawMe(){

    //Makes swim right way

    if (this.speed.x > 0){
    image(sharkImg,this.pos.x - 25,this.pos.y - 25, 50, 50);

    }
    
    else{
    image(sharkRImg,this.pos.x - 25,this.pos.y - 25, 50, 50);
      
    }


    updatePos();

  }
}
