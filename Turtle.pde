
class Turtle extends Animal{
  //Fields
  boolean isDefending = false;
  color spColor;

  int filling;
  
  //Constructor 
  Turtle(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Turtle", 20);
    this.food = new String[] {"Seaweed"};
    this.maxAge = 50;
    this.filling = 3;
    this.R = 128;
    this.G = 128;
    this.B = 0;
    this.spColor = color(R, G, B);

    this.food = new   String[] {"Jellyfish"};

  }


  //Methods

  //drawMe

  void drawMe(){
    //if (isDefending == true){
    //fill(this.spColor);
    //circle(this.pos.x, this.pos.y, diameter);


    image(seaturtleImg,this.pos.x - 55,this.pos.y - 20, 60, 60);

    
    updatePos();
  }
}
