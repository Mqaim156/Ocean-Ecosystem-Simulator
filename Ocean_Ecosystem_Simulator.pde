// GLOBAL VARIABLES

// regular images
PImage coralReef;
PImage clownfishImg; 
PImage seaturtleImg; 
PImage sharkImg; 
PImage jellyfishImg; 
PImage seaweedImg; 
PImage octopusImg; 
PImage redsnapperImg; 
PImage tunaImg; 

boolean paused = false;
boolean reseted = false;


//Reverse Images
PImage clownfishRImg; 
PImage seaturtleRImg; 
PImage sharkRImg; 
PImage jellyfishRImg; 
PImage seaweedRImg; 
PImage octopusRImg; 
PImage redsnapperRImg; 
PImage tunaRImg; 

//Variables / attributes
int SharkSpeed;
int TurtleSpeed;
int OctopusSpeed;
int JellyfishSpeed;
int FishSpeed;

int SharkVision;
int TurtleVision;
int OctopusVision;
int JellyfishVision;
int FishVision;

int SharkReproduction;
int TurtleReproduction;
int OctopusReproduction;
int JellyfishReproduction;
int FishReproduction;

float totalFish;
float totalSharks;
float totalJellies;
int totalSeaweed = 50;

//Spliting the totalFish
int totalReds;
int totalTunas;
int totalClowns;
float totalOctopuses;
float totalTurtles;

float totalAnimals = totalSharks + totalJellies + totalFish + totalSeaweed + totalOctopuses + totalTurtles;
ArrayList<Animal> allAnimals =  new ArrayList<Animal>();


//Import Gui
import g4p_controls.*;

void setup() {
  
  totalAnimals = int(totalAnimals);
  
  // calling Create GUI method 
  createGUI();
  
  // canvas 
  
  size(734, 317);
  frameRate(30);
  
  // Loading all Images
  coralReef = loadImage("CoralReef.jpg");
  jellyfishImg = loadImage("JellyfishImg.png");
  octopusImg = loadImage("OctopusImg.png");
  sharkImg = loadImage("SharkImg.png");
  seaturtleImg = loadImage("SeaturtleImg.png");
  tunaImg = loadImage("TunaImg.png");
  redsnapperImg = loadImage("RedsnapperImg.png");
  seaweedImg = loadImage("SeaweedImg.png");
  clownfishImg = loadImage("ClownfishImg.png");
  
  jellyfishRImg = loadImage("JellyfishRImg.png");
  octopusRImg = loadImage("OctopusRImg.png");
  sharkRImg = loadImage("SharkRImg.png");
  seaturtleRImg = loadImage("SeaturtleRImg.png");
  tunaRImg = loadImage("TunaRImg.png");
  redsnapperRImg = loadImage("RedsnapperRImg.png");
  clownfishRImg = loadImage("ClownfishRImg.png");
 
  reset();
  
}


// Method to reset the simulation
void reset(){
  
  allAnimals.clear();
  totalAnimals = totalSharks + totalJellies + totalFish + totalSeaweed + totalOctopuses + totalTurtles;
  

  for (int i = 0; i < totalFish; i++){
    int random = int(random(1,4));
    if (random == 1){
       totalClowns++; 
    }
    
    if (random == 2){
       totalReds++; 
    }
    
    if (random == 3){
       totalTunas++; 
    }
      
  }
  

  // Populate the Animal ArrayList
  for (int i = 0; i<totalSharks; i++)

    allAnimals.add( new Shark( int(random(1, 15)), int(random(1, 3)) , SharkVision, SharkReproduction, new PVector(SharkSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalJellies; i++)
    allAnimals.add( new Jellyfish( int(random(1, 5)), int(random(1, 2)) , JellyfishVision, JellyfishReproduction, new PVector(JellyfishSpeed , random(-1, 1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalClowns; i++)
    allAnimals.add( new Clownfish( int(random(1, 5)), int(random(1, 2)) , FishVision, FishReproduction, new PVector(FishSpeed , random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalReds; i++)
    allAnimals.add( new Redsnapper( int(random(3, 28)), int(random(1, 2)) , FishVision, FishReproduction, new PVector(FishSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalTunas; i++)
    allAnimals.add( new Tuna( int(random(3, 28)), int(random(1, 2)) , FishVision, FishReproduction, new PVector(FishSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalOctopuses; i++)
    allAnimals.add( new Octopus( int(random(1, 7)), int(random(1, 2)) , OctopusVision, OctopusReproduction, new PVector(OctopusSpeed, random(-1,1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalSeaweed; i++)
    allAnimals.add( new Seaweed( int(random(1, 15)), int(random(1, 2)), 10, new PVector( random(width), height ) ));

  for (int i = 0; i<totalTurtles; i++)
    allAnimals.add( new Turtle( int(random(3, 40)), int(random(1, 2)) , TurtleVision, TurtleReproduction, new PVector(TurtleSpeed, random(-1,1)), new PVector( random(width), random(height/2, height) ) ));
  
}

void draw(){

  if (reseted == false){
    if (paused == false){
      
      // background image
      image(coralReef,1,1);
      
      // call drawMe and checkHunger method for all animals constantly
      for (int i=0; i<totalAnimals; i++){
        if(allAnimals.get(i).dead == false){
          allAnimals.get(i).drawMe();
          allAnimals.get(i).checkHunger(allAnimals);
        }
      }
    }
  }
  
  else{
   reseted = false;
   reset();
    
  }
}
