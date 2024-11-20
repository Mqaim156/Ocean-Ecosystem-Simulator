class Turtle extends Animal{
  //Fields
  color spColor = color(128,128,0);
  int filling = 3;
  
  //Constructor 
  Turtle(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Turtle", 20);
    this.food = new   String[] {"Jellyfish"};

  }


  //Methods

  //drawMe

  void drawMe(){
    PImage seaturtleImg;
    seaturtleImg = loadImage("SeaturtleImg.png");
    image(seaturtleImg,this.pos.x - 55,this.pos.y - 20, 60, 60);
    
    updatePos();
  }
}
