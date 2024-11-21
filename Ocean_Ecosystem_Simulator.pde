int totalAnimals = 111;
PImage coralReef;
PImage clownfishImg; 
PImage seaturtleImg; 
PImage sharkImg; 
PImage jellyfishImg; 
PImage seaweedImg; 
PImage octopusImg; 
PImage redsnapperImg; 
PImage tunaImg; 

int totalSharks = int(1);
int totalJellies = int(9);
int totalClowns = int(15);
int totalWeed = int(50);
int totalReds = int(15);
int totalTunas = int(15);
int totalOctopuses = int(3);
int totalTurtles = int(3);

ArrayList<Animal> allAnimals =  new ArrayList<Animal>();

////Import Gui
//import g4p_controls.*;

void setup() {
  size(734, 317);
  frameRate(30);
  //createGUI();
  coralReef = loadImage("CoralReef.jpg");
  jellyfishImg = loadImage("JellyfishImg.png");
  octopusImg = loadImage("OctopusImg.png");
  sharkImg = loadImage("SharkImg.png");
  seaturtleImg = loadImage("SeaturtleImg.png");
  tunaImg = loadImage("TunaImg.png");
  redsnapperImg = loadImage("RedsnapperImg.png");
  seaweedImg = loadImage("SeaweedImg.png");
  clownfishImg = loadImage("ClownfishImg.png");
  
  // Populate the Animal ArrayList
  for (int i = 0; i<totalSharks; i++)
    allAnimals.add( new Shark( int(random(1, 15)), int(random(1, 3)) , new PVector(random(-1.5, 1.5), random(-1, 1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalJellies; i++)
    allAnimals.add( new Jellyfish( int(random(1, 5)), int(random(1, 2)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalClowns; i++)
    allAnimals.add( new Clownfish( int(random(1, 5)), int(random(1, 2)) , new PVector(random(-2, 2), random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalReds; i++)
    allAnimals.add( new Redsnapper( int(random(3, 28)), int(random(1, 2)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalTunas; i++)
    allAnimals.add( new Tuna( int(random(3, 28)), int(random(1, 2)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalOctopuses; i++)
    allAnimals.add( new Octopus( int(random(1, 7)), int(random(1, 2)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalWeed; i++)
    allAnimals.add( new Seaweed( int(random(1, 15)), int(random(1, 2)), new PVector( random(width), height ) ));

  for (int i = 0; i<totalTurtles; i++)
    allAnimals.add( new Turtle( int(random(3, 40)), int(random(1, 2)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width), random(height/2, height) ) ));
}


void draw(){

  //Create background
  
  //tint(255,100); ///// Un comment line to remove after image 

  image(coralReef,1,1);

  
  //tint(255,255);///// Un comment line to remove after image 
  
  for (int i=0; i<totalAnimals; i++){
    if(allAnimals.get(i).dead == false){
      allAnimals.get(i).drawMe();
      allAnimals.get(i).checkHunger(allAnimals);
    }
  }
 

}
