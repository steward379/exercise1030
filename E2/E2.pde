PImage sun ;
PImage earth ;
PImage moon ;

float angleEarth = 0;
float angleMoon = 0; 

void setup (){
  
size(600,600);
sun = loadImage("sun.png");
earth = loadImage("earth.png");
moon = loadImage("moon.png");

}

void draw(){
 background(0);
 imageMode(CENTER);
 //sun
 float sunX = width/2; 
 float sunY= height/2;
 image(sun, sunX, sunY, 60, 60);
  
 pushMatrix();
 translate(sunX, sunY);
 
 //earth
 float revolution = 220;
 float earthFollow = atan2(mouseY-sunY, mouseX-sunX); 
 //float earthFollow = map(mouseX - sunX, 0, width, -PI, PI);
 rotate(earthFollow);
 image(earth,revolution/2,revolution/2,40,40);
  
 //moon
 float revoMoon = 80;
 angleMoon+=0.1;
 float moonX = revolution/2 + cos(angleMoon) *revoMoon/2;
 float moonY = revolution/2 + sin(angleMoon) *revoMoon/2;
 image(moon,moonX,moonY,15,15);
 
 popMatrix();
 
}
