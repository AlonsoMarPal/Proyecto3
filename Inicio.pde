class inicio implements Pantalla{
  
PImage ini;

inicio(){

  ini = loadImage("Inicio.png");
  
}


void display(){
 
  image (ini,0,0);
  
}

}
