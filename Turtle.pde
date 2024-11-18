class Turtle extends Animal{
  //Fields
  boolean isDefending = false;
  color spColor = color(128,128,0);
  int filling = 3;
  
  //Constructor 
  Turtle(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Turtle", 20);

  }


  //Methods

  //Rewrites drawMe

  void drawMe(){
    //if (isDefending == true){
    fill(spColor);
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
