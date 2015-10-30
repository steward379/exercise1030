PImage arrow ; 


void setup (){
  arrow =  loadImage("arrow.png") ;
  size(600 , 600) ;
 
}

void draw(){
  background(255);
  fill(0);
  noStroke();
  
  int numArrows = 10;
  float spacing = width/numArrows;

  for(int hori = 0; hori < numArrows; hori++){
    for(int vert = 0; vert < numArrows; vert++){
        pushMatrix();
        
        translate(30+hori*60, 30+vert*60);
        float angle = atan2(mouseY- (30+vert*60), mouseX- (30+hori*60));
        rotate(angle);
        
        imageMode(CENTER);
        image(arrow, 0, 0, 30, 30);
        
        popMatrix();
    }
  }  
}
