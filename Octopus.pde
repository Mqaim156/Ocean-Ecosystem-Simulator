Class Octopus extends Animal{

//Constuctor
    Octopus(int a, int h, PVector s, PVector p, int v, int r){
        super(a, h, s, p, v, r, "Octopus");

    }

//Methods

//Draw me method

void drawMe(){

////////WILL BE DONE WITH VISUALS

}

//Change run method
void run(Animal predator){
  
   //Makes sure run the correct way
   if (this.pos.x - predator.pos.x >= 0 && this.speed.x <= 0){
      this.speed.x *= -1;
     
   }
   
   else if (this.pos.x - predator.pos.x <= 0 && this.speed.x >= 0){
     this.speed.x *= -1;
     
   }
   
   //Run fast
   this.pos.x += this.speed.x * 4; 

   //Ink
   //////////////////Draw Later

 }


}