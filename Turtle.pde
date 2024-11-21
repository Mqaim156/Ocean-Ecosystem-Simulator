
class Turtle extends Animal{
  //Fields
  boolean isDefending = false;

  int filling;
  
  //Constructor 
  Turtle(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Turtle", 20);
    this.food = new String[] {"Seaweed"};
    this.maxAge = 50;
    this.filling = 3;

    this.food = new   String[] {"Jellyfish"};

  }


  //Methods

  //drawMe

  void drawMe(){

    //Makes swim right way

    if (this.speed.x > 0){
    image(seaturtleImg,this.pos.x - 30,this.pos.y - 30, 60, 60);

    }
    
    else{
    image(seaturtleRImg,this.pos.x - 30,this.pos.y - 30, 60, 60);
      
    }
    
    updatePos();
  }
}
