/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void win_draw1(PApplet appc, GWinData data) { //_CODE_:window1:867424:
  appc.background(230);
} //_CODE_:window1:867424:

public void SharkSpeedSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:SharkSpeedSlider:789233:
  SharkSpeed = SharkSpeedSlider.getValueI();
} //_CODE_:SharkSpeedSlider:789233:

public void TurtleSpeedSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:TurtleSpeedSlider:625784:
   TurtleSpeed = TurtleSpeedSlider.getValueI();
} //_CODE_:TurtleSpeedSlider:625784:

public void OctopusSpeedSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:OctopusSpeedSlider:570132:
  OctopusSpeed = OctopusSpeedSlider.getValueI();
} //_CODE_:OctopusSpeedSlider:570132:

public void JellyfishSpeedSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:JellyfishSpeedSlider:318772:
  JellyfishSpeed = JellyfishSpeedSlider.getValueI();
} //_CODE_:JellyfishSpeedSlider:318772:

public void FishSpeedSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:FishSpeedSlider:270320:
  FishSpeed = FishSpeedSlider.getValueI();
} //_CODE_:FishSpeedSlider:270320:

public void SharkVisionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:SharkVisionSlider:567833:
  SharkVision = SharkVisionSlider.getValueI();
} //_CODE_:SharkVisionSlider:567833:

public void SharkReproductionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:SharkReproductionSlider:668258:
  SharkReproduction = SharkReproductionSlider.getValueI();
} //_CODE_:SharkReproductionSlider:668258:

public void TurtleVisionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:TurtleVisionSlider:676068:
  TurtleVision = TurtleVisionSlider.getValueI();
} //_CODE_:TurtleVisionSlider:676068:

public void TurtleReproductionSliderChange(GCustomSlider source, GEvent event) { //_CODE_:TurtleReproductionSlider:590543:
  TurtleReproduction = TurtleReproductionSlider.getValueI();
} //_CODE_:TurtleReproductionSlider:590543:

public void OctopusVisionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:OctopusVisionSlider:565233:
  OctopusVision = OctopusVisionSlider.getValueI();
} //_CODE_:OctopusVisionSlider:565233:

public void OctopusReproduceChanged(GCustomSlider source, GEvent event) { //_CODE_:OctopusReproductionSlider:822670:
  OctopusReproduction = OctopusReproductionSlider.getValueI();
} //_CODE_:OctopusReproductionSlider:822670:

public void JellyfishVisionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:JellyfishVisionSlider:222468:
  JellyfishVision = JellyfishVisionSlider.getValueI();
} //_CODE_:JellyfishVisionSlider:222468:

public void JellyfishReproductionChanged(GCustomSlider source, GEvent event) { //_CODE_:JellyfishReproductionSlider:881617:
  JellyfishReproduction = JellyfishReproductionSlider.getValueI();
} //_CODE_:JellyfishReproductionSlider:881617:

public void FishVisionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:FishVisionSlider:445930:
  FishVision = FishVisionSlider.getValueI();
} //_CODE_:FishVisionSlider:445930:

public void FishReproductionSliderChanged(GCustomSlider source, GEvent event) { //_CODE_:FishReproductionSlider:865655:
  FishReproduction = FishReproductionSlider.getValueI();
} //_CODE_:FishReproductionSlider:865655:

public void SharkKnobChanged(GKnob source, GEvent event) { //_CODE_:SharkKnob:451662:
  totalSharks = SharkKnob.getValueF() ;
} //_CODE_:SharkKnob:451662:

public void TurtleKnobChanged(GKnob source, GEvent event) { //_CODE_:TurtleKnob:218897:
  totalTurtles = TurtleKnob.getValueF() ;
} //_CODE_:TurtleKnob:218897:

public void OctopusKnobChanged(GKnob source, GEvent event) { //_CODE_:OctopusKnob:232914:
  totalOctopuses = OctopusKnob.getValueF() ;
} //_CODE_:OctopusKnob:232914:

public void JellfishKnobChanged(GKnob source, GEvent event) { //_CODE_:JellyfishKnob:384596:
  totalJellies = JellyfishKnob.getValueF() ;
} //_CODE_:JellyfishKnob:384596:

public void FishChanged(GKnob source, GEvent event) { //_CODE_:FishKnob:326099:
  totalFish = FishKnob.getValueF() ;
} //_CODE_:FishKnob:326099:

public void PauseButtonClicked(GButton source, GEvent event) { //_CODE_:PauseButton:497273:
  paused = !paused;
} //_CODE_:PauseButton:497273:

