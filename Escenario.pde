class escenario implements Pantalla{
  
PImage esc;

escenario(){

  esc = loadImage("Batalla.png");
  
}


void display(){
  fill(190);
  rect(0,0,1080,720);
  image (esc,-35,-35);
  
}

}
