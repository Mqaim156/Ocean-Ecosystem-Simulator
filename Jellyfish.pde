class Jellyfish extends Animal{

//Constructor 
    Jellyfish(int a, int h, PVector s, PVector p, int v, int r){
        super(a, h, s, p, v, r, "Jellyfish");

    }


//Methods

//Draw me method

void drawMe(){

////////WILL BE DONE WITH VISUALS

}

//Method to turn on defence
void sting(Animal other){
  other.health -= 20;

}

}
