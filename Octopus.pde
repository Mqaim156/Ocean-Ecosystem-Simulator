class Octopus extends Animal{

  // Fields
  color spColor;
  
  
  //Constuctor
  Octopus(int a, int h, PVector s, PVector p){
    super(a, h, s, p, a*10, a*10, "Octopus", 30);
    this.food =  new String[] {"Clownfish", "Turtle"};
    this.maxAge = 15;
    this.filling = 4;
    this.R = 255;
    this.G = 203;
    this.B = 164;
    this.spColor = color(R, G, B);
  }

  //Methods

  //Draw me method

  void drawMe(){
    fill(this.spColor);
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
