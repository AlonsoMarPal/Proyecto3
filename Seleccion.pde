class seleccion implements Pantalla{
  
PImage sel;

seleccion(){

  sel = loadImage("Seleccion.png");
  
}


void display(){
 
  image (sel,0,0);
  
}

}
