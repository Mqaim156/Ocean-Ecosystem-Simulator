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

//Reverse Images
PImage clownfishRImg; 
PImage seaturtleRImg; 
PImage sharkRImg; 
PImage jellyfishRImg; 
PImage seaweedRImg; 
PImage octopusRImg; 
PImage redsnapperRImg; 
PImage tunaRImg; 

//Varibles
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
int totalSeaweed;
//Spliting the totalFish
int totalReds = int(totalFish/3);
int totalTunas = int(totalFish/3);
int totalClowns = int(totalFish) - totalReds - totalTunas;
float totalOctopuses;
float totalTurtles;
float totalAnimals = totalSharks + totalJellies + totalClowns + totalSeaweed + totalReds + totalTunas + totalOctopuses + totalTurtles;
ArrayList<Animal> allAnimals =  new ArrayList<Animal>();


//Import Gui
import g4p_controls.*;

void setup() {
  
  println(totalJellies);
  totalAnimals = int(totalAnimals);
  
  //Create gui
  createGUI();
  
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
  
  jellyfishRImg = loadImage("JellyfishRImg.png");
  octopusRImg = loadImage("OctopusRImg.png");
  sharkRImg = loadImage("SharkRImg.png");
  seaturtleRImg = loadImage("SeaturtleRImg.png");
  tunaRImg = loadImage("TunaRImg.png");
  redsnapperRImg = loadImage("RedsnapperRImg.png");
  clownfishRImg = loadImage("ClownfishRImg.png");
 
  reset();
  
}


void reset(){
  allAnimals.clear();
  
  // Populate the Animal ArrayList
  for (int i = 0; i<totalSharks; i++)
    allAnimals.add( new Shark( int(random(1, 15)), int(random(1, 3)) , SharkVision, SharkReproduction, new PVector(SharkSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalJellies; i++)
    allAnimals.add( new Jellyfish( int(random(1, 5)), int(random(1, 2)) , JellyfishVision, JellyfishReproduction, new PVector(JellyfishSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalClowns; i++)
    allAnimals.add( new Clownfish( int(random(1, 5)), int(random(1, 2)) , FishVision, FishReproduction, new PVector(FishSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalReds; i++)
    allAnimals.add( new Redsnapper( int(random(3, 28)), int(random(1, 2)) , FishVision, FishReproduction, new PVector(FishSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalTunas; i++)
    allAnimals.add( new Tuna( int(random(3, 28)), int(random(1, 2)) , FishVision, FishReproduction, new PVector(FishSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));
    
  for (int i = 0; i<totalOctopuses; i++)
    allAnimals.add( new Octopus( int(random(1, 7)), int(random(1, 2)) , OctopusVision, OctopusReproduction, new PVector(OctopusSpeed, random(-1, 1)), new PVector( random(width), random(height) ) ));

  for (int i = 0; i<totalSeaweed; i++)
    allAnimals.add( new Seaweed( int(random(1, 15)), int(random(1, 2)), new PVector( random(width), height ) ));

  for (int i = 0; i<totalTurtles; i++)
    allAnimals.add( new Turtle( int(random(3, 40)), int(random(1, 2)) , TurtleVision, TurtleReproduction, new PVector(OctopusSpeed, random(-1, 1)), new PVector( random(width), random(height/2, height) ) ));
  
}

void draw(){

  if (paused == false){
    //Create background
    image(coralReef,1,1);
  
    for (int i=0; i<totalAnimals; i++){
      if(allAnimals.get(i).dead == false){
        allAnimals.get(i).drawMe();
        allAnimals.get(i).checkHunger(allAnimals);
      }
    }
  }
}