public void ResetButtonClicked(GButton source, GEvent event) { //_CODE_:ResetButton:726745:
  reseted = true;
} //_CODE_:ResetButton:726745:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  window1 = GWindow.getWindow(this, "Window title", 0, 0, 630, 400, JAVA2D);
  window1.noLoop();
  window1.setActionOnClose(G4P.KEEP_OPEN);
  window1.addDrawHandler(this, "win_draw1");
  SharkLabel = new GLabel(window1, 10, 10, 90, 20);
  SharkLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  SharkLabel.setText("Shark");
  SharkLabel.setOpaque(false);
  SharkSpeedSlider = new GCustomSlider(window1, 10, 30, 100, 40, "grey_blue");
  SharkSpeedSlider.setLimits(0, -5, 5);
  SharkSpeedSlider.setNbrTicks(10);
  SharkSpeedSlider.setNumberFormat(G4P.INTEGER, 0);
  SharkSpeedSlider.setOpaque(false);
  SharkSpeedSlider.addEventHandler(this, "SharkSpeedSliderChanged");
  TurtleLabel = new GLabel(window1, 120, 10, 80, 20);
  TurtleLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  TurtleLabel.setText("Turtle");
  TurtleLabel.setOpaque(false);
  TurtleSpeedSlider = new GCustomSlider(window1, 120, 30, 100, 40, "grey_blue");
  TurtleSpeedSlider.setLimits(0, -5, 5);
  TurtleSpeedSlider.setNbrTicks(10);
  TurtleSpeedSlider.setNumberFormat(G4P.INTEGER, 0);
  TurtleSpeedSlider.setOpaque(false);
  TurtleSpeedSlider.addEventHandler(this, "TurtleSpeedSliderChanged");
  OctopusLabel = new GLabel(window1, 230, 10, 80, 20);
  OctopusLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  OctopusLabel.setText("Octopus");
  OctopusLabel.setOpaque(false);
  JellyfishLabel = new GLabel(window1, 340, 10, 80, 20);
  JellyfishLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  JellyfishLabel.setText("Jellyfish");
  JellyfishLabel.setOpaque(false);
  FishLabel = new GLabel(window1, 450, 10, 80, 20);
  FishLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  FishLabel.setText("Fish");
  FishLabel.setOpaque(false);
  OctopusSpeedSlider = new GCustomSlider(window1, 230, 30, 100, 40, "grey_blue");
  OctopusSpeedSlider.setLimits(0, -5, 5);
  OctopusSpeedSlider.setNbrTicks(10);
  OctopusSpeedSlider.setNumberFormat(G4P.INTEGER, 0);
  OctopusSpeedSlider.setOpaque(false);
  OctopusSpeedSlider.addEventHandler(this, "OctopusSpeedSliderChanged");
  JellyfishSpeedSlider = new GCustomSlider(window1, 340, 30, 100, 40, "grey_blue");
  JellyfishSpeedSlider.setLimits(0, -5, 5);
  JellyfishSpeedSlider.setNbrTicks(10);
  JellyfishSpeedSlider.setNumberFormat(G4P.INTEGER, 0);
  JellyfishSpeedSlider.setOpaque(false);
  JellyfishSpeedSlider.addEventHandler(this, "JellyfishSpeedSliderChanged");
  FishSpeedSlider = new GCustomSlider(window1, 450, 30, 100, 40, "grey_blue");
  FishSpeedSlider.setLimits(0, -5, 5);
  FishSpeedSlider.setNbrTicks(10);
  FishSpeedSlider.setNumberFormat(G4P.INTEGER, 0);
  FishSpeedSlider.setOpaque(false);
  FishSpeedSlider.addEventHandler(this, "FishSpeedSliderChanged");
  SharkVisionSlider = new GCustomSlider(window1, 10, 80, 100, 40, "grey_blue");
  SharkVisionSlider.setLimits(1, 1, 5);
  SharkVisionSlider.setNbrTicks(5);
  SharkVisionSlider.setNumberFormat(G4P.INTEGER, 0);
  SharkVisionSlider.setOpaque(false);
  SharkVisionSlider.addEventHandler(this, "SharkVisionSliderChanged");
  SharkReproductionSlider = new GCustomSlider(window1, 10, 130, 100, 40, "grey_blue");
  SharkReproductionSlider.setLimits(1, 1, 5);
  SharkReproductionSlider.setNbrTicks(5);
  SharkReproductionSlider.setNumberFormat(G4P.INTEGER, 0);
  SharkReproductionSlider.setOpaque(false);
  SharkReproductionSlider.addEventHandler(this, "SharkReproductionSliderChanged");
  TurtleVisionSlider = new GCustomSlider(window1, 120, 80, 100, 40, "grey_blue");
  TurtleVisionSlider.setLimits(1, 1, 5);
  TurtleVisionSlider.setNbrTicks(5);
  TurtleVisionSlider.setNumberFormat(G4P.INTEGER, 0);
  TurtleVisionSlider.setOpaque(false);
  TurtleVisionSlider.addEventHandler(this, "TurtleVisionSliderChanged");
  TurtleReproductionSlider = new GCustomSlider(window1, 120, 130, 100, 40, "grey_blue");
  TurtleReproductionSlider.setLimits(1, 1, 5);
  TurtleReproductionSlider.setNbrTicks(5);
  TurtleReproductionSlider.setNumberFormat(G4P.INTEGER, 0);
  TurtleReproductionSlider.setOpaque(false);
  TurtleReproductionSlider.addEventHandler(this, "TurtleReproductionSliderChange");
  OctopusVisionSlider = new GCustomSlider(window1, 230, 80, 100, 40, "grey_blue");
  OctopusVisionSlider.setLimits(1, 1, 5);
  OctopusVisionSlider.setNbrTicks(5);
  OctopusVisionSlider.setNumberFormat(G4P.INTEGER, 0);
  OctopusVisionSlider.setOpaque(false);
  OctopusVisionSlider.addEventHandler(this, "OctopusVisionSliderChanged");
  OctopusReproductionSlider = new GCustomSlider(window1, 230, 130, 100, 40, "grey_blue");
  OctopusReproductionSlider.setLimits(1, 1, 5);
  OctopusReproductionSlider.setNbrTicks(5);
  OctopusReproductionSlider.setNumberFormat(G4P.INTEGER, 0);
  OctopusReproductionSlider.setOpaque(false);
  OctopusReproductionSlider.addEventHandler(this, "OctopusReproduceChanged");
  JellyfishVisionSlider = new GCustomSlider(window1, 340, 80, 100, 40, "grey_blue");
  JellyfishVisionSlider.setLimits(1, 1, 5);
  JellyfishVisionSlider.setNbrTicks(5);
  JellyfishVisionSlider.setNumberFormat(G4P.INTEGER, 0);
  JellyfishVisionSlider.setOpaque(false);
  JellyfishVisionSlider.addEventHandler(this, "JellyfishVisionSliderChanged");
  JellyfishReproductionSlider = new GCustomSlider(window1, 340, 130, 100, 40, "grey_blue");
  JellyfishReproductionSlider.setLimits(1, 1, 5);
  JellyfishReproductionSlider.setNbrTicks(5);
  JellyfishReproductionSlider.setNumberFormat(G4P.INTEGER, 0);
  JellyfishReproductionSlider.setOpaque(false);
  JellyfishReproductionSlider.addEventHandler(this, "JellyfishReproductionChanged");
  FishVisionSlider = new GCustomSlider(window1, 450, 80, 100, 40, "grey_blue");
  FishVisionSlider.setLimits(1, 1, 5);
  FishVisionSlider.setNbrTicks(5);
  FishVisionSlider.setNumberFormat(G4P.INTEGER, 0);
  FishVisionSlider.setOpaque(false);
  FishVisionSlider.addEventHandler(this, "FishVisionSliderChanged");
  FishReproductionSlider = new GCustomSlider(window1, 450, 130, 100, 40, "grey_blue");
  FishReproductionSlider.setLimits(1, 1, 5);
  FishReproductionSlider.setNbrTicks(5);
  FishReproductionSlider.setNumberFormat(G4P.INTEGER, 0);
  FishReproductionSlider.setOpaque(false);
  FishReproductionSlider.addEventHandler(this, "FishReproductionSliderChanged");
  SpeedLabel = new GLabel(window1, 550, 40, 80, 20);
  SpeedLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  SpeedLabel.setText("Speed");
  SpeedLabel.setOpaque(false);
  VisionLabel = new GLabel(window1, 550, 90, 80, 20);
  VisionLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  VisionLabel.setText("Vision");
  VisionLabel.setOpaque(false);
  ReproductionLabel = new GLabel(window1, 550, 130, 80, 20);
  ReproductionLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  ReproductionLabel.setText("Reproduction");
  ReproductionLabel.setOpaque(false);
  SharkKnob = new GKnob(window1, 30, 180, 60, 60, 0.8);
  SharkKnob.setTurnRange(0, 360);
  SharkKnob.setTurnMode(GKnob.CTRL_ANGULAR);
  SharkKnob.setShowArcOnly(false);
  SharkKnob.setOverArcOnly(false);
  SharkKnob.setIncludeOverBezel(true);
  SharkKnob.setShowTrack(true);
  SharkKnob.setLimits(0.0, 0.0, 9.0);
  SharkKnob.setNbrTicks(10);
  SharkKnob.setStickToTicks(true);
  SharkKnob.setShowTicks(true);
  SharkKnob.setOpaque(false);
  SharkKnob.addEventHandler(this, "SharkKnobChanged");
  TurtleKnob = new GKnob(window1, 140, 180, 60, 60, 0.8);
  TurtleKnob.setTurnRange(0, 360);
  TurtleKnob.setTurnMode(GKnob.CTRL_ANGULAR);
  TurtleKnob.setShowArcOnly(false);
  TurtleKnob.setOverArcOnly(false);
  TurtleKnob.setIncludeOverBezel(false);
  TurtleKnob.setShowTrack(true);
  TurtleKnob.setLimits(0.0, 0.0, 19.0);
  TurtleKnob.setNbrTicks(20);
  TurtleKnob.setStickToTicks(true);
  TurtleKnob.setShowTicks(true);
  TurtleKnob.setOpaque(false);
  TurtleKnob.addEventHandler(this, "TurtleKnobChanged");
  OctopusKnob = new GKnob(window1, 250, 180, 60, 60, 0.8);
  OctopusKnob.setTurnRange(0, 360);
  OctopusKnob.setTurnMode(GKnob.CTRL_ANGULAR);
  OctopusKnob.setShowArcOnly(false);
  OctopusKnob.setOverArcOnly(false);
  OctopusKnob.setIncludeOverBezel(false);
  OctopusKnob.setShowTrack(true);
  OctopusKnob.setLimits(0.0, 0.0, 19.0);
  OctopusKnob.setNbrTicks(20);
  OctopusKnob.setStickToTicks(true);
  OctopusKnob.setShowTicks(true);
  OctopusKnob.setOpaque(false);
  OctopusKnob.addEventHandler(this, "OctopusKnobChanged");
  JellyfishKnob = new GKnob(window1, 360, 180, 60, 60, 0.8);
  JellyfishKnob.setTurnRange(0, 360);
  JellyfishKnob.setTurnMode(GKnob.CTRL_ANGULAR);
  JellyfishKnob.setShowArcOnly(false);
  JellyfishKnob.setOverArcOnly(false);
  JellyfishKnob.setIncludeOverBezel(false);
  JellyfishKnob.setShowTrack(true);
  JellyfishKnob.setLimits(0.0, 0.0, 29.0);
  JellyfishKnob.setNbrTicks(30);
  JellyfishKnob.setStickToTicks(true);
  JellyfishKnob.setShowTicks(true);
  JellyfishKnob.setOpaque(false);
  JellyfishKnob.addEventHandler(this, "JellfishKnobChanged");
  FishKnob = new GKnob(window1, 470, 180, 60, 60, 0.8);
  FishKnob.setTurnRange(0, 360);
  FishKnob.setTurnMode(GKnob.CTRL_ANGULAR);
  FishKnob.setShowArcOnly(false);
  FishKnob.setOverArcOnly(false);
  FishKnob.setIncludeOverBezel(false);
  FishKnob.setShowTrack(true);
  FishKnob.setLimits(0.0, 0.0, 49.0);
  FishKnob.setNbrTicks(50);
  FishKnob.setStickToTicks(true);
  FishKnob.setShowTicks(true);
  FishKnob.setOpaque(false);
  FishKnob.addEventHandler(this, "FishChanged");
  NumberKnobs = new GLabel(window1, 540, 190, 80, 30);
  NumberKnobs.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  NumberKnobs.setText("Animal Numbers");
  NumberKnobs.setOpaque(false);
  PauseButton = new GButton(window1, 20, 290, 80, 30);
  PauseButton.setText("Pause");
  PauseButton.addEventHandler(this, "PauseButtonClicked");
  ResetButton = new GButton(window1, 120, 290, 80, 30);
  ResetButton.setText("Reset");
  ResetButton.setLocalColorScheme(GCScheme.RED_SCHEME);
  ResetButton.addEventHandler(this, "ResetButtonClicked");
  window1.loop();
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GLabel SharkLabel; 
GCustomSlider SharkSpeedSlider; 
GLabel TurtleLabel; 
GCustomSlider TurtleSpeedSlider; 
GLabel OctopusLabel; 
GLabel JellyfishLabel; 
GLabel FishLabel; 
GCustomSlider OctopusSpeedSlider; 
GCustomSlider JellyfishSpeedSlider; 
GCustomSlider FishSpeedSlider; 
GCustomSlider SharkVisionSlider; 
GCustomSlider SharkReproductionSlider; 
GCustomSlider TurtleVisionSlider; 
GCustomSlider TurtleReproductionSlider; 
GCustomSlider OctopusVisionSlider; 
GCustomSlider OctopusReproductionSlider; 
GCustomSlider JellyfishVisionSlider; 
GCustomSlider JellyfishReproductionSlider; 
GCustomSlider FishVisionSlider; 
GCustomSlider FishReproductionSlider; 
GLabel SpeedLabel; 
GLabel VisionLabel; 
GLabel ReproductionLabel; 
GKnob SharkKnob; 
GKnob TurtleKnob; 
GKnob OctopusKnob; 
GKnob JellyfishKnob; 
GKnob FishKnob; 
GLabel NumberKnobs; 
GButton PauseButton; 
GButton ResetButton; 
