class Octopus extends Animal{

  // Fields
  color spColor = color(255, 203, 164);
  int filling = 3;
  String[] food = {"Clownfish", "Turtle"};
  //Constuctor
  Octopus(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Octopus", 30);

  }

  //Methods

  //Draw me method

  void drawMe(){
    fill(spColor);
    circle(this.pos.x, this.pos.y, diameter);
    
    updatePos();

  ////////WILL BE DONE WITH VISUALS

  }

 // //Change run method
 // void run(Animal predator){
  
 //   //Makes sure run the correct way
 //   if (this.pos.x - predator.pos.x >= 0 && this.speed.x <= 0){
 //     this.speed.x *= -1;
     
 //   }
   
 //   else if (this.pos.x - predator.pos.x <= 0 && this.speed.x >= 0){
 //     this.speed.x *= -1;
     
 //   }
   
 //   //Run fast
 //   this.pos.x += this.speed.x * 4; 

 //   //Ink
 //   //////////////////Draw Later

 //}


}
