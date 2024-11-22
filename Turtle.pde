
class Turtle extends Animal{
  //Fields
  boolean isDefending = false;

  int filling;
  
  //Constructor 
  Turtle(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Turtle", 20);
    this.food = new String[] {"Seaweed"};
    this.maxAge = 60;
    this.filling = 3;

    this.food = new   String[] {"Jellyfish"};

  }


  //Methods

  //drawMe

  void drawMe(){

    image(seaturtleImg, this.pos.x - 55,this.pos.y - 20, 60, 60);

    
    updatePos();
  }
}
