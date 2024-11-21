int totalAnimals = 100;

int totalSharks = int(0.05 * totalAnimals);
int totalJellies = int(0.1 * totalAnimals);
int totalClowns = int(0.35 * totalAnimals);
int totalWeed = int(0.3 * totalAnimals);
int totalReds = int(0.10 * totalAnimals);
int totalTunas = int(0.05 * totalAnimals);
int totalOctopuses = int(0.1 * totalAnimals);
int totalTurtles= int(0.1 * totalAnimals);

ArrayList<Animal> allAnimals =  new ArrayList<Animal>();

////Import Gui
//import g4p_controls.*;

void setup() {
  size(734, 317);
  //createGUI();
  
  // Populate the Animal ArrayList
  for (int i = 0; i<totalSharks; i++)
    allAnimals.add( new Shark( int(random(1, 15)), int(random(1, 10)) , new PVector(random(-1.5, 1.5), random(-1, 1)), new PVector( random(width/2), random(height) ) ));

  for (int i = 0; i<totalJellies; i++)
    allAnimals.add( new Jellyfish( int(random(1, 5)), int(random(1, 6)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width/2), random(height) ) ));

  for (int i = 0; i<totalClowns; i++)
    allAnimals.add( new Clownfish( int(random(1, 5)), int(random(1, 6)) , new PVector(random(-2, 2), random(-1, 1)), new PVector( random(width/2), random(height) ) ));
    
  for (int i = 0; i<totalReds; i++)
    allAnimals.add( new Redsnapper( int(random(3, 28)), int(random(1, 6)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width/2), random(height) ) ));
    
  for (int i = 0; i<totalTunas; i++)
    allAnimals.add( new Tuna( int(random(3, 28)), int(random(1, 6)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width/2), random(height) ) ));
    
  for (int i = 0; i<totalOctopuses; i++)
    allAnimals.add( new Octopus( int(random(1, 7)), int(random(1, 6)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width/2), random(height) ) ));

  for (int i = 0; i<totalWeed; i++)
    allAnimals.add( new Seaweed( int(random(1, 15)), int(random(1, 6)), new PVector( random(width), height ) ));

  for (int i = 0; i<totalTurtles; i++)
    allAnimals.add( new Turtle( int(random(3, 40)), int(random(1, 6)) , new PVector(random(-1, 1), random(-1, 1)), new PVector( random(width), random(height/2, height) ) ));

  //println(allAnimals.size());
}


void draw(){
  
  background(255);

  //Create background
  
  //tint(255,100); ///// Un comment line to remove after image 
  
  PImage coralReef;
  coralReef = loadImage("CoralReef.jpg");
  image(coralReef,1,1);
  
  //tint(255,255);///// Un comment line to remove after image 
  
  for (int i=0; i<totalAnimals; i++){
    if(allAnimals.get(i).dead == false){
      allAnimals.get(i).drawMe();
      allAnimals.get(i).checkHunger(allAnimals);
      //println(i);
    }
  }
 

}
