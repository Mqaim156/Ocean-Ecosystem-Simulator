class Turtle extends Animal{
  //Fields
  boolean isDefending = false;
  color spColor;
  
  
  
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
  }


  //Methods

  //Rewrites drawMe

  void drawMe(){
    //if (isDefending == true){
    fill(this.spColor);
    circle(this.pos.x, this.pos.y, diameter);
    
    updatePos();
        //////////Code later with visuals
    //}

    //else{

        ///////////Code later with visuals

    //}

  }

//Method to turn on defence
  void defend(){
    isDefending = true;

  }

}
