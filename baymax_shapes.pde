class Big6 {
  Arm a = new Arm();
  Legs l = new Legs();
  Head h = new Head();
  void drawMe(){
    noStroke();
    fill(255);
    ellipse(100,100, 150,200);
    a.drawArm();
    a.drawArm2();
    l.drawLeg();
    l.drawLeg2();
    h.drawHead();
  }
}

class Spot {
  void drawSpot(){
    float glow_amount = round(map(sin(millis()/150), -1,1, 128,255));
    noStroke();
    //fill(0, 102, 0);
    fill(glow_amount,0,0);
    //ellipse(200, 100, 30, 30);
    ellipse(mouseX, mouseY, 30, 30);
    
  }
}

class Head {
  void drawHead(){
   stroke(100);
   fill(255);
   ellipse(100, 0, 70, 70);  
  }
}

class Arm {
 void drawArm(){
   //rotate(PI/-3.0);
   stroke(100);
   fill(255);
   ellipse(180, 100, 50, 100); 
 }
 void drawArm2(){
   //rotate(PI/7.0);
   fill(255);
   ellipse(20, 100, 50, 100);
 }
}

class Legs {
 void drawLeg(){
  ellipse(70, 200, 40, 50); 
 }
 void drawLeg2(){
  ellipse(130, 200, 40, 50); 
 }
}

Big6 b = new Big6();
Spot s = new Spot();

void setup(){
  size(800,600, P3D);
}
void draw(){
  background(200);
  lights();
  translate(100,100);
  b.drawMe();
  //filter(BLUR,1);
  s.drawSpot();
  
}