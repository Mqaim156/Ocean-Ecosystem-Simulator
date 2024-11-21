class Seaweed extends Animal{

  // Fields
  color spColor = color(51, 69, 30);
 
  //Constuctor
  Seaweed(int a, int h, PVector p){
    super(a, h, new PVector(0,0), p, a*10, a*10, "Seaweed", 10); // zero is the velocity since they dont move
    this.food = new String[] {""};
    this.maxAge = 20;
    this.filling = 1;
  }

  //Methods

  //Draw me method

  void drawMe(){
    PImage seaweedImg;
    seaweedImg = loadImage("SeaweedImg.png");
    image(seaweedImg,this.pos.x - 45,this.pos.y - 25, 50, 50);
    
    updatePos();
    
  }

  //Eating method

  void eat(){
    this.hunger += 1;
    
  }

}
